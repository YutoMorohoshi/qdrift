OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, -0.5613868409134133) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.8431853071795863, 0, pi/2) _gate_q_0;
  U(1.8189338965144584, 2.081781762628369, -2.461680259721632) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, 1.0094094858814833, 0) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.004) q[2], q[3];
rxx(-0.004) q[2], q[3];
rxx(-0.004) q[2], q[3];
rxx(-0.004) q[2], q[3];
c[0] = measure q[0];
