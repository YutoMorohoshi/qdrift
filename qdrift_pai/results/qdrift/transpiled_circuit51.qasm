OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, 0.3805063771123658) _gate_q_0;
  U(0.5613868409134125, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.7560000000000002, 0, pi/2) _gate_q_0;
  U(1.7441646164501448, 2.0100135929137233, -2.31334624775004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.656904565668964, 2.0554844147157265) _gate_q_0;
  U(2.13218316770831, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0026) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0026) q[2], q[3];
rxx(-0.0026) q[2], q[3];
rxx(-0.0026) q[2], q[3];
rxx(-0.0026) q[2], q[3];
c[0] = measure q[0];
