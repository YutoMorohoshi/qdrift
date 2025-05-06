OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.0, 0, pi/2) _gate_q_0;
  U(1.7244797739048496, 1.9872986969056887, -2.2696049230824977) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 2.9260427434364695, 1.355246416641573) _gate_q_0;
  U(1.0094094858814835, -pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(3.0) q[0], q[1];
rzz(3.0) q[0], q[1];
rxx(3.0) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
