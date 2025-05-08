OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.36) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.36) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.7815926535897932, 0, pi/2) _gate_q_0;
  U(1.7723842849835847, 2.039515253001107, -2.372190858101975) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -1.5026744337793752, -3.0734707605742715) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(0.36) q[0], q[1];
rzz(0.36) q[0], q[1];
rxx(0.36) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
