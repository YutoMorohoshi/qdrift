OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.3999999999999995) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.3999999999999995) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.9423649020707183, 2.1657351965486136, -2.6707711278513226) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, -2.132183167708309, 0) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(5.3999999999999995) q[1], q[2];
rzz(5.3999999999999995) q[1], q[2];
rzz(5.3999999999999995) q[1], q[2];
rxx(5.3999999999999995) q[0], q[1];
rzz(5.3999999999999995) q[0], q[1];
rxx(5.3999999999999995) q[2], q[3];
unitary q[1], q[2];
rzz(5.3999999999999995) q[0], q[1];
rzz(5.3999999999999995) q[2], q[3];
c[0] = measure q[0];
