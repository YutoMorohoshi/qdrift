OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.2815926535897937, 0, pi/2) _gate_q_0;
  U(1.803224605211995, 2.0683085280589504, -2.4323731017839743) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/2) _gate_q_0;
  U(pi/2, 2.13218316770831, -pi) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.001) q[2], q[3];
rxx(-0.001) q[2], q[3];
rxx(-0.001) q[2], q[3];
rxx(-0.001) q[2], q[3];
c[0] = measure q[0];
