OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, 0) _gate_q_0;
  U(pi/2, 0, -0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.1551853071795866, 0, pi/2) _gate_q_0;
  U(1.8601520708354553, 2.113820985971217, -2.535112985987679) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/2) _gate_q_0;
  U(pi/2, -1.0094094858814837, -pi) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0048000000000000004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0048000000000000004) q[2], q[3];
rxx(-0.0048000000000000004) q[2], q[3];
rxx(-0.0048000000000000004) q[2], q[3];
rxx(-0.0048000000000000004) q[2], q[3];
c[0] = measure q[0];
