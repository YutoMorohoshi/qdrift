OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.944197093739912, 0.19739555984988044) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.6500000000000004, 0, pi/2) _gate_q_0;
  U(1.7762226066093068, 2.0432818743272163, -2.3798947979079568) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 1.6428287242171873, 3.0695602561675015) _gate_q_0;
  U(2.1321831677083094, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.0025) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.0025) q[2], q[3];
rxx(-0.0025) q[2], q[3];
rxx(-0.0025) q[2], q[3];
rxx(-0.0025) q[2], q[3];
c[0] = measure q[0];
