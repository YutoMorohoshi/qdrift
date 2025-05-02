OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, 0) _gate_q_0;
  U(pi/2, -pi, -2.58020581267638) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.967, 0, pi/2) _gate_q_0;
  U(1.6293732041137194, 1.8367667740263318, -2.0019909181409528) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, 2.1321831677083107, -pi) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0034500000000000004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0034500000000000004) q[2], q[3];
rxx(-0.0034500000000000004) q[2], q[3];
rxx(-0.0034500000000000004) q[2], q[3];
rxx(-0.0034500000000000004) q[2], q[3];
c[0] = measure q[0];
