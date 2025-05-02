OPENQASM 3.0;
include "stdgates.inc";
gate unitary _gate_q_0, _gate_q_1 {
  U(0, -pi, 0) _gate_q_0;
  U(0.5613868409134126, pi/2, pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(2.5969999999999986, 0, pi/2) _gate_q_0;
  U(1.7930464807177868, 2.0591654799771764, -2.4129257627051217) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  U(0, 2.451707663938233, 2.2606813164464583) _gate_q_0;
  U(2.13218316770831, -pi/2, pi/2) _gate_q_1;
}
gate rxx(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-0.00245) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
bit[1] c;
qubit[4] q;
unitary q[0], q[1];
rxx(-0.00245) q[2], q[3];
rxx(-0.00245) q[2], q[3];
rxx(-0.00245) q[2], q[3];
rxx(-0.00245) q[2], q[3];
c[0] = measure q[0];
