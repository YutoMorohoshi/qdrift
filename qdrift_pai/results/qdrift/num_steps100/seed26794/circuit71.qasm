OPENQASM 3.0;
include "stdgates.inc";
gate rzz(p0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(p0) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate PauliEvolution(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_0(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_1(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
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
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_3(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_4(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_5(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_6(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_7(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_8(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_9(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_10(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_11(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_12(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_13(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_14(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_15(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_16(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_17(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_18(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_19(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_20(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_21(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_22(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_23(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_24(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_25(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_26(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_27(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_28(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_29(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_30(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_31(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_32(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_33(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_34(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_35(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_36(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_37(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_38(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_39(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_40(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_41(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_42(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_43(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_44(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_45(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_46(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_47(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_48(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_49(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_50(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_51(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_52(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_53(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_54(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_55(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_56(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_57(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_58(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_59(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_60(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_61(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_62(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_63(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_64(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_65(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_66(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_67(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_68(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_69(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_70(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_71(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_72(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_73(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_74(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_75(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_76(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_0, _gate_q_1;
}
gate PauliEvolution_77(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_78(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
gate PauliEvolution_79(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_80(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rzz(0.216) _gate_q_1, _gate_q_2;
}
gate PauliEvolution_81(_gate_p_0) _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  rxx(0.216) _gate_q_2, _gate_q_3;
}
bit[1] c;
qubit[4] q;
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_0(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_1(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_2(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_3(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_4(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_5(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_6(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_7(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_8(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_9(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_10(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_11(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_12(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_13(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_14(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_15(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_16(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_17(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_18(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_19(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_20(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_21(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_22(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_23(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_24(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_25(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_26(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_27(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_28(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_29(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_30(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_31(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_32(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_33(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_34(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_35(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_36(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_37(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_38(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_39(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_40(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_41(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_42(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_43(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_44(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_45(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_46(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_47(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_48(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_49(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_50(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_51(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_52(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_53(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_54(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_55(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_56(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_57(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_58(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_59(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_60(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_61(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_62(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_63(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_64(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_65(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_66(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_67(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_68(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_69(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_70(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_71(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_72(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_73(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_74(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_75(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_76(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_77(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_78(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_79(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_80(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution_81(0.0036) q[0], q[1], q[2], q[3];
PauliEvolution(0.0036) q[0], q[1], q[2], q[3];
c[0] = measure q[0];
