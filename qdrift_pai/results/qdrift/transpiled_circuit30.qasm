OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, 0) _gate_q_0;
  U(pi/2, 0, -0.5613868409134124) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.8085926535897934, 0, pi/2) _gate_q_0;
  U(2.0021955013216792, 2.195093352050078, -2.763765513215292) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/2) _gate_q_0;
  U(pi/2, -2.1321831677083094, 0) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00155) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00155) q[2], q[3];
rxx(-0.00155) q[2], q[3];
rxx(-0.00155) q[2], q[3];
rxx(-0.00155) q[2], q[3];
c[0] = measure q[0];
