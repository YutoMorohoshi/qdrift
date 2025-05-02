OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134133) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.9265926535897937, 0, pi/2) _gate_q_0;
  U(1.5865281348220739, 1.7106997231453658, -1.79439306361615) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/2) _gate_q_0;
  U(pi/2, 2.1321831677083107, -pi) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00025) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00025) q[2], q[3];
rxx(-0.00025) q[2], q[3];
rxx(-0.00025) q[2], q[3];
rxx(-0.00025) q[2], q[3];
c[0] = measure q[0];
