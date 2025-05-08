OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.34) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.34) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134106) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.88681728344761, 2.1322749569458965, -2.580437936348509) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, -2.132183167708309, 0) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(5.34) q[1], q[2];
rzz(5.34) q[1], q[2];
rzz(5.34) q[1], q[2];
rxx(5.34) q[0], q[1];
rzz(5.34) q[0], q[1];
rxx(5.34) q[2], q[3];
unitary q[1], q[2];
rzz(5.34) q[0], q[1];
rzz(5.34) q[2], q[3];
c[0] = measure q[0];
