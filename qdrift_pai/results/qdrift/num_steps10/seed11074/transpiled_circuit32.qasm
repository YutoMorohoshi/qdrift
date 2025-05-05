OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.99) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 3*pi/4, 0) _gate_q_0;
  U(1.5831008409356562, 0.019567895743290542, -0.5612664488281442) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8455891283233268, 2.103015219403396, -2.5096833308826962) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/4) _gate_q_0;
  U(1.590362741067647, -2.1323035737276066, -0.012306869993667036) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.99) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
rzz(0.99) q[1], q[2];
unitary q[0], q[1];
rxx(0.99) q[2], q[3];
rxx(0.99) q[2], q[3];
rzz(0.99) q[2], q[3];
rzz(0.99) q[1], q[2];
rxx(0.99) q[0], q[1];
rzz(0.99) q[2], q[3];
rxx(0.99) q[2], q[3];
c[0] = measure q[0];
