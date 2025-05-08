OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.54) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.54) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.7431853071795866, 0, pi/2) _gate_q_0;
  U(1.6923637170332901, 1.9455316083673804, -2.192013959582953) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -1.7489919718967541, -0.17819564510185737) _gate_q_0;
  U(1.0094094858814837, -pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(3.54) q[0], q[1];
rzz(3.54) q[0], q[1];
rxx(3.54) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
