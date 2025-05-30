OPENQASM 3.0;
include "stdgates.inc";
gate rzz(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.594) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.594) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate unitary _gate_q_0, _gate_q_1 {
  U(pi/2, 3*pi/4, 0) _gate_q_0;
  U(1.565029341215879, -3.1324222217093096, 0.5613603977806063) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.9349720949437985, 2.1616436327491515, -2.6590119652277977) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, 0, pi/4) _gate_q_0;
  U(1.5616260474139398, 2.1322096115132663, 3.135825425515079) _gate_q_1;
}
gate unitary_0 _gate_q_0, _gate_q_1 {
  U(pi/2, -3*pi/4, -pi) _gate_q_0;
  U(1.1848501784590992, -0.7024688891647095, -0.41842732511528613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8570150183611367, 2.111538313755407, -2.5296783839143426) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/4) _gate_q_0;
  U(2.2125215592342102, 2.2977102204433235, -2.6523928776916197) _gate_q_1;
}
gate unitary_1 _gate_q_0, _gate_q_1 {
  U(pi/2, -pi, -pi) _gate_q_0;
  U(pi/2, 0, 2.5802058126763807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(1.9535926535897934, 0, pi/2) _gate_q_0;
  U(1.9349720949437985, 2.1616436327491515, -2.6590119652277977) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, pi/2) _gate_q_0;
  U(pi/2, 1.0094094858814833, 0) _gate_q_1;
}
gate unitary_2 _gate_q_0, _gate_q_1 {
  U(pi/2, -3*pi/4, -pi) _gate_q_0;
  U(1.1848501784590992, -0.7024688891647095, -0.41842732511528613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8570150183611367, 2.111538313755407, -2.5296783839143426) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/4) _gate_q_0;
  U(2.2125215592342102, 2.2977102204433235, -2.6523928776916197) _gate_q_1;
}
gate unitary_3 _gate_q_0, _gate_q_1 {
  U(pi/2, -3*pi/4, -pi) _gate_q_0;
  U(1.1848501784590992, -0.7024688891647095, -0.41842732511528613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8570150183611367, 2.111538313755407, -2.5296783839143426) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/4) _gate_q_0;
  U(2.2125215592342102, 2.2977102204433235, -2.6523928776916197) _gate_q_1;
}
gate unitary_4 _gate_q_0, _gate_q_1 {
  U(pi/2, -3*pi/4, -pi) _gate_q_0;
  U(1.1848501784590992, -0.7024688891647095, -0.41842732511528613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi, -0.46111590409721526, 1.1096804226976813) _gate_q_0;
  U(1.8570150183611367, 2.111538313755407, -2.5296783839143426) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(pi/2, -pi, -pi/4) _gate_q_0;
  U(2.2125215592342102, 2.2977102204433235, -2.6523928776916197) _gate_q_1;
}
bit[1] c;
qubit[4] q;
rzz(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rzz(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rxx(0.594) q[2], q[3];
rzz(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rzz(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rxx(0.594) q[2], q[3];
rzz(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
rxx(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rxx(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rxx(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rzz(0.594) q[2], q[3];
unitary q[1], q[2];
rzz(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rxx(0.594) q[2], q[3];
rxx(0.594) q[1], q[2];
unitary_0 q[0], q[1];
rxx(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
unitary_1 q[2], q[3];
rxx(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rzz(0.594) q[1], q[2];
rzz(0.594) q[1], q[2];
unitary_2 q[2], q[3];
rxx(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rxx(0.594) q[2], q[3];
rxx(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rxx(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
rzz(0.594) q[2], q[3];
rxx(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rxx(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rzz(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
rzz(0.594) q[1], q[2];
rxx(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rzz(0.594) q[1], q[2];
unitary_3 q[0], q[1];
rxx(0.594) q[2], q[3];
rzz(0.594) q[1], q[2];
rxx(0.594) q[0], q[1];
rzz(0.594) q[0], q[1];
rxx(0.594) q[2], q[3];
rxx(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
rxx(0.594) q[0], q[1];
rxx(0.594) q[1], q[2];
rxx(0.594) q[2], q[3];
rxx(0.594) q[1], q[2];
rzz(0.594) q[0], q[1];
unitary_4 q[2], q[3];
rxx(0.594) q[1], q[2];
rzz(0.594) q[2], q[3];
rzz(0.594) q[1], q[2];
rxx(0.594) q[2], q[3];
rzz(0.594) q[2], q[3];
c[0] = measure q[0];
