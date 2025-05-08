import configparser
from dataclasses import dataclass
from qiskit.quantum_info import SparsePauliOp
from qiskit.circuit import QuantumCircuit
from qiskit.circuit.library import PauliEvolutionGate
import numpy as np
from typing import Sequence


@dataclass
class Qdrift:
    """Qdrift class for generating Hamiltonian and time evolution operator.

    Attributes:
        hamil (SparsePauliOp): Hamiltonian.
        t (float): evolution time.
        seed (int): Random seed.
        nstep (int): Number of steps.
    """

    hamil: SparsePauliOp
    t: float
    seed: int
    nstep: int

    def __post_init__(self):
        """Post-initialization method to validate the Hamiltonian and prepare variables."""
        if not isinstance(self.hamil, SparsePauliOp):
            raise ValueError("hamil must be a SparsePauliOp instance.")
        if self.t <= 0:
            raise ValueError("t must be a positive float.")
        if self.nstep <= 0:
            raise ValueError("nstep must be a positive integer.")

        self.lambd = sum(abs(self.hamil.coeffs))
        if self.lambd == 0:
            raise ValueError("Hamiltonian must have non-zero coefficients.")

        self.probs = abs(self.hamil.coeffs) / self.lambd
        self.probs = self.probs.real
        if not all(0 <= p <= 1 for p in self.probs):
            raise ValueError("Probabilities must be in the range [0, 1].")
        if not abs(sum(self.probs) - 1) < 1e-10:
            raise ValueError("Probabilities must sum to 1.")

    def get_circuit(self):
        """Generate a circuit for Qdrift.

        Returns:
            QuantumCircuit: The quantum circuit representing the Qdrift evolution.
        """
        rng = np.random.default_rng(self.seed)
        circ = QuantumCircuit(self.hamil.num_qubits, 1)

        # Sample Pauli terms based on the probabilities
        sampled_pauli_terms = rng.choice(
            self.hamil.to_list(), size=self.nstep, p=self.probs
        )
        for pauli in sampled_pauli_terms:
            # pauli[1] は numpy.str_ 型であるため、complex に変換
            coeff = complex(pauli[1])

            # 符号を取得
            coeff_sign = np.sign(coeff.real)

            # サンプリングされた Pauli 演算子
            op = SparsePauliOp(pauli[0], coeffs=self.lambd * coeff_sign)

            # Create a PauliEvolutionGate for each sampled Pauli term
            pauli_gate = PauliEvolutionGate(op, time=self.t / self.nstep)
            circ.append(pauli_gate, range(self.hamil.num_qubits))

        circ.measure(0, 0)

        return circ
