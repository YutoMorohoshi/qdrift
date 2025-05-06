OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.9000000000000001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.9000000000000001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, -pi, 0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.2584073464102077, 0, pi/2) _gate_q_0;
  U(1.742156231678356, 2.007782639289651, -2.3089945998393464) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/2) _gate_q_0;
  U(pi/2, -2.13218316770831, 0) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(0.9000000000000001) q[0], q[1];
rzz(0.9000000000000001) q[0], q[1];
rxx(0.9000000000000001) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
