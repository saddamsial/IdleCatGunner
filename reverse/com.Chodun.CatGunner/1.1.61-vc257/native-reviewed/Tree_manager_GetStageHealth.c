/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba96cc, Ghidra VA 02ca96cc. */

void Tree_manager_GetStageHealth(undefined8 *param_1,long param_2,uint param_3)

{
  uint uVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uStack_120;
  undefined8 uStack_118;
  undefined8 uStack_110;
  undefined8 uStack_108;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  if ((bRam000000000625c51a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64a08);
    func_0x029f5a50(PTR_DAT_05e64a10);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c51a = 1;
  }
  lVar3 = *(long *)(param_2 + 0x70);
  uStack_d8 = 0;
  uStack_e0 = 0;
  uStack_c8 = 0;
  uStack_d0 = 0;
  uStack_b8 = 0;
  uStack_c0 = 0;
  uStack_a8 = 0;
  uStack_b0 = 0;
  uStack_98 = 0;
  uStack_a0 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  if (lVar3 != 0) {
    if ((int)param_3 < (int)*(uint *)(lVar3 + 0x18)) {
      if (*(uint *)(lVar3 + 0x18) <= param_3) {
LAB_02ca9858:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar3 = lVar3 + (long)(int)param_3 * 0x20;
      uStack_80 = *(undefined8 *)(lVar3 + 0x20);
      uStack_78 = *(undefined8 *)(lVar3 + 0x28);
      uStack_70 = *(undefined8 *)(lVar3 + 0x30);
      uStack_68 = *(undefined8 *)(lVar3 + 0x38);
LAB_02ca9838:
      param_1[1] = uStack_78;
      *param_1 = uStack_80;
      param_1[3] = uStack_68;
      param_1[2] = uStack_70;
      return;
    }
    if (*(long *)(param_2 + 0x80) != 0) {
      uVar2 = func_0x03db0648(*(long *)(param_2 + 0x80),param_3,&uStack_80,
                              *(undefined8 *)PTR_DAT_05e64a08);
      if ((uVar2 & 1) != 0) goto LAB_02ca9838;
      lVar3 = *(long *)(param_2 + 0x70);
      if (lVar3 != 0) {
        uVar1 = *(int *)(lVar3 + 0x18) - 1;
        if (*(int *)(*(long *)PTR_DAT_05e5dc20 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        Tree_manager_PowOfThree_0x6000efd(&uStack_c0,param_3 - uVar1);
        if (*(uint *)(lVar3 + 0x18) <= uVar1) goto LAB_02ca9858;
        InfVal_op_Multiply_0x6000074
                  (&uStack_100,lVar3 + (long)(int)uVar1 * 0x20 + 0x20,&uStack_c0,0);
        uStack_d8 = uStack_f8;
        uStack_e0 = uStack_100;
        uStack_c8 = uStack_e8;
        uStack_d0 = uStack_f0;
        InfVal_ToPrecision_0x6000089(&uStack_120,&uStack_e0,2,0);
        uStack_98 = uStack_118;
        uStack_a0 = uStack_120;
        uStack_88 = uStack_108;
        uStack_90 = uStack_110;
        if (*(long *)(param_2 + 0x80) != 0) {
          uStack_58 = uStack_118;
          uStack_60 = uStack_120;
          uStack_48 = uStack_108;
          uStack_50 = uStack_110;
          func_0x03daea4c(*(long *)(param_2 + 0x80),param_3,&uStack_60,
                          *(undefined8 *)PTR_DAT_05e64a10);
          uStack_80 = uStack_a0;
          uStack_78 = uStack_98;
          uStack_70 = uStack_90;
          uStack_68 = uStack_88;
          goto LAB_02ca9838;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

