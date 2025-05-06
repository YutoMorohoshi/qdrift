OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.2199999999999998) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.2199999999999998) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, 2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.3879632679489675, 0, pi/2) _gate_q_0;
  U(1.749962942280762, 2.016351254150985, -2.3257792558702013) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, 1.0094094858814833, 0) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(2.2199999999999998) q[0], q[1];
rzz(2.2199999999999998) q[0], q[1];
rxx(2.2199999999999998) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
