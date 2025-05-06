OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.279999999999999) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.279999999999999) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 0, -pi) _gate_q_0;
  U(pi/2, -pi, -2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.877519189487729, 0, pi/2) _gate_q_0;
  U(1.7807076287168822, 2.0476142255222873, -2.388814969749971) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, 1.0094094858814842, 0) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(5.279999999999999) q[0], q[1];
rzz(5.279999999999999) q[0], q[1];
rxx(5.279999999999999) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
