OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, 0) _gate_q_0;
  U(pi/2, 0, 2.5802058126763425) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.9721853071795867, 0, pi/2) _gate_q_0;
  U(1.7565095117802338, 2.0233288458170575, -2.3395938675251804) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, -2.132183167708332, 0) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00385) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00385) q[2], q[3];
rxx(-0.00385) q[2], q[3];
rxx(-0.00385) q[2], q[3];
rxx(-0.00385) q[2], q[3];
c[0] = measure q[0];
