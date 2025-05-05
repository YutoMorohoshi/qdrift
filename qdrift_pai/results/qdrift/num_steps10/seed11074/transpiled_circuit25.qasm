OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.78) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 3*pi/4, -pi) _gate_q_0;
  U(1.5221346224628098, -0.07751671255795811, -0.5594994763701688) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(2.0328500485497223, 2.2076756858160174, -2.8103160828828297) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -3*pi/4) _gate_q_0;
  U(1.6482210952623726, 2.1340739625371663, -3.092784614417864) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.78) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
rzz(0.78) q[1], q[2];
unitary q[0], q[1];
rxx(0.78) q[2], q[3];
rxx(0.78) q[2], q[3];
rzz(0.78) q[2], q[3];
rzz(0.78) q[1], q[2];
rxx(0.78) q[0], q[1];
rzz(0.78) q[2], q[3];
rxx(0.78) q[2], q[3];
c[0] = measure q[0];
