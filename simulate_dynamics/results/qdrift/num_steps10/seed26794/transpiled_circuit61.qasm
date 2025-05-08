OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.7199999999999998) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.7199999999999998) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, 0) _gate_q_0;
  U(pi/2, 0, 2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.8127412287183478, 0, pi/2) _gate_q_0;
  U(1.6441678334171785, 1.8669274942184177, -2.0533379370040805) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, -2.1321831677083094, 0) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(3.7199999999999998) q[0], q[1];
rzz(3.7199999999999998) q[0], q[1];
rxx(3.7199999999999998) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
