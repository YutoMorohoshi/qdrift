OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134146) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.886185307179585, 0, pi/2) _gate_q_0;
  U(1.7973576332496, 2.0630794338684817, -2.421209652458737) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, 1.0094094858814824, 0) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00395) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00395) q[2], q[3];
rxx(-0.00395) q[2], q[3];
rxx(-0.00395) q[2], q[3];
rxx(-0.00395) q[2], q[3];
c[0] = measure q[0];
