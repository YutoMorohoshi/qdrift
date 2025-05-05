OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.69) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi/4, -pi) _gate_q_0;
  U(1.5343941442552858, -0.05794185149651376, -0.5603318244318949) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.9446338158703642, 2.166969695103009, -2.6743662345329815) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/4) _gate_q_0;
  U(1.6286997496375903, 2.133239255190091, -3.1051293338720614) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.69) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
rzz(0.69) q[1], q[2];
unitary q[0], q[1];
rxx(0.69) q[2], q[3];
rxx(0.69) q[2], q[3];
rzz(0.69) q[2], q[3];
rzz(0.69) q[1], q[2];
rxx(0.69) q[0], q[1];
rzz(0.69) q[2], q[3];
rxx(0.69) q[2], q[3];
c[0] = measure q[0];
