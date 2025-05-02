OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.38050637711236224, 2.761086276477422) _gate_q_0;
  U(2.5802058126763807, -pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.9971853071795866, 0, pi/2) _gate_q_0;
  U(1.6208299515033182, 1.8173413948581185, -1.9693402414555639) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 2.3035779356908233, 0.732781608895936) _gate_q_0;
  U(1.0094094858814828, pi/2, -pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0031) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0031) q[2], q[3];
rxx(-0.0031) q[2], q[3];
rxx(-0.0031) q[2], q[3];
rxx(-0.0031) q[2], q[3];
c[0] = measure q[0];
