from qiskit.quantum_info import SparsePauliOp

if __name__ == "__main__":
    hamil = SparsePauliOp.from_list([("X", 1.0), ("Y", 0.5), ("Z", 0.2)])

    print(hamil)
    print(hamil.to_list())
