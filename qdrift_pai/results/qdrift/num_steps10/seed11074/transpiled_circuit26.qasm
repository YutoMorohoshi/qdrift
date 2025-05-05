OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.81) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 3*pi/4, 0) _gate_q_0;
  U(1.1848501784590992, -0.7024688891647095, -0.41842732511528613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(2.013614911165385, 2.199969438375227, -2.7811714705158534) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/4) _gate_q_0;
  U(0.9290710943555831, -2.2977102204433226, 0.48919977589817387) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.81) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
rzz(0.81) q[1], q[2];
unitary q[0], q[1];
rxx(0.81) q[2], q[3];
rxx(0.81) q[2], q[3];
rzz(0.81) q[2], q[3];
rzz(0.81) q[1], q[2];
rxx(0.81) q[0], q[1];
rzz(0.81) q[2], q[3];
rxx(0.81) q[2], q[3];
c[0] = measure q[0];
