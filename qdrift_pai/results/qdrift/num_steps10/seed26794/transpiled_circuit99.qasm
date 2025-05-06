OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(6.0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(6.0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, 2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.858407346410207, 0, pi/2) _gate_q_0;
  U(1.9746724214982556, 2.182398475679932, -2.721411933068884) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -1.1036328218968277, 2.6744291486917247) _gate_q_0;
  U(1.0094094858814835, -pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(6.0) q[0], q[1];
rzz(6.0) q[0], q[1];
rxx(6.0) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
