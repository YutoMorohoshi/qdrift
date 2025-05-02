OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.46364760900080704, 2.6779450445889905) _gate_q_0;
  U(2.5802058126763807, -pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.9441853071795854, 0, pi/2) _gate_q_0;
  U(1.6123215337973942, 1.7960688614061677, -1.9339119435090106) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.566518673969207, -2.1373150007641075) _gate_q_0;
  U(1.009409485881484, pi/2, -pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00315) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00315) q[2], q[3];
rxx(-0.00315) q[2], q[3];
rxx(-0.00315) q[2], q[3];
rxx(-0.00315) q[2], q[3];
c[0] = measure q[0];
