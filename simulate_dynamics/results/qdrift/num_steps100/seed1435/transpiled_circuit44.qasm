OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.27) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.27) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.8715926535897935, 0, pi/2) _gate_q_0;
  U(2.013614911165386, 2.199969438375227, -2.7811714705158543) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -1.9422408431641676, 2.770148137220522) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
gate unitary_0 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6349643219019874, 1.848627105656142, -2.0220818783034016) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_1 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6349643219019874, 1.848627105656142, -2.0220818783034016) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_2 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6349643219019874, 1.848627105656142, -2.0220818783034016) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_3 _gate_q_0, _gate_q_1 {
  U(pi, 0, -pi) _gate_q_0;
  U(0.5613868409134123, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.0615926535897935, 0, pi/2) _gate_q_0;
  U(1.8113571172727467, 2.0753771829534546, -2.4476474351810342) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.056267340467329, 2.6561216399173606) _gate_q_0;
  U(1.0094094858814837, -pi/2, -pi/2) _gate_q_1;
}
gate unitary_4 _gate_q_0, _gate_q_1 {
  U(pi, 0, -pi) _gate_q_0;
  U(0.5613868409134123, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.331592653589793, 0, pi/2) _gate_q_0;
  U(1.711185402515095, 1.9707907603537445, -2.238537536731835) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 3.119679514543752, 1.5927094658409375) _gate_q_0;
  U(1.0094094858814837, -pi/2, -pi/2) _gate_q_1;
}
gate unitary_5 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6349643219019874, 1.848627105656142, -2.0220818783034016) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(0.27) q[1], q[2];
rzz(0.27) q[1], q[2];
rzz(0.27) q[1], q[2];
rxx(0.27) q[0], q[1];
rzz(0.27) q[0], q[1];
rxx(0.27) q[2], q[3];
rxx(0.27) q[1], q[2];
rxx(0.27) q[1], q[2];
rzz(0.27) q[0], q[1];
rzz(0.27) q[2], q[3];
rxx(0.27) q[1], q[2];
rxx(0.27) q[2], q[3];
rzz(0.27) q[1], q[2];
rxx(0.27) q[0], q[1];
rxx(0.27) q[0], q[1];
rzz(0.27) q[0], q[1];
rxx(0.27) q[0], q[1];
unitary q[2], q[3];
rzz(0.27) q[1], q[2];
rxx(0.27) q[1], q[2];
rxx(0.27) q[1], q[2];
rzz(0.27) q[2], q[3];
unitary_0 q[1], q[2];
rxx(0.27) q[0], q[1];
rxx(0.27) q[2], q[3];
rzz(0.27) q[1], q[2];
rxx(0.27) q[0], q[1];
rzz(0.27) q[0], q[1];
rzz(0.27) q[0], q[1];
unitary_1 q[2], q[3];
rzz(0.27) q[1], q[2];
rzz(0.27) q[0], q[1];
rxx(0.27) q[1], q[2];
rxx(0.27) q[1], q[2];
rxx(0.27) q[1], q[2];
rxx(0.27) q[0], q[1];
unitary_2 q[1], q[2];
unitary_3 q[0], q[1];
rxx(0.27) q[2], q[3];
rzz(0.27) q[2], q[3];
rzz(0.27) q[2], q[3];
rxx(0.27) q[2], q[3];
rxx(0.27) q[2], q[3];
rxx(0.27) q[2], q[3];
rxx(0.27) q[2], q[3];
rxx(0.27) q[1], q[2];
rxx(0.27) q[0], q[1];
rxx(0.27) q[0], q[1];
rxx(0.27) q[0], q[1];
rxx(0.27) q[1], q[2];
rzz(0.27) q[1], q[2];
rxx(0.27) q[1], q[2];
rzz(0.27) q[2], q[3];
rzz(0.27) q[1], q[2];
rzz(0.27) q[0], q[1];
rxx(0.27) q[0], q[1];
rxx(0.27) q[0], q[1];
rzz(0.27) q[0], q[1];
rxx(0.27) q[2], q[3];
rzz(0.27) q[2], q[3];
rzz(0.27) q[1], q[2];
rxx(0.27) q[0], q[1];
rxx(0.27) q[2], q[3];
rxx(0.27) q[2], q[3];
rzz(0.27) q[1], q[2];
rxx(0.27) q[0], q[1];
unitary_4 q[2], q[3];
rxx(0.27) q[1], q[2];
rxx(0.27) q[0], q[1];
rxx(0.27) q[1], q[2];
rxx(0.27) q[0], q[1];
rxx(0.27) q[1], q[2];
rzz(0.27) q[1], q[2];
rzz(0.27) q[1], q[2];
unitary_5 q[0], q[1];
rzz(0.27) q[2], q[3];
rxx(0.27) q[2], q[3];
rzz(0.27) q[2], q[3];
c[0] = measure q[0];
