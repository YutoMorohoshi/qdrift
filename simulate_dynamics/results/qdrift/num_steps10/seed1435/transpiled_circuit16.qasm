OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.02) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.02) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi/4, 0) _gate_q_0;
  U(1.564552663063447, -3.1316641841007216, 0.5613558455456813) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8202538371123478, 2.082880130721212, -2.4641062182203974) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, -3*pi/4) _gate_q_0;
  U(1.5608680508339898, 2.1322141639995404, 3.135348682120666) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(1.02) q[1], q[2];
rzz(1.02) q[1], q[2];
rzz(1.02) q[1], q[2];
rxx(1.02) q[0], q[1];
rzz(1.02) q[0], q[1];
rxx(1.02) q[2], q[3];
unitary q[1], q[2];
rzz(1.02) q[0], q[1];
rzz(1.02) q[2], q[3];
c[0] = measure q[0];
