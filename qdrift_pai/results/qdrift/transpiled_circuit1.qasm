OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 0, -pi) _gate_q_0;
  U(pi/2, -pi, 0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.055592653589793, 0, pi/2) _gate_q_0;
  U(1.5733257267343994, 1.627150949128369, -1.6604797138839391) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, -2.132183167708309, 0) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0001) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0001) q[2], q[3];
rxx(-0.0001) q[2], q[3];
rxx(-0.0001) q[2], q[3];
rxx(-0.0001) q[2], q[3];
c[0] = measure q[0];
