OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.9610000000000003, 0, pi/2) _gate_q_0;
  U(2.0281201115420724, 2.205839247881329, -2.8031673550880862) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -0.3686343332761224, 1.939430660071018) _gate_q_0;
  U(2.1321831677083094, pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00185) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00185) q[2], q[3];
rxx(-0.00185) q[2], q[3];
rxx(-0.00185) q[2], q[3];
rxx(-0.00185) q[2], q[3];
c[0] = measure q[0];
