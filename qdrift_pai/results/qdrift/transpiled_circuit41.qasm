OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, 0.3805063771123649) _gate_q_0;
  U(0.5613868409134125, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.226000000000001, 0, pi/2) _gate_q_0;
  U(1.9237086727424468, 2.1552030458709286, -2.6409553829064016) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 3.119679514543752, 1.5927094658409375) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0021000000000000003) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0021000000000000003) q[2], q[3];
rxx(-0.0021000000000000003) q[2], q[3];
rxx(-0.0021000000000000003) q[2], q[3];
rxx(-0.0021000000000000003) q[2], q[3];
c[0] = measure q[0];
