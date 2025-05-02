OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, 0) _gate_q_0;
  U(pi/2, 0, 2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.3675926535897935, 0, pi/2) _gate_q_0;
  U(1.7619421915016347, 2.0289819026979847, -2.3508879509492013) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, -pi/2) _gate_q_0;
  U(pi/2, -1.0094094858814842, -pi) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0009000000000000001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0009000000000000001) q[2], q[3];
rxx(-0.0009000000000000001) q[2], q[3];
rxx(-0.0009000000000000001) q[2], q[3];
rxx(-0.0009000000000000001) q[2], q[3];
c[0] = measure q[0];
