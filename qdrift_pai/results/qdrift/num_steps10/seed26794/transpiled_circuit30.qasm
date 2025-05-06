OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.8599999999999999) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.8599999999999999) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.8599999999999994, 0, pi/2) _gate_q_0;
  U(1.957229760440125, 2.1736445082208453, -2.6942130694972892) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 1.2963889106944917, -0.27440741610040487) _gate_q_0;
  U(1.0094094858814837, -pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(1.8599999999999999) q[0], q[1];
rzz(1.8599999999999999) q[0], q[1];
rxx(1.8599999999999999) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
