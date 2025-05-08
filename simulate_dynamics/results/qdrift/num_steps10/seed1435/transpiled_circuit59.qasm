OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.5999999999999996) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.5999999999999996) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -3*pi/4, -pi) _gate_q_0;
  U(1.1848501784590992, -0.7024688891647095, -0.41842732511528613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7482233148365927, 2.0144656733234054, -2.322069040517131) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/4) _gate_q_0;
  U(2.2125215592342102, 2.2977102204433235, -2.6523928776916197) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(3.5999999999999996) q[1], q[2];
rzz(3.5999999999999996) q[1], q[2];
rzz(3.5999999999999996) q[1], q[2];
rxx(3.5999999999999996) q[0], q[1];
rzz(3.5999999999999996) q[0], q[1];
rxx(3.5999999999999996) q[2], q[3];
unitary q[1], q[2];
rzz(3.5999999999999996) q[0], q[1];
rzz(3.5999999999999996) q[2], q[3];
c[0] = measure q[0];
