OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.915000000000001, 0, pi/2) _gate_q_0;
  U(1.700358051605496, 1.9565528552357083, -2.212172880640612) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, -0.9958212841856415, 2.566617610980539) _gate_q_0;
  U(2.13218316770831, pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0027500000000000003) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0027500000000000003) q[2], q[3];
rxx(-0.0027500000000000003) q[2], q[3];
rxx(-0.0027500000000000003) q[2], q[3];
rxx(-0.0027500000000000003) q[2], q[3];
c[0] = measure q[0];
