OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.46) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.46) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.46, 0, pi/2) _gate_q_0;
  U(1.7596871814156305, 2.0266501961078163, -2.34621815250933) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -pi/4, 3*pi/4) _gate_q_0;
  U(2.1321831677083094, pi/2, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(2.46) q[0], q[1];
rzz(2.46) q[0], q[1];
rxx(2.46) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
