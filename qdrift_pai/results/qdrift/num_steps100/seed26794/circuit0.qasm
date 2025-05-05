OPENQASM 3.0;
include "stdgates.inc";
gate rzz(p0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(p0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate PauliEvolution(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_0(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_1(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
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
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_3(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_4(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_5(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_6(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_7(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_8(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_9(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_10(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_11(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_12(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_13(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_14(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_15(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_16(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_17(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_18(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_19(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_20(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_21(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_22(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_23(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_24(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_25(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_26(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_27(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_28(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_29(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_30(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_31(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_32(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_33(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_34(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_35(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_36(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_37(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_38(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_39(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_40(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_41(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_42(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_43(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_44(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_45(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_46(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_47(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_48(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_49(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_50(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_51(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_52(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_53(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_54(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_55(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_56(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_57(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_58(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_59(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_60(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_61(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_62(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_63(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_64(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_65(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_66(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_67(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_68(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_69(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_70(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_71(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_72(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_73(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_74(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_75(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_76(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_77(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_78(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_79(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_80(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.003) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_81(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.003) _gate_q_2, _gate_q_3;
}
bit[1] c;
qubit[4] q;
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_0(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_1(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_2(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_3(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_4(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_5(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_6(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_7(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_8(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_9(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_10(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_11(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_12(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_13(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_14(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_15(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_16(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_17(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_18(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_19(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_20(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_21(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_22(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_23(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_24(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_25(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_26(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_27(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_28(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_29(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_30(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_31(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_32(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_33(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_34(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_35(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_36(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_37(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_38(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_39(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_40(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_41(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_42(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_43(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_44(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_45(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_46(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_47(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_48(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_49(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_50(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_51(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_52(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_53(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_54(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_55(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_56(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_57(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_58(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_59(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_60(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_61(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_62(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_63(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_64(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_65(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_66(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_67(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_68(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_69(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_70(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_71(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_72(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_73(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_74(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_75(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_76(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_77(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_78(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_79(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_80(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution_81(5.e-05) q[0], q[1], q[2], q[3];
PauliEvolution(5.e-05) q[0], q[1], q[2], q[3];
c[0] = measure q[0];
