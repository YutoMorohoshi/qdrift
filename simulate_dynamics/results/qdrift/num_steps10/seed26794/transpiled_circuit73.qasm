OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.4399999999999995) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.4399999999999995) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, 0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.843185307179587, 0, pi/2) _gate_q_0;
  U(2.006489150677982, 2.19695329079204, -2.770320201405946) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 0.3420528536178251, 1.2287434731770714) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(4.4399999999999995) q[0], q[1];
rzz(4.4399999999999995) q[0], q[1];
rxx(4.4399999999999995) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
