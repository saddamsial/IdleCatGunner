/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a80d74, Ghidra VA 02b80d74. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Gamemanager_Power_Boss_return(undefined8 *param_1)

{
  int iVar1;
  float fVar2;
  undefined *puVar3;
  undefined *puVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  ulong uVar8;
  undefined8 uVar9;
  long lVar10;
  float fVar11;
  undefined8 uStack_1f0;
  undefined8 uStack_1e8;
  undefined8 uStack_1e0;
  undefined8 uStack_1d8;
  undefined8 uStack_1d0;
  undefined8 uStack_1c8;
  undefined8 uStack_1c0;
  undefined8 uStack_1b8;
  undefined8 uStack_1b0;
  undefined8 uStack_1a8;
  undefined8 uStack_1a0;
  undefined8 uStack_198;
  undefined8 uStack_190;
  undefined8 uStack_188;
  undefined8 uStack_180;
  undefined8 uStack_178;
  undefined8 uStack_170;
  undefined8 uStack_168;
  undefined8 uStack_160;
  undefined8 uStack_158;
  undefined8 uStack_150;
  undefined8 uStack_148;
  undefined8 uStack_140;
  undefined8 uStack_138;
  undefined8 uStack_130;
  undefined8 uStack_128;
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
  
  puVar4 = PTR_DAT_05e5d5b0;
  puVar3 = PTR_DAT_05e591c0;
  if ((bRam000000000625b8d1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625b8d1 = 1;
  }
  uStack_128 = 0;
  uStack_130 = 0;
  uStack_118 = 0;
  uStack_120 = 0;
  uStack_108 = 0;
  uStack_110 = 0;
  uStack_f8 = 0;
  uStack_100 = 0;
  uStack_e8 = 0;
  uStack_f0 = 0;
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
  uVar9 = *(undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 8);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Equality_0x6000dec(uVar9,0,0);
  if ((uVar5 & 1) == 0) {
    lVar7 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 8);
    if (lVar7 == 0) {
LAB_02b80ff0:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    lVar7 = *(long *)(lVar7 + 0x20);
    if (lVar7 != 0) {
      InfVal_op_Implicit_0x600003f(&uStack_90,0,0);
      fVar2 = _UNK_0116c268;
      if (0 < (int)*(ulong *)(lVar7 + 0x18)) {
        uVar5 = 0;
        uVar8 = *(ulong *)(lVar7 + 0x18) & 0xffffffff;
        do {
          if (uVar8 <= uVar5) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar10 = *(long *)(lVar7 + 0x20 + uVar5 * 8);
          if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar8 = Object_op_Equality_0x6000dec(lVar10,0,0);
          if ((uVar8 & 1) == 0) {
            if ((lVar10 == 0) || (lVar6 = Component_get_gameObject_0x6000c83(lVar10,0), lVar6 == 0))
            goto LAB_02b80ff0;
            uVar8 = GameObject_get_activeInHierarchy_0x6000d00(lVar6,0);
            if (((uVar8 & 1) != 0) &&
               (fVar11 = (float)Cat_AtkCool_Boss_return(lVar10,0), fVar2 < fVar11)) {
              Cat_ExpectedDamage_Boss_return(&uStack_150,lVar10,0);
              uStack_a8 = uStack_148;
              uStack_b0 = uStack_150;
              uStack_98 = uStack_138;
              uStack_a0 = uStack_140;
              InfVal_op_Implicit_0x600003f(&uStack_170,100,0);
              uStack_c8 = uStack_168;
              uStack_d0 = uStack_170;
              uStack_b8 = uStack_158;
              uStack_c0 = uStack_160;
              InfVal_op_Multiply_0x6000074(&uStack_190,&uStack_b0,&uStack_d0,0);
              iVar1 = -0x80000000;
              if (fVar11 * 100.0 != INFINITY) {
                iVar1 = (int)(fVar11 * 100.0);
              }
              uStack_e8 = uStack_188;
              uStack_f0 = uStack_190;
              uStack_d8 = uStack_178;
              uStack_e0 = uStack_180;
              InfVal_op_Implicit_0x600003f(&uStack_1b0,iVar1,0);
              uStack_108 = uStack_1a8;
              uStack_110 = uStack_1b0;
              uStack_f8 = uStack_198;
              uStack_100 = uStack_1a0;
              InfVal_op_Division_0x6000075(&uStack_1d0,&uStack_f0,&uStack_110,0);
              uStack_128 = uStack_1c8;
              uStack_130 = uStack_1d0;
              uStack_118 = uStack_1b8;
              uStack_120 = uStack_1c0;
              InfVal_op_Addition_0x6000072(&uStack_1f0,&uStack_90,&uStack_130,0);
              uStack_88 = uStack_1e8;
              uStack_90 = uStack_1f0;
              uStack_78 = uStack_1d8;
              uStack_80 = uStack_1e0;
            }
          }
          uVar8 = (ulong)*(uint *)(lVar7 + 0x18);
          uVar5 = uVar5 + 1;
        } while ((long)uVar5 < (long)(int)*(uint *)(lVar7 + 0x18));
      }
      InfVal_ToPrecision_0x6000089(&uStack_150,&uStack_90,5,0);
      goto LAB_02b80fc4;
    }
  }
  InfVal_op_Implicit_0x600003f(&uStack_150,0,0);
LAB_02b80fc4:
  param_1[1] = uStack_148;
  *param_1 = uStack_150;
  param_1[3] = uStack_138;
  param_1[2] = uStack_140;
  return;
}

