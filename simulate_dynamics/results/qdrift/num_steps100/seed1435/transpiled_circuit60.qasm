OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.366) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.366) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.7755926535897935, 0, pi/2) _gate_q_0;
  U(1.7588045713806892, 2.0257318859288223, -2.344383418098211) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -1.9422408431641676, 2.770148137220522) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
gate unitary_0 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6864938445831759, 1.9371384017969913, -2.176797595683291) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_1 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6864938445831759, 1.9371384017969913, -2.176797595683291) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_2 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6864938445831759, 1.9371384017969913, -2.176797595683291) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_3 _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(0.5613868409134124, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.677592653589794, 0, pi/2) _gate_q_0;
  U(1.9851693473340468, 2.187399276100175, -2.73763912473962) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -pi/4, 3*pi/4) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
gate unitary_4 _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(0.5613868409134124, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.043592653589794, 0, pi/2) _gate_q_0;
  U(1.8187652850232567, 2.0816410884686096, -2.4613699717407984) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -0.6715111950574313, 2.242307521852328) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
gate unitary_5 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6864938445831759, 1.9371384017969913, -2.176797595683291) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(0.366) q[1], q[2];
rzz(0.366) q[1], q[2];
rzz(0.366) q[1], q[2];
rxx(0.366) q[0], q[1];
rzz(0.366) q[0], q[1];
rxx(0.366) q[2], q[3];
rxx(0.366) q[1], q[2];
rxx(0.366) q[1], q[2];
rzz(0.366) q[0], q[1];
rzz(0.366) q[2], q[3];
rxx(0.366) q[1], q[2];
rxx(0.366) q[2], q[3];
rzz(0.366) q[1], q[2];
rxx(0.366) q[0], q[1];
rxx(0.366) q[0], q[1];
rzz(0.366) q[0], q[1];
rxx(0.366) q[0], q[1];
unitary q[2], q[3];
rzz(0.366) q[1], q[2];
rxx(0.366) q[1], q[2];
rxx(0.366) q[1], q[2];
rzz(0.366) q[2], q[3];
unitary_0 q[1], q[2];
rxx(0.366) q[0], q[1];
rxx(0.366) q[2], q[3];
rzz(0.366) q[1], q[2];
rxx(0.366) q[0], q[1];
rzz(0.366) q[0], q[1];
rzz(0.366) q[0], q[1];
unitary_1 q[2], q[3];
rzz(0.366) q[1], q[2];
rzz(0.366) q[0], q[1];
rxx(0.366) q[1], q[2];
rxx(0.366) q[1], q[2];
rxx(0.366) q[1], q[2];
rxx(0.366) q[0], q[1];
unitary_2 q[1], q[2];
unitary_3 q[0], q[1];
rxx(0.366) q[2], q[3];
rzz(0.366) q[2], q[3];
rzz(0.366) q[2], q[3];
rxx(0.366) q[2], q[3];
rxx(0.366) q[2], q[3];
rxx(0.366) q[2], q[3];
rxx(0.366) q[2], q[3];
rxx(0.366) q[1], q[2];
rxx(0.366) q[0], q[1];
rxx(0.366) q[0], q[1];
rxx(0.366) q[0], q[1];
rxx(0.366) q[1], q[2];
rzz(0.366) q[1], q[2];
rxx(0.366) q[1], q[2];
rzz(0.366) q[2], q[3];
rzz(0.366) q[1], q[2];
rzz(0.366) q[0], q[1];
rxx(0.366) q[0], q[1];
rxx(0.366) q[0], q[1];
rzz(0.366) q[0], q[1];
rxx(0.366) q[2], q[3];
rzz(0.366) q[2], q[3];
rzz(0.366) q[1], q[2];
rxx(0.366) q[0], q[1];
rxx(0.366) q[2], q[3];
rxx(0.366) q[2], q[3];
rzz(0.366) q[1], q[2];
rxx(0.366) q[0], q[1];
unitary_4 q[2], q[3];
rxx(0.366) q[1], q[2];
rxx(0.366) q[0], q[1];
rxx(0.366) q[1], q[2];
rxx(0.366) q[0], q[1];
rxx(0.366) q[1], q[2];
rzz(0.366) q[1], q[2];
rzz(0.366) q[1], q[2];
unitary_5 q[0], q[1];
rzz(0.366) q[2], q[3];
rxx(0.366) q[2], q[3];
rzz(0.366) q[2], q[3];
c[0] = measure q[0];
