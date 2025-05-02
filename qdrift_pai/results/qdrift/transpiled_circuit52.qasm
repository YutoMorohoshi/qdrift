OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, -pi, -pi) _gate_q_0;
  U(0.5613868409134126, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.808999999999999, 0, pi/2) _gate_q_0;
  U(1.7289715140842872, 1.992654307922681, -2.279809070007799) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -0.5765759262935326, 2.14737225308843) _gate_q_0;
  U(2.13218316770831, pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00265) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00265) q[2], q[3];
rxx(-0.00265) q[2], q[3];
rxx(-0.00265) q[2], q[3];
rxx(-0.00265) q[2], q[3];
c[0] = measure q[0];
