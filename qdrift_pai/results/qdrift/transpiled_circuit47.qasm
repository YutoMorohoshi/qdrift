OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, 0.3805063771123658) _gate_q_0;
  U(0.5613868409134125, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.5439999999999987, 0, pi/2) _gate_q_0;
  U(1.8103726858857094, 2.0745323869460295, -2.4458104402708063) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.0922775619924376, 2.620111418392254) _gate_q_0;
  U(2.1321831677083107, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0024000000000000002) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0024000000000000002) q[2], q[3];
rxx(-0.0024000000000000002) q[2], q[3];
rxx(-0.0024000000000000002) q[2], q[3];
rxx(-0.0024000000000000002) q[2], q[3];
c[0] = measure q[0];
