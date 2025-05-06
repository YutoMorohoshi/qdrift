OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.52) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.52) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.3784073464102065, 0, pi/2) _gate_q_0;
  U(1.972262828773005, 2.1812224232623185, -2.7176726996955374) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.84567918910788, 1.8667097912768096) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(5.52) q[0], q[1];
rzz(5.52) q[0], q[1];
rxx(5.52) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
