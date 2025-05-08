OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.68) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.68) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 3*pi/4, 0) _gate_q_0;
  U(1.1848501784590992, -0.7024688891647095, -0.41842732511528613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.5717415072476042, 1.6052642941986468, -1.6256211556967477) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/4) _gate_q_0;
  U(0.9290710943555831, -2.2977102204433226, 0.48919977589817387) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(4.68) q[1], q[2];
rzz(4.68) q[1], q[2];
rzz(4.68) q[1], q[2];
rxx(4.68) q[0], q[1];
rzz(4.68) q[0], q[1];
rxx(4.68) q[2], q[3];
unitary q[1], q[2];
rzz(4.68) q[0], q[1];
rzz(4.68) q[2], q[3];
c[0] = measure q[0];
