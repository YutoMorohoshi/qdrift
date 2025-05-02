OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.8911853071795863, 0, pi/2) _gate_q_0;
  U(1.604572927316309, 1.7745146716564708, -1.8983214765406151) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 1.9942017288437466, -2.718187251540942) _gate_q_0;
  U(1.0094094858814835, -pi/2, -pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0032) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0032) q[2], q[3];
rxx(-0.0032) q[2], q[3];
rxx(-0.0032) q[2], q[3];
rxx(-0.0032) q[2], q[3];
c[0] = measure q[0];
