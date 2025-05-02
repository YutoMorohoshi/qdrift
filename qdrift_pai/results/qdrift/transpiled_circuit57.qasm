OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.7610862764774318, 0.38050637711237645) _gate_q_0;
  U(0.5613868409134125, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.0740000000000003, 0, pi/2) _gate_q_0;
  U(1.66216327071865, 1.8991672803774389, -2.10925823952815) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.3634195547855263, 2.3489694255991793) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0029000000000000002) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0029000000000000002) q[2], q[3];
rxx(-0.0029000000000000002) q[2], q[3];
rxx(-0.0029000000000000002) q[2], q[3];
rxx(-0.0029000000000000002) q[2], q[3];
c[0] = measure q[0];
