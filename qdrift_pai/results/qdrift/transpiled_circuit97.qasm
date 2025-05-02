OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, 2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.0691853071795867, 0, pi/2) _gate_q_0;
  U(1.8151270464686138, 2.07858526753399, -2.4546527839651686) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, -pi/2) _gate_q_0;
  U(pi/2, 2.13218316770831, -pi) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0049) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0049) q[2], q[3];
rxx(-0.0049) q[2], q[3];
rxx(-0.0049) q[2], q[3];
rxx(-0.0049) q[2], q[3];
c[0] = measure q[0];
