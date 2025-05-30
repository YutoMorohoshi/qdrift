OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.456) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.456) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 0, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.7359999999999998, 0, pi/2) _gate_q_0;
  U(1.6168598057421342, 1.8076851504112827, -1.9532183590597558) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, -1.0094094858814837, -pi) _gate_q_1;
}
gate unitary_0 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7464772922913587, 2.01255956935751, -2.3183281007869923) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_1 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7464772922913587, 2.01255956935751, -2.3183281007869923) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_2 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7464772922913587, 2.01255956935751, -2.3183281007869923) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_3 _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134124, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.8240000000000003, 0, pi/2) _gate_q_0;
  U(1.9153335778336487, 2.1502486183325287, -2.6274108930531552) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 0.021913139046040975, 1.5488831877488556) _gate_q_0;
  U(2.1321831677083094, pi/2, pi/2) _gate_q_1;
}
gate unitary_4 _gate_q_0, _gate_q_1 {
  U(pi, 0, -pi) _gate_q_0;
  U(0.5613868409134123, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.7735926535897932, 0, pi/2) _gate_q_0;
  U(1.938943249799904, 2.163854694584999, -2.665337307109639) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.7849426772269377, 1.927446303157752) _gate_q_0;
  U(1.0094094858814837, -pi/2, -pi/2) _gate_q_1;
}
gate unitary_5 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7464772922913587, 2.01255956935751, -2.3183281007869923) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(0.456) q[1], q[2];
rzz(0.456) q[1], q[2];
rzz(0.456) q[1], q[2];
rxx(0.456) q[0], q[1];
rzz(0.456) q[0], q[1];
rxx(0.456) q[2], q[3];
rxx(0.456) q[1], q[2];
rxx(0.456) q[1], q[2];
rzz(0.456) q[0], q[1];
rzz(0.456) q[2], q[3];
rxx(0.456) q[1], q[2];
rxx(0.456) q[2], q[3];
rzz(0.456) q[1], q[2];
rxx(0.456) q[0], q[1];
rxx(0.456) q[0], q[1];
rzz(0.456) q[0], q[1];
rxx(0.456) q[0], q[1];
unitary q[2], q[3];
rzz(0.456) q[1], q[2];
rxx(0.456) q[1], q[2];
rxx(0.456) q[1], q[2];
rzz(0.456) q[2], q[3];
unitary_0 q[1], q[2];
rxx(0.456) q[0], q[1];
rxx(0.456) q[2], q[3];
rzz(0.456) q[1], q[2];
rxx(0.456) q[0], q[1];
rzz(0.456) q[0], q[1];
rzz(0.456) q[0], q[1];
unitary_1 q[2], q[3];
rzz(0.456) q[1], q[2];
rzz(0.456) q[0], q[1];
rxx(0.456) q[1], q[2];
rxx(0.456) q[1], q[2];
rxx(0.456) q[1], q[2];
rxx(0.456) q[0], q[1];
unitary_2 q[1], q[2];
unitary_3 q[0], q[1];
rxx(0.456) q[2], q[3];
rzz(0.456) q[2], q[3];
rzz(0.456) q[2], q[3];
rxx(0.456) q[2], q[3];
rxx(0.456) q[2], q[3];
rxx(0.456) q[2], q[3];
rxx(0.456) q[2], q[3];
rxx(0.456) q[1], q[2];
rxx(0.456) q[0], q[1];
rxx(0.456) q[0], q[1];
rxx(0.456) q[0], q[1];
rxx(0.456) q[1], q[2];
rzz(0.456) q[1], q[2];
rxx(0.456) q[1], q[2];
rzz(0.456) q[2], q[3];
rzz(0.456) q[1], q[2];
rzz(0.456) q[0], q[1];
rxx(0.456) q[0], q[1];
rxx(0.456) q[0], q[1];
rzz(0.456) q[0], q[1];
rxx(0.456) q[2], q[3];
rzz(0.456) q[2], q[3];
rzz(0.456) q[1], q[2];
rxx(0.456) q[0], q[1];
rxx(0.456) q[2], q[3];
rxx(0.456) q[2], q[3];
rzz(0.456) q[1], q[2];
rxx(0.456) q[0], q[1];
unitary_4 q[2], q[3];
rxx(0.456) q[1], q[2];
rxx(0.456) q[0], q[1];
rxx(0.456) q[1], q[2];
rxx(0.456) q[0], q[1];
rxx(0.456) q[1], q[2];
rzz(0.456) q[1], q[2];
rzz(0.456) q[1], q[2];
unitary_5 q[0], q[1];
rzz(0.456) q[2], q[3];
rxx(0.456) q[2], q[3];
rzz(0.456) q[2], q[3];
c[0] = measure q[0];
