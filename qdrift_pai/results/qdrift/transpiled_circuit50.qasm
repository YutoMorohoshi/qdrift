OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, -pi, 0) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.703000000000001, 0, pi/2) _gate_q_0;
  U(1.7599217876189854, 2.0268937515650274, -2.346705178181579) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 0.90319697325722, -2.473993300052118) _gate_q_0;
  U(2.132183167708309, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00255) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00255) q[2], q[3];
rxx(-0.00255) q[2], q[3];
rxx(-0.00255) q[2], q[3];
rxx(-0.00255) q[2], q[3];
c[0] = measure q[0];
