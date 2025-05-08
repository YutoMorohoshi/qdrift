OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.46) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.46) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, 0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.318407346410207, 0, pi/2) _gate_q_0;
  U(1.9276763332428044, 2.157500631090313, -2.6473361539891958) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 0.7248122306458749, -0.8459840961490217) _gate_q_0;
  U(2.1321831677083094, pi/2, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(5.46) q[0], q[1];
rzz(5.46) q[0], q[1];
rxx(5.46) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
