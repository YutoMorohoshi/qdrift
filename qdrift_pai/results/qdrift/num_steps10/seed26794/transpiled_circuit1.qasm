OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.12) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.12) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, 2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.0215926535897935, 0, pi/2) _gate_q_0;
  U(1.682880282164187, 1.9318359774086078, -2.16724194433578) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.2298584790721385, 2.482530501312551) _gate_q_0;
  U(1.0094094858814835, -pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(0.12) q[0], q[1];
rzz(0.12) q[0], q[1];
rxx(0.12) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
