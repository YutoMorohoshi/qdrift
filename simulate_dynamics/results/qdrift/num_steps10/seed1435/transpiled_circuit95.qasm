OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.76) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.76) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 0, 0) _gate_q_0;
  U(pi/2, 0, -0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7977431588928652, 2.063426459191602, -2.4219470589700407) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, 2.13218316770831, -pi) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(5.76) q[1], q[2];
rzz(5.76) q[1], q[2];
rzz(5.76) q[1], q[2];
rxx(5.76) q[0], q[1];
rzz(5.76) q[0], q[1];
rxx(5.76) q[2], q[3];
unitary q[1], q[2];
rzz(5.76) q[0], q[1];
rzz(5.76) q[2], q[3];
c[0] = measure q[0];
