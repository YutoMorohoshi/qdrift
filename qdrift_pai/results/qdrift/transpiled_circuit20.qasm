OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, 0) _gate_q_0;
  U(pi/2, 0, 2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.2385926535897926, 0, pi/2) _gate_q_0;
  U(1.825001950413014, 2.0867895142520583, -2.47278863074854) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, -pi/2) _gate_q_0;
  U(pi/2, -1.0094094858814837, -pi) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0010500000000000002) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0010500000000000002) q[2], q[3];
rxx(-0.0010500000000000002) q[2], q[3];
rxx(-0.0010500000000000002) q[2], q[3];
rxx(-0.0010500000000000002) q[2], q[3];
c[0] = measure q[0];
