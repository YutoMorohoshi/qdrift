OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.8400000000000001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 3*pi/4, 0) _gate_q_0;
  U(1.6291540673950653, 3.048557175799343, 0.558669441409799) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.9839913775081113, 2.1868479448949847, -2.735822940869288) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/4) _gate_q_0;
  U(1.663672970164086, 2.1349076838093515, -3.082982017122262) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8400000000000001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
rzz(0.8400000000000001) q[1], q[2];
unitary q[0], q[1];
rxx(0.8400000000000001) q[2], q[3];
rxx(0.8400000000000001) q[2], q[3];
rzz(0.8400000000000001) q[2], q[3];
rzz(0.8400000000000001) q[1], q[2];
rxx(0.8400000000000001) q[0], q[1];
rzz(0.8400000000000001) q[2], q[3];
rxx(0.8400000000000001) q[2], q[3];
c[0] = measure q[0];
