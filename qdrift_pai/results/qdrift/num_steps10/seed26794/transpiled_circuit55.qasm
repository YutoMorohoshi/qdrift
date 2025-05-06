OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.3600000000000003) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.3600000000000003) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, 0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.923185307179586, 0, pi/2) _gate_q_0;
  U(1.912025092248019, 2.1482517883921606, -2.622030833579217) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -0.535269327382828, 2.1060656541777245) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(3.3600000000000003) q[0], q[1];
rzz(3.3600000000000003) q[0], q[1];
rxx(3.3600000000000003) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
