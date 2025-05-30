OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.552) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.552) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 0, 0) _gate_q_0;
  U(pi/2, -pi, -2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.9711853071795864, 0, pi/2) _gate_q_0;
  U(1.6377784956139414, 1.8543745117449157, -2.031863506378354) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, -2.1321831677083094, 0) _gate_q_1;
}
gate unitary_0 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8212531142452963, 2.0837082908329254, -2.4659392239242344) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_1 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8212531142452963, 2.0837082908329254, -2.4659392239242344) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_2 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8212531142452963, 2.0837082908329254, -2.4659392239242344) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_3 _gate_q_0, _gate_q_1 {
  U(0, -pi, -pi) _gate_q_0;
  U(0.5613868409134124, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.208, 0, pi/2) _gate_q_0;
  U(1.7543623084036126, 2.021060558096881, -2.3350880641039886) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -0.42632481150772783, 1.9971211383026244) _gate_q_0;
  U(2.13218316770831, pi/2, pi/2) _gate_q_1;
}
gate unitary_4 _gate_q_0, _gate_q_1 {
  U(0, -pi, 0) _gate_q_0;
  U(0.5613868409134123, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.6560000000000006, 0, pi/2) _gate_q_0;
  U(1.9957755867970992, 2.1922522486008553, -2.753940441743014) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 1.952819928843132, 2.7595690515415576) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
gate unitary_5 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8212531142452963, 2.0837082908329254, -2.4659392239242344) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(0.552) q[1], q[2];
rzz(0.552) q[1], q[2];
rzz(0.552) q[1], q[2];
rxx(0.552) q[0], q[1];
rzz(0.552) q[0], q[1];
rxx(0.552) q[2], q[3];
rxx(0.552) q[1], q[2];
rxx(0.552) q[1], q[2];
rzz(0.552) q[0], q[1];
rzz(0.552) q[2], q[3];
rxx(0.552) q[1], q[2];
rxx(0.552) q[2], q[3];
rzz(0.552) q[1], q[2];
rxx(0.552) q[0], q[1];
rxx(0.552) q[0], q[1];
rzz(0.552) q[0], q[1];
rxx(0.552) q[0], q[1];
unitary q[2], q[3];
rzz(0.552) q[1], q[2];
rxx(0.552) q[1], q[2];
rxx(0.552) q[1], q[2];
rzz(0.552) q[2], q[3];
unitary_0 q[1], q[2];
rxx(0.552) q[0], q[1];
rxx(0.552) q[2], q[3];
rzz(0.552) q[1], q[2];
rxx(0.552) q[0], q[1];
rzz(0.552) q[0], q[1];
rzz(0.552) q[0], q[1];
unitary_1 q[2], q[3];
rzz(0.552) q[1], q[2];
rzz(0.552) q[0], q[1];
rxx(0.552) q[1], q[2];
rxx(0.552) q[1], q[2];
rxx(0.552) q[1], q[2];
rxx(0.552) q[0], q[1];
unitary_2 q[1], q[2];
unitary_3 q[0], q[1];
rxx(0.552) q[2], q[3];
rzz(0.552) q[2], q[3];
rzz(0.552) q[2], q[3];
rxx(0.552) q[2], q[3];
rxx(0.552) q[2], q[3];
rxx(0.552) q[2], q[3];
rxx(0.552) q[2], q[3];
rxx(0.552) q[1], q[2];
rxx(0.552) q[0], q[1];
rxx(0.552) q[0], q[1];
rxx(0.552) q[0], q[1];
rxx(0.552) q[1], q[2];
rzz(0.552) q[1], q[2];
rxx(0.552) q[1], q[2];
rzz(0.552) q[2], q[3];
rzz(0.552) q[1], q[2];
rzz(0.552) q[0], q[1];
rxx(0.552) q[0], q[1];
rxx(0.552) q[0], q[1];
rzz(0.552) q[0], q[1];
rxx(0.552) q[2], q[3];
rzz(0.552) q[2], q[3];
rzz(0.552) q[1], q[2];
rxx(0.552) q[0], q[1];
rxx(0.552) q[2], q[3];
rxx(0.552) q[2], q[3];
rzz(0.552) q[1], q[2];
rxx(0.552) q[0], q[1];
unitary_4 q[2], q[3];
rxx(0.552) q[1], q[2];
rxx(0.552) q[0], q[1];
rxx(0.552) q[1], q[2];
rxx(0.552) q[0], q[1];
rxx(0.552) q[1], q[2];
rzz(0.552) q[1], q[2];
rzz(0.552) q[1], q[2];
unitary_5 q[0], q[1];
rzz(0.552) q[2], q[3];
rxx(0.552) q[2], q[3];
rzz(0.552) q[2], q[3];
c[0] = measure q[0];
