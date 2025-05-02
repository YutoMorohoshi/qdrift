OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134133) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.1011853071795854, 0, pi/2) _gate_q_0;
  U(1.7015755253017781, 1.9581921075702136, -2.2151893062336985) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, 1.0094094858814833, 0) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0037) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0037) q[2], q[3];
rxx(-0.0037) q[2], q[3];
rxx(-0.0037) q[2], q[3];
rxx(-0.0037) q[2], q[3];
c[0] = measure q[0];
