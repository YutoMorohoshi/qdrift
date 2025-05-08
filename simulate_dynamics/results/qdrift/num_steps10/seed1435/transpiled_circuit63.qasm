OPENQASM 3.0;
include "stdgates.inc";
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.84) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.84) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi/4, -pi) _gate_q_0;
  U(1.533353555396132, -0.05960163698175869, -0.5602705549415496) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.9526511807962366, 2.1712529960172047, -2.6870200557227095) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/4) _gate_q_0;
  U(1.6303561395839627, 2.1333006527586544, -3.1040833409997552) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rxx(3.84) q[1], q[2];
rzz(3.84) q[1], q[2];
rzz(3.84) q[1], q[2];
rxx(3.84) q[0], q[1];
rzz(3.84) q[0], q[1];
rxx(3.84) q[2], q[3];
unitary q[1], q[2];
rzz(3.84) q[0], q[1];
rzz(3.84) q[2], q[3];
c[0] = measure q[0];
