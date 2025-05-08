OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.7800000000000002) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.7800000000000002) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, 2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.5031853071795864, 0, pi/2) _gate_q_0;
  U(1.673737395085705, 1.9179221660068206, -2.142366590312541) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 1.2963889106944917, -0.27440741610040487) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(3.7800000000000002) q[0], q[1];
rzz(3.7800000000000002) q[0], q[1];
rxx(3.7800000000000002) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
