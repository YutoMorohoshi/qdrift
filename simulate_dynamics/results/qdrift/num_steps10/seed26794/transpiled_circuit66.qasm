OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.0200000000000005) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.0200000000000005) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.263185307179586, 0, pi/2) _gate_q_0;
  U(1.784432968445554, 2.0511576759177155, -2.3961594271382998) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.467860070996549, 2.2445289093881406) _gate_q_0;
  U(2.1321831677083094, pi/2, pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(4.0200000000000005) q[0], q[1];
rzz(4.0200000000000005) q[0], q[1];
rxx(4.0200000000000005) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
