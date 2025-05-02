OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, 0.38050637711236535) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.4909999999999997, 0, pi/2) _gate_q_0;
  U(1.828180400079307, 2.0893705773664255, -2.478562907097441) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.3160246894285486, 2.396364290956142) _gate_q_0;
  U(2.13218316770831, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00235) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00235) q[2], q[3];
rxx(-0.00235) q[2], q[3];
rxx(-0.00235) q[2], q[3];
rxx(-0.00235) q[2], q[3];
c[0] = measure q[0];
