OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.3199999999999998) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.3199999999999998) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.821592653589793, 0, pi/2) _gate_q_0;
  U(2.005258898064359, 2.196423646264554, -2.7684433863543516) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 1.2963889106944917, -0.27440741610040487) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(1.3199999999999998) q[0], q[1];
rzz(1.3199999999999998) q[0], q[1];
rxx(1.3199999999999998) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
