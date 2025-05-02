OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, 0) _gate_q_0;
  U(pi/2, 0, 2.5802058126763834) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.058185307179587, 0, pi/2) _gate_q_0;
  U(1.7189911660698465, 1.980605936056719, -2.256941160997753) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, -2.132183167708307, 0) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00375) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00375) q[2], q[3];
rxx(-0.00375) q[2], q[3];
rxx(-0.00375) q[2], q[3];
rxx(-0.00375) q[2], q[3];
c[0] = measure q[0];
