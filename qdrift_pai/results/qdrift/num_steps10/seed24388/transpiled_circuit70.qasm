OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.1300000000000003) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.1300000000000003) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
rzz(2.1300000000000003) q[1], q[2];
rxx(2.1300000000000003) q[2], q[3];
rxx(2.1300000000000003) q[2], q[3];
rzz(2.1300000000000003) q[2], q[3];
rxx(2.1300000000000003) q[1], q[2];
rzz(2.1300000000000003) q[0], q[1];
rzz(2.1300000000000003) q[1], q[2];
rzz(2.1300000000000003) q[1], q[2];
rzz(2.1300000000000003) q[0], q[1];
rxx(2.1300000000000003) q[1], q[2];
c[0] = measure q[0];
