OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.88) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.88) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.88, 0, pi/2) _gate_q_0;
  U(2.0376666143318602, 2.209506778932349, -2.817585130514159) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 1.4710304271805983, -0.09976589961429827) _gate_q_0;
  U(1.0094094858814837, -pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(2.88) q[0], q[1];
rzz(2.88) q[0], q[1];
rxx(2.88) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
