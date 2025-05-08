OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.98) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.98) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.761086276477428, -2.761086276477428) _gate_q_0;
  U(0.5613868409134126, pi/2, -pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.8384073464102075, 0, pi/2) _gate_q_0;
  U(2.0207698909106253, 2.2029098642021605, -2.7920359710473743) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -2.155444118708373, -0.5846477919134765) _gate_q_0;
  U(1.0094094858814837, pi/2, -pi/2) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(4.98) q[0], q[1];
rzz(4.98) q[0], q[1];
rxx(4.98) q[0], q[1];
unitary q[2], q[3];
c[0] = measure q[0];
