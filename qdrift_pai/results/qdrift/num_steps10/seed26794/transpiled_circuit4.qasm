OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.3) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.3) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.8415926535897933, 0, pi/2) _gate_q_0;
  U(1.9265142901027756, 2.1568309854505854, -2.6454696817029717) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 1.4919515400692935, -0.07884478672560258) _gate_q_0;
  U(1.0094094858814835, pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(0.3) q[0], q[1];
rzz(0.3) q[0], q[1];
rxx(0.3) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
