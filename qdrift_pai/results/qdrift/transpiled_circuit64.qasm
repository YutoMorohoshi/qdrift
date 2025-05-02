OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.3805063771123649, -0.3805063771123649) _gate_q_0;
  U(2.5802058126763807, -pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.8381853071795855, 0, pi/2) _gate_q_0;
  U(1.5975973151302103, 1.7527031502362256, -1.8625802029760195) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -3*pi/4, -pi/4) _gate_q_0;
  U(1.0094094858814833, -pi/2, -pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0032500000000000003) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0032500000000000003) q[2], q[3];
rxx(-0.0032500000000000003) q[2], q[3];
rxx(-0.0032500000000000003) q[2], q[3];
rxx(-0.0032500000000000003) q[2], q[3];
c[0] = measure q[0];
