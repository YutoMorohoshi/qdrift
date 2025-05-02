OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.38050637711236446, -0.3805063771123649) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.158407346410206, 0, pi/2) _gate_q_0;
  U(1.8442220503359943, 2.1019730136425983, -2.5072690258753054) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.086475399846236, 2.6259135805384535) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.005) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.005) q[2], q[3];
rxx(-0.005) q[2], q[3];
rxx(-0.005) q[2], q[3];
rxx(-0.005) q[2], q[3];
c[0] = measure q[0];
