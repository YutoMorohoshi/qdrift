OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, 2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.7489999999999997, 0, pi/2) _gate_q_0;
  U(1.9633051952952918, 2.1767573237236126, -2.70372216741372) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -1.7489919718967541, -0.17819564510185737) _gate_q_0;
  U(2.13218316770831, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00165) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00165) q[2], q[3];
rxx(-0.00165) q[2], q[3];
rxx(-0.00165) q[2], q[3];
rxx(-0.00165) q[2], q[3];
c[0] = measure q[0];
