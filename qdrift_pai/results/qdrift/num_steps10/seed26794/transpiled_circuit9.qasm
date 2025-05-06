OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.5999999999999999) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.5999999999999999) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 0, 0) _gate_q_0;
  U(pi/2, -pi, -2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.6831853071795875, 0, pi/2) _gate_q_0;
  U(1.6495908137387563, 1.8770922209451202, -2.070844073702551) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, -2.132183167708309, 0) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(0.5999999999999999) q[0], q[1];
rzz(0.5999999999999999) q[0], q[1];
rxx(0.5999999999999999) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
