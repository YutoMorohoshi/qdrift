OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, -pi, 0) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.4379999999999997, 0, pi/2) _gate_q_0;
  U(1.8464487295384486, 2.1036680542094217, -2.5111989511223776) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.703055871053313, 2.0093331093313775) _gate_q_0;
  U(2.13218316770831, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0023) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0023) q[2], q[3];
rxx(-0.0023) q[2], q[3];
rxx(-0.0023) q[2], q[3];
rxx(-0.0023) q[2], q[3];
c[0] = measure q[0];
