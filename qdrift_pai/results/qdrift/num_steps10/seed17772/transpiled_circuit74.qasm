OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.25) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.25) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(2.25) q[0], q[1];
rzz(2.25) q[0], q[1];
rxx(2.25) q[0], q[1];
rzz(2.25) q[0], q[1];
rxx(2.25) q[2], q[3];
rxx(2.25) q[2], q[3];
rxx(2.25) q[2], q[3];
rzz(2.25) q[2], q[3];
rzz(2.25) q[2], q[3];
rzz(2.25) q[2], q[3];
c[0] = measure q[0];
