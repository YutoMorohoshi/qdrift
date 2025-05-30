OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.12) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.12) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(0.5613868409134124, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.7815926535897937, 0, pi/2) _gate_q_0;
  U(1.5996886165531692, 1.759530052728211, -1.873739723646656) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -0.41308709546785893, 1.983883422262756) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
gate unitary_0 _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, 2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.0215926535897935, 0, pi/2) _gate_q_0;
  U(1.6495908137387563, 1.8770922209451202, -2.070844073702551) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 3.13360722275703, 1.5787817576276595) _gate_q_0;
  U(1.0094094858814837, -pi/2, -pi/2) _gate_q_1;
}
gate unitary_1 _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, 2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.0215926535897935, 0, pi/2) _gate_q_0;
  U(1.5996886165531692, 1.759530052728211, -1.873739723646656) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.315376312590651, 2.397012667794039) _gate_q_0;
  U(1.0094094858814837, -pi/2, -pi/2) _gate_q_1;
}
gate unitary_2 _gate_q_0, _gate_q_1 {
  U(0, -2.971674198862732, -1.7407147815219575) _gate_q_0;
  U(2.5802058126763807, -pi/2, 0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.5996886165531692, 1.759530052728211, -1.873739723646656) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3.080523799124064, 0.06106885446572852) _gate_q_0;
  U(2.1321831677083094, 0, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(0.12) q[0], q[1];
rzz(0.12) q[0], q[1];
rxx(0.12) q[0], q[1];
rzz(0.12) q[0], q[1];
unitary q[2], q[3];
rxx(0.12) q[1], q[2];
rxx(0.12) q[0], q[1];
rxx(0.12) q[0], q[1];
rxx(0.12) q[0], q[1];
rzz(0.12) q[0], q[1];
rxx(0.12) q[2], q[3];
rxx(0.12) q[2], q[3];
rxx(0.12) q[2], q[3];
rxx(0.12) q[1], q[2];
rzz(0.12) q[0], q[1];
rzz(0.12) q[1], q[2];
rzz(0.12) q[0], q[1];
rxx(0.12) q[1], q[2];
rxx(0.12) q[0], q[1];
rzz(0.12) q[0], q[1];
unitary_0 q[2], q[3];
rzz(0.12) q[1], q[2];
rxx(0.12) q[0], q[1];
rzz(0.12) q[1], q[2];
rxx(0.12) q[1], q[2];
rzz(0.12) q[1], q[2];
unitary_1 q[0], q[1];
rxx(0.12) q[2], q[3];
rxx(0.12) q[2], q[3];
rzz(0.12) q[2], q[3];
rzz(0.12) q[2], q[3];
rzz(0.12) q[1], q[2];
rzz(0.12) q[0], q[1];
rxx(0.12) q[0], q[1];
rxx(0.12) q[2], q[3];
rxx(0.12) q[2], q[3];
rxx(0.12) q[1], q[2];
rzz(0.12) q[1], q[2];
rxx(0.12) q[0], q[1];
rxx(0.12) q[2], q[3];
rzz(0.12) q[1], q[2];
rzz(0.12) q[0], q[1];
rxx(0.12) q[0], q[1];
rzz(0.12) q[0], q[1];
rxx(0.12) q[2], q[3];
rzz(0.12) q[1], q[2];
rxx(0.12) q[1], q[2];
rxx(0.12) q[1], q[2];
rzz(0.12) q[1], q[2];
rzz(0.12) q[2], q[3];
unitary_2 q[1], q[2];
rzz(0.12) q[2], q[3];
rzz(0.12) q[1], q[2];
rxx(0.12) q[1], q[2];
rzz(0.12) q[0], q[1];
rzz(0.12) q[2], q[3];
rxx(0.12) q[2], q[3];
rzz(0.12) q[2], q[3];
rxx(0.12) q[1], q[2];
rxx(0.12) q[0], q[1];
rxx(0.12) q[0], q[1];
rxx(0.12) q[2], q[3];
rxx(0.12) q[2], q[3];
rzz(0.12) q[2], q[3];
rzz(0.12) q[2], q[3];
rxx(0.12) q[1], q[2];
rxx(0.12) q[0], q[1];
rzz(0.12) q[0], q[1];
rxx(0.12) q[1], q[2];
rzz(0.12) q[2], q[3];
rxx(0.12) q[1], q[2];
rzz(0.12) q[1], q[2];
rxx(0.12) q[1], q[2];
rxx(0.12) q[0], q[1];
rxx(0.12) q[0], q[1];
rxx(0.12) q[0], q[1];
rxx(0.12) q[0], q[1];
rxx(0.12) q[2], q[3];
rxx(0.12) q[2], q[3];
rxx(0.12) q[2], q[3];
rxx(0.12) q[2], q[3];
rzz(0.12) q[2], q[3];
rxx(0.12) q[1], q[2];
rxx(0.12) q[1], q[2];
rzz(0.12) q[1], q[2];
c[0] = measure q[0];
