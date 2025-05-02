OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, 2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.370185307179587, 0, pi/2) _gate_q_0;
  U(1.983303155907747, 2.1865246843580213, -2.734761296636269) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, -pi/2) _gate_q_0;
  U(pi/2, 2.13218316770831, -pi) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00455) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00455) q[2], q[3];
rxx(-0.00455) q[2], q[3];
rxx(-0.00455) q[2], q[3];
rxx(-0.00455) q[2], q[3];
c[0] = measure q[0];
