OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.0670000000000006, 0, pi/2) _gate_q_0;
  U(1.9854594868237376, 2.1875346910026323, -2.7380862782525277) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -0.7387020588763362, 2.3094983856712323) _gate_q_0;
  U(2.1321831677083094, pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0019500000000000001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0019500000000000001) q[2], q[3];
rxx(-0.0019500000000000001) q[2], q[3];
rxx(-0.0019500000000000001) q[2], q[3];
rxx(-0.0019500000000000001) q[2], q[3];
c[0] = measure q[0];
