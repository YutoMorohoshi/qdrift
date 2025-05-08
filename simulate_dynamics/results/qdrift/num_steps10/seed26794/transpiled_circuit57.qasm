OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.4800000000000004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.4800000000000004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.8031853071795862, 0, pi/2) _gate_q_0;
  U(1.824229094738007, 2.086157587802706, -2.471380045234187) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -1.7489919718967541, -0.17819564510185737) _gate_q_0;
  U(1.0094094858814837, -pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(3.4800000000000004) q[0], q[1];
rzz(3.4800000000000004) q[0], q[1];
rxx(3.4800000000000004) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
