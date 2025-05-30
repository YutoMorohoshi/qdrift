OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.186) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.186) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, 2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.9555926535897936, 0, pi/2) _gate_q_0;
  U(1.8262560920242625, 2.0878113510678737, -2.4750705958830617) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.54094992660922, 2.1714390537754698) _gate_q_0;
  U(1.0094094858814837, -pi/2, -pi/2) _gate_q_1;
}
gate unitary_0 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6016248410176057, 1.7656205781397176, -1.8837161305437053) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_1 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6016248410176057, 1.7656205781397176, -1.8837161305437053) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_2 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6016248410176057, 1.7656205781397176, -1.8837161305437053) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_3 _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(0.5613868409134124, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.3975926535897933, 0, pi/2) _gate_q_0;
  U(1.6901575410632235, 1.9424080859696709, -2.1863379215131165) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -0.41308709546785893, 1.983883422262756) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
gate unitary_4 _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(0.5613868409134124, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.5835926535897933, 0, pi/2) _gate_q_0;
  U(1.6392065751950422, 1.8572382117820982, -2.0367489026716328) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -0.41308709546785893, 1.983883422262756) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
gate unitary_5 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6016248410176057, 1.7656205781397176, -1.8837161305437053) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(0.186) q[1], q[2];
rzz(0.186) q[1], q[2];
rzz(0.186) q[1], q[2];
rxx(0.186) q[0], q[1];
rzz(0.186) q[0], q[1];
rxx(0.186) q[2], q[3];
rxx(0.186) q[1], q[2];
rxx(0.186) q[1], q[2];
rzz(0.186) q[0], q[1];
rzz(0.186) q[2], q[3];
rxx(0.186) q[1], q[2];
rxx(0.186) q[2], q[3];
rzz(0.186) q[1], q[2];
rxx(0.186) q[0], q[1];
rxx(0.186) q[0], q[1];
rzz(0.186) q[0], q[1];
rxx(0.186) q[0], q[1];
unitary q[2], q[3];
rzz(0.186) q[1], q[2];
rxx(0.186) q[1], q[2];
rxx(0.186) q[1], q[2];
rzz(0.186) q[2], q[3];
unitary_0 q[1], q[2];
rxx(0.186) q[0], q[1];
rxx(0.186) q[2], q[3];
rzz(0.186) q[1], q[2];
rxx(0.186) q[0], q[1];
rzz(0.186) q[0], q[1];
rzz(0.186) q[0], q[1];
unitary_1 q[2], q[3];
rzz(0.186) q[1], q[2];
rzz(0.186) q[0], q[1];
rxx(0.186) q[1], q[2];
rxx(0.186) q[1], q[2];
rxx(0.186) q[1], q[2];
rxx(0.186) q[0], q[1];
unitary_2 q[1], q[2];
unitary_3 q[0], q[1];
rxx(0.186) q[2], q[3];
rzz(0.186) q[2], q[3];
rzz(0.186) q[2], q[3];
rxx(0.186) q[2], q[3];
rxx(0.186) q[2], q[3];
rxx(0.186) q[2], q[3];
rxx(0.186) q[2], q[3];
rxx(0.186) q[1], q[2];
rxx(0.186) q[0], q[1];
rxx(0.186) q[0], q[1];
rxx(0.186) q[0], q[1];
rxx(0.186) q[1], q[2];
rzz(0.186) q[1], q[2];
rxx(0.186) q[1], q[2];
rzz(0.186) q[2], q[3];
rzz(0.186) q[1], q[2];
rzz(0.186) q[0], q[1];
rxx(0.186) q[0], q[1];
rxx(0.186) q[0], q[1];
rzz(0.186) q[0], q[1];
rxx(0.186) q[2], q[3];
rzz(0.186) q[2], q[3];
rzz(0.186) q[1], q[2];
rxx(0.186) q[0], q[1];
rxx(0.186) q[2], q[3];
rxx(0.186) q[2], q[3];
rzz(0.186) q[1], q[2];
rxx(0.186) q[0], q[1];
unitary_4 q[2], q[3];
rxx(0.186) q[1], q[2];
rxx(0.186) q[0], q[1];
rxx(0.186) q[1], q[2];
rxx(0.186) q[0], q[1];
rxx(0.186) q[1], q[2];
rzz(0.186) q[1], q[2];
rzz(0.186) q[1], q[2];
unitary_5 q[0], q[1];
rzz(0.186) q[2], q[3];
rxx(0.186) q[2], q[3];
rzz(0.186) q[2], q[3];
c[0] = measure q[0];
