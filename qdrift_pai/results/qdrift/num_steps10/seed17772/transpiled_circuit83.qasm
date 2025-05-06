OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.04) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.04) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(5.04) q[0], q[1];
rzz(5.04) q[0], q[1];
rxx(5.04) q[0], q[1];
rzz(5.04) q[0], q[1];
rxx(5.04) q[2], q[3];
rxx(5.04) q[2], q[3];
rxx(5.04) q[2], q[3];
rzz(5.04) q[2], q[3];
rzz(5.04) q[2], q[3];
rzz(5.04) q[2], q[3];
c[0] = measure q[0];
