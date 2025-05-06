OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.34) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.34) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, 2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.3400000000000003, 0, pi/2) _gate_q_0;
  U(1.9898903382041184, 2.189584037830601, -2.744906246060104) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3*pi/4, -pi/4) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(2.34) q[0], q[1];
rzz(2.34) q[0], q[1];
rxx(2.34) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
