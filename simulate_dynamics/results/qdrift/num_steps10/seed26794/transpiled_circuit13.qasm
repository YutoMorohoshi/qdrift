OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.8400000000000001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8400000000000001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.3015926535897937, 0, pi/2) _gate_q_0;
  U(1.8814076546237404, 2.1286645791452115, -2.571361373501431) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 0.3420528536178251, 1.2287434731770723) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(0.8400000000000001) q[0], q[1];
rzz(0.8400000000000001) q[0], q[1];
rxx(0.8400000000000001) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
