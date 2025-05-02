OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134106) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.542185307179586, 0, pi/2) _gate_q_0;
  U(1.9878186158889406, 2.188630178379773, -2.7417194683215325) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, 1.0094094858814842, 0) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00435) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00435) q[2], q[3];
rxx(-0.00435) q[2], q[3];
rxx(-0.00435) q[2], q[3];
rxx(-0.00435) q[2], q[3];
c[0] = measure q[0];
