OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.08) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.08) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi/4, 0) _gate_q_0;
  U(1.5923288356938428, 0.034251271902295155, -0.561018032704256) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8911340269097987, 2.135108887704866, -2.5876406465586905) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, -3*pi/4) _gate_q_0;
  U(1.605039655615729, -2.1325521067108353, -0.021545141594151662) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(4.08) q[1], q[2];
rzz(4.08) q[1], q[2];
rzz(4.08) q[1], q[2];
rxx(4.08) q[0], q[1];
rzz(4.08) q[0], q[1];
rxx(4.08) q[2], q[3];
unitary q[1], q[2];
rzz(4.08) q[0], q[1];
rzz(4.08) q[2], q[3];
c[0] = measure q[0];
