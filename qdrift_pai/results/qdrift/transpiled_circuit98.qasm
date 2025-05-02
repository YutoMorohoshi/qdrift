OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.19739555984988089, -0.19739555984988044) _gate_q_0;
  U(0.5613868409134125, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.105407346410206, 0, pi/2) _gate_q_0;
  U(1.8260081560501322, 2.0876096939661597, -2.474619836771092) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 3.064751435774946, 1.6476375446097427) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0049499999999999995) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0049499999999999995) q[2], q[3];
rxx(-0.0049499999999999995) q[2], q[3];
rxx(-0.0049499999999999995) q[2], q[3];
rxx(-0.0049499999999999995) q[2], q[3];
c[0] = measure q[0];
