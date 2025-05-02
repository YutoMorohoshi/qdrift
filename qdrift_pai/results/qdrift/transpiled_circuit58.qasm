OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.67794504458898, 0.4636476090007786) _gate_q_0;
  U(0.5613868409134125, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.1270000000000007, 0, pi/2) _gate_q_0;
  U(1.6507670723571408, 1.8792423961485811, -2.0745613304339043) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -1.5448037273405306, -0.025992599454400356) _gate_q_0;
  U(2.13218316770831, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00295) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00295) q[2], q[3];
rxx(-0.00295) q[2], q[3];
rxx(-0.00295) q[2], q[3];
rxx(-0.00295) q[2], q[3];
c[0] = measure q[0];
