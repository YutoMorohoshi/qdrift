OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi, -0.19739555984988089, -0.19739555984988044) _gate_q_0;
  U(0.5613868409134125, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.8550000000000006, 0, pi/2) _gate_q_0;
  U(2.005368972237638, 2.1964711422623946, -2.7686113519495823) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, 2.375180889906482, 0.8043845631115851) _gate_q_0;
  U(2.1321831677083094, pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0017500000000000003) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0017500000000000003) q[2], q[3];
rxx(-0.0017500000000000003) q[2], q[3];
rxx(-0.0017500000000000003) q[2], q[3];
rxx(-0.0017500000000000003) q[2], q[3];
c[0] = measure q[0];
