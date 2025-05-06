OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.6800000000000002) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.6800000000000002) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 0, -pi) _gate_q_0;
  U(pi/2, -pi, -2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.4863706143591715, 0, pi/2) _gate_q_0;
  U(1.9839913775081113, 2.1868479448949847, -2.735822940869288) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, -pi/2) _gate_q_0;
  U(pi/2, 2.13218316770831, -pi) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(1.6800000000000002) q[0], q[1];
rzz(1.6800000000000002) q[0], q[1];
rxx(1.6800000000000002) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
