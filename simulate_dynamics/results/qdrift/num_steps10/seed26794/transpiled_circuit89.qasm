OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.3999999999999995) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.3999999999999995) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, 0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.2584073464102064, 0, pi/2) _gate_q_0;
  U(1.7733338472137024, 2.040452216981426, -2.374102868401094) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 1.2963889106944917, -0.27440741610040487) _gate_q_0;
  U(2.1321831677083094, pi/2, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(5.3999999999999995) q[0], q[1];
rzz(5.3999999999999995) q[0], q[1];
rxx(5.3999999999999995) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
