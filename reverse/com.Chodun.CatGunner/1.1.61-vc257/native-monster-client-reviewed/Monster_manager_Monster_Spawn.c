/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4fbf0, Ghidra VA 02c4fbf0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Monster_manager_Monster_Spawn
               (undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,long param_4)

{
  uint uVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  long lVar5;
  long lVar6;
  long *plVar7;
  long lVar8;
  undefined4 uVar9;
  float fVar10;
  float fVar11;
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
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c14d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e63498);
    func_0x029f5a50(PTR_DAT_05e63530);
    func_0x029f5a50(PTR_DAT_05e63538);
    func_0x029f5a50(PTR_DAT_05e63540);
    bRam000000000625c14d = 1;
  }
  lVar3 = *(long *)puVar2;
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
  uStack_58 = 0;
  uStack_60 = 0;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  if (**(char **)(lVar3 + 0xb8) == '\0') {
    return;
  }
  if (*(long *)(param_4 + 0x170) != 0) {
    if (*(int *)(*(long *)(param_4 + 0x170) + 0x18) == 0) {
      return;
    }
    uVar9 = Monster_manager_EnemySpawn_Pos_return(param_4);
    if (*(long *)(param_4 + 0x170) != 0) {
      lVar3 = func_0x0452c8d8(*(long *)(param_4 + 0x170),0,*(undefined8 *)PTR_DAT_05e63540);
      fVar10 = (float)Random_Range_0x6000ba6(0,0x3f800000,0);
      fVar11 = (float)*(int *)(param_4 + 0x24) * _UNK_0116c060;
      if (fVar11 < fVar10) {
        uStack_a8 = *(undefined8 *)(param_4 + 0x68);
        uStack_b0 = *(undefined8 *)(param_4 + 0x60);
        uStack_98 = *(undefined8 *)(param_4 + 0x78);
        uStack_a0 = *(undefined8 *)(param_4 + 0x70);
      }
      else {
        InfVal_op_Implicit_0x600003f(&uStack_d0,3,0);
        uStack_68 = uStack_c8;
        uStack_70 = uStack_d0;
        uStack_58 = uStack_b8;
        uStack_60 = uStack_c0;
        InfVal_op_Multiply_0x6000074(&uStack_f0,param_4 + 0x60,&uStack_70,0);
        uStack_88 = uStack_e8;
        uStack_90 = uStack_f0;
        uStack_78 = uStack_d8;
        uStack_80 = uStack_e0;
        InfVal_ToPrecision_0x6000089(&uStack_b0,&uStack_90,2,0);
      }
      uStack_c8 = uStack_a8;
      uStack_d0 = uStack_b0;
      uStack_b8 = uStack_98;
      uStack_c0 = uStack_a0;
      uVar4 = Monster_manager_SkinSprite_return(param_4,fVar10 <= fVar11);
      if (lVar3 != 0) {
        uStack_108 = uStack_c8;
        uStack_110 = uStack_d0;
        uStack_f8 = uStack_b8;
        uStack_100 = uStack_c0;
        Monster_Spawn(uVar9,param_2,param_3,lVar3,&uStack_110,uVar4,fVar10 <= fVar11);
        if (*(long *)(param_4 + 0x170) != 0) {
          func_0x0452e350(*(long *)(param_4 + 0x170),0,*(undefined8 *)PTR_DAT_05e63530);
          lVar5 = *(long *)(param_4 + 0x178);
          if (lVar5 != 0) {
            lVar6 = *(long *)(lVar5 + 0x10);
            lVar8 = *(long *)PTR_DAT_05e63498;
            *(int *)(lVar5 + 0x1c) = *(int *)(lVar5 + 0x1c) + 1;
            if (lVar6 != 0) {
              uVar1 = *(uint *)(lVar5 + 0x18);
              if (uVar1 < *(uint *)(lVar6 + 0x18)) {
                *(uint *)(lVar5 + 0x18) = uVar1 + 1;
                plVar7 = (long *)(lVar6 + (long)(int)uVar1 * 8 + 0x20);
                *plVar7 = lVar3;
                Managed_WriteBarrier(plVar7,lVar3);
                return;
              }
              func_0x0452cba8(lVar5,lVar3,
                              *(undefined8 *)(*(long *)(*(long *)(lVar8 + 0x20) + 0xc0) + 0x70));
              return;
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

