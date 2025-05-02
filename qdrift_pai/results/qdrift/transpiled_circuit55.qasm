OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.968000000000001, 0, pi/2) _gate_q_0;
  U(1.68697721811673, 1.9378396922092342, -2.1780646800724304) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -0.2705922082776375, 1.841388535072534) _gate_q_0;
  U(2.1321831677083094, pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0028000000000000004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0028000000000000004) q[2], q[3];
rxx(-0.0028000000000000004) q[2], q[3];
rxx(-0.0028000000000000004) q[2], q[3];
rxx(-0.0028000000000000004) q[2], q[3];
c[0] = measure q[0];
