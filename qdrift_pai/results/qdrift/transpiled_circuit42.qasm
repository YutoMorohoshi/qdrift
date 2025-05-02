OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, -pi, 0) _gate_q_0;
  U(0.5613868409134125, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.2790000000000004, 0, pi/2) _gate_q_0;
  U(1.9038077437311827, 2.1431933564913095, -2.6085923722351456) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.6587440949709373, 2.0536448854137532) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00215) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00215) q[2], q[3];
rxx(-0.00215) q[2], q[3];
rxx(-0.00215) q[2], q[3];
rxx(-0.00215) q[2], q[3];
c[0] = measure q[0];
