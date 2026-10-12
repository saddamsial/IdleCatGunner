/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b41fbc, Ghidra VA 02c41fbc. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

bool Cat_TryFireShotgun(undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4,
                       undefined8 *param_5,undefined8 param_6,uint param_7)

{
  int iVar1;
  undefined4 uVar2;
  float fVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  ulong uVar7;
  long lVar8;
  int iVar9;
  float fVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  float fVar13;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  
  if ((bRam000000000625c0b5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62770);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62768);
    bRam000000000625c0b5 = 1;
  }
  puVar6 = PTR_DAT_05e62770;
  puVar5 = PTR_DAT_05e62768;
  puVar4 = PTR_DAT_05e591c0;
  fVar3 = _UNK_0116c26c;
  uVar2 = _UNK_0116c218;
  lVar8 = *(long *)(param_4 + 0x48);
  if (lVar8 != 0) {
    fVar13 = *(float *)(lVar8 + 0x48);
    iVar1 = *(int *)(lVar8 + 0x44);
    iVar9 = 0;
    if (iVar1 < 2) {
      iVar1 = 1;
    }
    while (**(long **)(*(long *)puVar5 + 0xb8) != 0) {
      lVar8 = Polling_manager_Object_Polling_Smart_0x60004a2
                        (**(long **)(*(long *)puVar5 + 0xb8),0,0);
      if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar4);
      }
      uVar7 = Object_op_Equality_0x6000dec(lVar8,0,0);
      if ((uVar7 & 1) != 0) goto LAB_02c42178;
      fVar10 = (float)Random_Range_0x6000ba6(-fVar13,fVar13,0);
      fVar10 = fVar10 * fVar3;
      uVar12 = 0;
      Quaternion_Internal_FromEulerRad_0x6000a4b(0,fVar10,0,0);
      uVar11 = Quaternion_op_Multiply_0x6000a54(0);
      if ((lVar8 == 0) || (lVar8 = func_0x030a02b4(lVar8,*(undefined8 *)puVar6), lVar8 == 0)) break;
      uStack_b8 = param_5[1];
      uStack_c0 = *param_5;
      uStack_a8 = param_5[3];
      uStack_b0 = param_5[2];
      Bullet_SpawnEx_0x6000a25
                (param_1,param_2,param_3,uVar11,fVar10,uVar12,0,uVar2,lVar8,
                 *(undefined4 *)(param_4 + 0x40),&uStack_c0,param_6,param_7 & 1,3,
                 *(undefined4 *)(param_4 + 0xb4),0);
      iVar9 = iVar9 + 1;
      if (iVar1 == iVar9) {
        iVar9 = 1;
LAB_02c42178:
        return iVar9 != 0;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

