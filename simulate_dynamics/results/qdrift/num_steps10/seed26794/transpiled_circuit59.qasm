OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.5999999999999996) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.5999999999999996) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, -pi, 0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.7504440784612387, 0, pi/2) _gate_q_0;
  U(1.6173392284422459, 1.8088749507497006, -1.9552011486303922) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, -1.0094094858814837, -pi) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(3.5999999999999996) q[0], q[1];
rzz(3.5999999999999996) q[0], q[1];
rxx(3.5999999999999996) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
