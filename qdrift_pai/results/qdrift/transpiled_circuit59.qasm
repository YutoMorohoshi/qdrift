OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.1031853071795874, 0, pi/2) _gate_q_0;
  U(1.6400683477764852, 1.8589497013113405, -2.0396724203036563) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -1.7489919718967535, -0.17819564510185737) _gate_q_0;
  U(1.0094094858814837, -pi/2, -pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.003) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.003) q[2], q[3];
rxx(-0.003) q[2], q[3];
rxx(-0.003) q[2], q[3];
rxx(-0.003) q[2], q[3];
c[0] = measure q[0];
