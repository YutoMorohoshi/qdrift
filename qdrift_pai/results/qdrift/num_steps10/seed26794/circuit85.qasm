OPENQASM 3.0;
include "stdgates.inc";
gate rzz(p0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(p0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate PauliEvolution(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(2.5799999999999996) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_0(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(2.5799999999999996) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_1(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(2.5799999999999996) _gate_q_0, _gate_q_1;
}
gate rxx(p0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(p0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate PauliEvolution_2(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(2.5799999999999996) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_3(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(2.5799999999999996) _gate_q_2, _gate_q_3;
}
bit[1] c;
qubit[4] q;
PauliEvolution(0.043) q[0], q[1], q[2], q[3];
PauliEvolution(0.043) q[0], q[1], q[2], q[3];
PauliEvolution_0(0.043) q[0], q[1], q[2], q[3];
PauliEvolution_1(0.043) q[0], q[1], q[2], q[3];
PauliEvolution(0.043) q[0], q[1], q[2], q[3];
PauliEvolution(0.043) q[0], q[1], q[2], q[3];
PauliEvolution(0.043) q[0], q[1], q[2], q[3];
PauliEvolution(0.043) q[0], q[1], q[2], q[3];
PauliEvolution_2(0.043) q[0], q[1], q[2], q[3];
PauliEvolution_3(0.043) q[0], q[1], q[2], q[3];
c[0] = measure q[0];
