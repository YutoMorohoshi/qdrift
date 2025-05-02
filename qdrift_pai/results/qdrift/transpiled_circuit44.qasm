OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, -pi, 0) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.385, 0, pi/2) _gate_q_0;
  U(1.865156727783125, 2.11741269168777, -2.543736081760196) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 1.4484760677783717, -3.0192723945732682) _gate_q_0;
  U(2.13218316770831, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0022500000000000003) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0022500000000000003) q[2], q[3];
rxx(-0.0022500000000000003) q[2], q[3];
rxx(-0.0022500000000000003) q[2], q[3];
rxx(-0.0022500000000000003) q[2], q[3];
c[0] = measure q[0];
