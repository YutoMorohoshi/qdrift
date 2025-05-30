OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.4860000000000001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.4860000000000001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 0, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.916000000000001, 0, pi/2) _gate_q_0;
  U(1.6230018814799585, 1.8224450465738027, -1.9778894824801467) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, -1.0094094858814842, -pi) _gate_q_1;
}
gate unitary_0 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7687291408430477, 2.0358765648854567, -2.36479253329592) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_1 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7687291408430477, 2.0358765648854567, -2.36479253329592) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_2 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7687291408430477, 2.0358765648854567, -2.36479253329592) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
gate unitary_3 _gate_q_0, _gate_q_1 {
  U(0, -pi, 0) _gate_q_0;
  U(0.5613868409134123, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.9440000000000008, 0, pi/2) _gate_q_0;
  U(1.8612057548398109, 2.114582260537394, -2.5369332448915163) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 1.6496411135204996, 3.06274786686419) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
gate unitary_4 _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(0.5613868409134124, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.6835926535897932, 0, pi/2) _gate_q_0;
  U(1.9822351194044994, 2.1860213431373374, -2.733112942227746) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 0.3420528536178251, 1.2287434731770723) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
gate unitary_5 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7687291408430477, 2.0358765648854567, -2.36479253329592) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(0.4860000000000001) q[1], q[2];
rzz(0.4860000000000001) q[1], q[2];
rzz(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[0], q[1];
rzz(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[2], q[3];
rxx(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[1], q[2];
rzz(0.4860000000000001) q[0], q[1];
rzz(0.4860000000000001) q[2], q[3];
rxx(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[2], q[3];
rzz(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[0], q[1];
rzz(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[0], q[1];
unitary q[2], q[3];
rzz(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[1], q[2];
rzz(0.4860000000000001) q[2], q[3];
unitary_0 q[1], q[2];
rxx(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[2], q[3];
rzz(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[0], q[1];
rzz(0.4860000000000001) q[0], q[1];
rzz(0.4860000000000001) q[0], q[1];
unitary_1 q[2], q[3];
rzz(0.4860000000000001) q[1], q[2];
rzz(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[0], q[1];
unitary_2 q[1], q[2];
unitary_3 q[0], q[1];
rxx(0.4860000000000001) q[2], q[3];
rzz(0.4860000000000001) q[2], q[3];
rzz(0.4860000000000001) q[2], q[3];
rxx(0.4860000000000001) q[2], q[3];
rxx(0.4860000000000001) q[2], q[3];
rxx(0.4860000000000001) q[2], q[3];
rxx(0.4860000000000001) q[2], q[3];
rxx(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[1], q[2];
rzz(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[1], q[2];
rzz(0.4860000000000001) q[2], q[3];
rzz(0.4860000000000001) q[1], q[2];
rzz(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[0], q[1];
rzz(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[2], q[3];
rzz(0.4860000000000001) q[2], q[3];
rzz(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[2], q[3];
rxx(0.4860000000000001) q[2], q[3];
rzz(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[0], q[1];
unitary_4 q[2], q[3];
rxx(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[1], q[2];
rxx(0.4860000000000001) q[0], q[1];
rxx(0.4860000000000001) q[1], q[2];
rzz(0.4860000000000001) q[1], q[2];
rzz(0.4860000000000001) q[1], q[2];
unitary_5 q[0], q[1];
rzz(0.4860000000000001) q[2], q[3];
rxx(0.4860000000000001) q[2], q[3];
rzz(0.4860000000000001) q[2], q[3];
c[0] = measure q[0];
