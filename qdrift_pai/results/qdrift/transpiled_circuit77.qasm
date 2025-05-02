OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134088) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.929185307179587, 0, pi/2) _gate_q_0;
  U(1.7765365616496955, 2.043587538257217, -2.380522052074334) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, 1.009409485881486, 0) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0039000000000000003) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0039000000000000003) q[2], q[3];
rxx(-0.0039000000000000003) q[2], q[3];
rxx(-0.0039000000000000003) q[2], q[3];
rxx(-0.0039000000000000003) q[2], q[3];
c[0] = measure q[0];
