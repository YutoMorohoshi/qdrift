OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.7999999999999998) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.6173392284422459, 1.8088749507497006, -1.9552011486303922) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, -2.132183167708309, 0) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.7999999999999998) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
rzz(1.7999999999999998) q[1], q[2];
unitary q[0], q[1];
rxx(1.7999999999999998) q[2], q[3];
rxx(1.7999999999999998) q[2], q[3];
rzz(1.7999999999999998) q[2], q[3];
rzz(1.7999999999999998) q[1], q[2];
rxx(1.7999999999999998) q[0], q[1];
rzz(1.7999999999999998) q[2], q[3];
rxx(1.7999999999999998) q[2], q[3];
c[0] = measure q[0];
