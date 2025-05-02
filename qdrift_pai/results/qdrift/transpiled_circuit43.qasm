OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, 0.38050637711236535) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.3320000000000007, 0, pi/2) _gate_q_0;
  U(1.8842834072869319, 2.1305920789009924, -2.576193548877333) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 1.2515710839717764, -2.822367410766673) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0022) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0022) q[2], q[3];
rxx(-0.0022) q[2], q[3];
rxx(-0.0022) q[2], q[3];
rxx(-0.0022) q[2], q[3];
c[0] = measure q[0];
