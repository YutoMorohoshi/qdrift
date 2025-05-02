OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, -pi, 0.5613868409134204) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.01, 0, pi/2) _gate_q_0;
  U(1.6417166866468025, 1.8621894398859427, -2.0452142765344723) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, -1.009409485881477, -pi) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0035000000000000005) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0035000000000000005) q[2], q[3];
rxx(-0.0035000000000000005) q[2], q[3];
rxx(-0.0035000000000000005) q[2], q[3];
rxx(-0.0035000000000000005) q[2], q[3];
c[0] = measure q[0];
