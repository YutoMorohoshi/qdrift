OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, -pi, 0) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.1200000000000006, 0, pi/2) _gate_q_0;
  U(1.9645557774805047, 2.17738956746875, -2.705674691349066) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, pi/4, -3*pi/4) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.002) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.002) q[2], q[3];
rxx(-0.002) q[2], q[3];
rxx(-0.002) q[2], q[3];
rxx(-0.002) q[2], q[3];
c[0] = measure q[0];
