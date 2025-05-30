OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.594) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.594) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 0, 0) _gate_q_0;
  U(pi/2, -pi, -2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.719185307179586, 0, pi/2) _gate_q_0;
  U(1.6480661321272245, 1.8742768745898992, -2.0659844284769786) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, -2.132183167708309, 0) _gate_q_1;
}
gate unitary_0 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8570150183611371, 2.111538313755408, -2.5296783839143435) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 3.055335294748571, -0.08625735884122232) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_1 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8570150183611371, 2.111538313755408, -2.5296783839143435) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 3.055335294748571, -0.08625735884122232) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_2 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8570150183611371, 2.111538313755408, -2.5296783839143435) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 3.055335294748571, -0.08625735884122232) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_3 _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134124, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.376, 0, pi/2) _gate_q_0;
  U(1.6968748980827484, 1.9518067198196656, -2.2034661633512114) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -pi/4, 3*pi/4) _gate_q_0;
  U(2.1321831677083094, pi/2, pi/2) _gate_q_1;
}
gate unitary_4 _gate_q_0, _gate_q_1 {
  U(0, -pi, 0) _gate_q_0;
  U(0.5613868409134123, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.7820000000000005, 0, pi/2) _gate_q_0;
  U(1.9349720949437985, 2.1616436327491515, -2.6590119652277977) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 1.952819928843132, 2.7595690515415576) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
gate unitary_5 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8570150183611371, 2.111538313755408, -2.5296783839143435) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 3.055335294748571, -0.08625735884122232) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(0.594) q[1], q[2];
rzz(0.594) q[1], q[2];
rzz(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rxx(0.594) q[2], q[3];
rxx(0.594) q[1], q[2];
rxx(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rzz(0.594) q[2], q[3];
rxx(0.594) q[1], q[2];
rxx(0.594) q[2], q[3];
rzz(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
unitary q[2], q[3];
rzz(0.594) q[1], q[2];
rxx(0.594) q[1], q[2];
rxx(0.594) q[1], q[2];
rzz(0.594) q[2], q[3];
unitary_0 q[1], q[2];
rxx(0.594) q[0], q[1];
rxx(0.594) q[2], q[3];
rzz(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
unitary_1 q[2], q[3];
rzz(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rxx(0.594) q[1], q[2];
rxx(0.594) q[1], q[2];
rxx(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
unitary_2 q[1], q[2];
unitary_3 q[0], q[1];
rxx(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rxx(0.594) q[2], q[3];
rxx(0.594) q[2], q[3];
rxx(0.594) q[2], q[3];
rxx(0.594) q[2], q[3];
rxx(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rxx(0.594) q[1], q[2];
rzz(0.594) q[1], q[2];
rxx(0.594) q[1], q[2];
rzz(0.594) q[2], q[3];
rzz(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rxx(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rzz(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
rxx(0.594) q[2], q[3];
rxx(0.594) q[2], q[3];
rzz(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
unitary_4 q[2], q[3];
rxx(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
rxx(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
rxx(0.594) q[1], q[2];
rzz(0.594) q[1], q[2];
rzz(0.594) q[1], q[2];
unitary_5 q[0], q[1];
rzz(0.594) q[2], q[3];
rxx(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
c[0] = measure q[0];
