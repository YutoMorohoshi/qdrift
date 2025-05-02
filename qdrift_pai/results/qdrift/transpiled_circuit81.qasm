OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134128) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.757185307179587, 0, pi/2) _gate_q_0;
  U(1.8641956910855497, 2.1167277010746774, -2.5420846003543707) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, 1.0094094858814842, 0) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0041) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0041) q[2], q[3];
rxx(-0.0041) q[2], q[3];
rxx(-0.0041) q[2], q[3];
rxx(-0.0041) q[2], q[3];
c[0] = measure q[0];
