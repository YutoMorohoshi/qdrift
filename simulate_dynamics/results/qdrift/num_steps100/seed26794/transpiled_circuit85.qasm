OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.516) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.516) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, -pi/4, -pi) _gate_q_0;
  U(1.618559595133986, 3.0655121218336365, 0.5595686914146238) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(2.026818625009159, 2.2053272622829336, -2.801198395317016) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/4) _gate_q_0;
  U(1.4948027284420264, -2.13400450029748, 0.04790162375178042) _gate_q_1;
}
gate unitary_0 _gate_q_0, _gate_q_1 {
  U(pi/2, -3*pi/4, -pi) _gate_q_0;
  U(1.1848501784590992, -0.7024688891647095, -0.41842732511528613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7920176587270569, 2.058222306464466, -2.410938461175248) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/4) _gate_q_0;
  U(2.2125215592342102, 2.2977102204433235, -2.6523928776916197) _gate_q_1;
}
gate unitary_1 _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, 0) _gate_q_0;
  U(pi/2, 0, 2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.109592653589793, 0, pi/2) _gate_q_0;
  U(2.026818625009159, 2.2053272622829336, -2.801198395317016) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, -pi/2) _gate_q_0;
  U(pi/2, -1.0094094858814837, -pi) _gate_q_1;
}
gate unitary_2 _gate_q_0, _gate_q_1 {
  U(pi/2, -3*pi/4, -pi) _gate_q_0;
  U(1.1848501784590992, -0.7024688891647095, -0.41842732511528613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7920176587270569, 2.058222306464466, -2.410938461175248) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/4) _gate_q_0;
  U(2.2125215592342102, 2.2977102204433235, -2.6523928776916197) _gate_q_1;
}
gate unitary_3 _gate_q_0, _gate_q_1 {
  U(pi/2, -3*pi/4, -pi) _gate_q_0;
  U(1.1848501784590992, -0.7024688891647095, -0.41842732511528613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7920176587270569, 2.058222306464466, -2.410938461175248) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/4) _gate_q_0;
  U(2.2125215592342102, 2.2977102204433235, -2.6523928776916197) _gate_q_1;
}
gate unitary_4 _gate_q_0, _gate_q_1 {
  U(pi/2, -3*pi/4, -pi) _gate_q_0;
  U(1.1848501784590992, -0.7024688891647095, -0.41842732511528613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.7920176587270569, 2.058222306464466, -2.410938461175248) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/4) _gate_q_0;
  U(2.2125215592342102, 2.2977102204433235, -2.6523928776916197) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rxx(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rzz(0.516) q[2], q[3];
rzz(0.516) q[2], q[3];
rzz(0.516) q[2], q[3];
rzz(0.516) q[2], q[3];
rzz(0.516) q[2], q[3];
rzz(0.516) q[2], q[3];
rxx(0.516) q[2], q[3];
rzz(0.516) q[1], q[2];
rzz(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rxx(0.516) q[0], q[1];
rzz(0.516) q[2], q[3];
rzz(0.516) q[2], q[3];
rxx(0.516) q[2], q[3];
rzz(0.516) q[1], q[2];
rxx(0.516) q[0], q[1];
rxx(0.516) q[1], q[2];
rzz(0.516) q[0], q[1];
rxx(0.516) q[2], q[3];
rzz(0.516) q[2], q[3];
rxx(0.516) q[1], q[2];
rzz(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rzz(0.516) q[2], q[3];
unitary q[1], q[2];
rzz(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rxx(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rxx(0.516) q[0], q[1];
rxx(0.516) q[2], q[3];
rxx(0.516) q[1], q[2];
unitary_0 q[0], q[1];
rxx(0.516) q[1], q[2];
rxx(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
unitary_1 q[2], q[3];
rxx(0.516) q[1], q[2];
rzz(0.516) q[0], q[1];
rzz(0.516) q[1], q[2];
rzz(0.516) q[1], q[2];
unitary_2 q[2], q[3];
rxx(0.516) q[1], q[2];
rzz(0.516) q[0], q[1];
rxx(0.516) q[2], q[3];
rxx(0.516) q[2], q[3];
rzz(0.516) q[2], q[3];
rxx(0.516) q[1], q[2];
rxx(0.516) q[0], q[1];
rzz(0.516) q[2], q[3];
rxx(0.516) q[1], q[2];
rzz(0.516) q[0], q[1];
rxx(0.516) q[1], q[2];
rzz(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rxx(0.516) q[0], q[1];
rzz(0.516) q[2], q[3];
rzz(0.516) q[2], q[3];
rzz(0.516) q[1], q[2];
rxx(0.516) q[1], q[2];
rzz(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rxx(0.516) q[0], q[1];
rzz(0.516) q[1], q[2];
unitary_3 q[0], q[1];
rxx(0.516) q[2], q[3];
rzz(0.516) q[1], q[2];
rxx(0.516) q[0], q[1];
rzz(0.516) q[0], q[1];
rxx(0.516) q[2], q[3];
rxx(0.516) q[1], q[2];
rzz(0.516) q[0], q[1];
rxx(0.516) q[0], q[1];
rxx(0.516) q[1], q[2];
rxx(0.516) q[2], q[3];
rxx(0.516) q[1], q[2];
rzz(0.516) q[0], q[1];
unitary_4 q[2], q[3];
rxx(0.516) q[1], q[2];
rzz(0.516) q[2], q[3];
rzz(0.516) q[1], q[2];
rxx(0.516) q[2], q[3];
rzz(0.516) q[2], q[3];
c[0] = measure q[0];
