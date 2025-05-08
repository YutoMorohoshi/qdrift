OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.06) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.06) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.06, 0, pi/2) _gate_q_0;
  U(1.6237539481181518, 1.8241846804930084, -1.9808082030389995) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 1.1573974832520593, -0.4133988435428373) _gate_q_0;
  U(1.0094094858814835, -pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(3.06) q[0], q[1];
rzz(3.06) q[0], q[1];
rxx(3.06) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
