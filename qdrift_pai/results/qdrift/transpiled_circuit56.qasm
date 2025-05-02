OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, 2.677945044588986, 0.4636476090008026) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(3.0209999999999995, 0, pi/2) _gate_q_0;
  U(1.6742393811507719, 1.9187056075404918, -2.14375986966973) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 1.8116924921031332, 2.900696488281552) _gate_q_0;
  U(2.132183167708309, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00285) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00285) q[2], q[3];
rxx(-0.00285) q[2], q[3];
rxx(-0.00285) q[2], q[3];
rxx(-0.00285) q[2], q[3];
c[0] = measure q[0];
