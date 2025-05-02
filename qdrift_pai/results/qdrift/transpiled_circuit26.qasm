OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.9805926535897938, 0, pi/2) _gate_q_0;
  U(1.9691029892164866, 2.179664152964069, -2.7127607424591007) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/2) _gate_q_0;
  U(pi/2, 2.13218316770831, -pi) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00135) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00135) q[2], q[3];
rxx(-0.00135) q[2], q[3];
rxx(-0.00135) q[2], q[3];
rxx(-0.00135) q[2], q[3];
c[0] = measure q[0];
