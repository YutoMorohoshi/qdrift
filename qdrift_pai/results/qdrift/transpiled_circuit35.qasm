OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, 2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.908000000000001, 0, pi/2) _gate_q_0;
  U(2.026818625009159, 2.2053272622829336, -2.801198395317016) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -1.631173310222572, -0.06037698342767506) _gate_q_0;
  U(2.13218316770831, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0018000000000000002) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0018000000000000002) q[2], q[3];
rxx(-0.0018000000000000002) q[2], q[3];
rxx(-0.0018000000000000002) q[2], q[3];
rxx(-0.0018000000000000002) q[2], q[3];
c[0] = measure q[0];
