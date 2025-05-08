OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.41999999999999993) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.41999999999999993) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.721592653589793, 0, pi/2) _gate_q_0;
  U(1.6551901426685391, 1.8871647045420374, -2.0883018825890503) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -1.9422408431641676, 2.770148137220522) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(0.41999999999999993) q[0], q[1];
rzz(0.41999999999999993) q[0], q[1];
rxx(0.41999999999999993) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
