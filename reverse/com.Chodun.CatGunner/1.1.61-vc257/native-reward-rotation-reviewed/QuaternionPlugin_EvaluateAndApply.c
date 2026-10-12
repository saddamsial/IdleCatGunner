/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bd37f8, Ghidra VA 02cd37f8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void QuaternionPlugin_EvaluateAndApply
               (undefined4 param_1,float param_2,float param_3,float param_4,undefined4 param_5,
               undefined4 param_6,float param_7,undefined4 param_8,long *param_9,uint *param_10,
               long *param_11,undefined8 param_12,undefined8 param_13,long param_14)

{
  byte bVar1;
  long lVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  ulong uVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined8 uVar15;
  float fVar16;
  float fVar17;
  
  if ((bRam000000000625c6a0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e65880);
    bRam000000000625c6a0 = 1;
  }
  if ((param_10[5] & 1) == 0) {
    if (param_11 == (long *)0x0) goto LAB_02cd3cc0;
    uVar15 = CONCAT44(param_6,param_5);
  }
  else {
    if (param_11 == (long *)0x0) {
LAB_02cd3ccc:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    bVar1 = *(byte *)(*(long *)PTR_DAT_05e65880 + 0x130);
    if ((*(byte *)(*param_11 + 0x130) < bVar1) ||
       (*(long *)(*(long *)(*param_11 + 200) + (ulong)bVar1 * 8 + -8) != *(long *)PTR_DAT_05e65880))
    {
      func_0x029f607c(param_11);
      goto LAB_02cd3ccc;
    }
    lVar2 = *(long *)(param_10 + 6);
    *(uint *)(param_11 + 0x27) = param_10[8];
    param_11[0x26] = lVar2;
    SpecialPluginsUtils_SetLookAt_0x600037b(param_11);
    (**(code **)(*param_9 + 0x1c8))(param_9,param_11,*(undefined8 *)(*param_9 + 0x1d0));
    param_7 = *(float *)((long)param_11 + 0x144);
    uVar15 = *(undefined8 *)((long)param_11 + 0x13c);
  }
  fVar6 = (float)uVar15;
  fVar8 = (float)((ulong)uVar15 >> 0x20);
  fVar17 = param_4;
  fVar12 = param_2;
  fVar3 = param_3;
  if ((int)param_11[0x15] == 2) {
    fVar3 = (float)(*(int *)((long)param_11 + 0x10c) - (int)*(char *)((long)param_11 + 0x111));
    fVar17 = param_4 + param_7 * fVar3;
    fVar12 = param_2 + fVar6 * fVar3;
    fVar3 = param_3 + fVar8 * fVar3;
  }
  if (*(char *)((long)param_11 + 0xe9) != '\0') {
    lVar2 = param_11[0x1e];
    if (lVar2 == 0) goto LAB_02cd3cc0;
    if (*(int *)(lVar2 + 0xa8) == 2) {
      fVar4 = 1.0;
      if ((int)param_11[0x15] == 2) {
        fVar4 = (float)*(int *)((long)param_11 + 0xa4);
      }
      fVar9 = (float)(*(int *)(lVar2 + 0x10c) - (int)*(char *)(lVar2 + 0x111));
      fVar12 = fVar12 + fVar6 * fVar4 * fVar9;
      fVar3 = fVar3 + fVar8 * fVar4 * fVar9;
      fVar17 = fVar17 + param_7 * fVar4 * fVar9;
    }
  }
  fVar13 = *(float *)((long)param_11 + 0xc4);
  fVar9 = (float)EaseManager_Evaluate_0x600047c
                           (param_1,param_8,(int)param_11[0x18],fVar13,
                            *(undefined4 *)((long)param_11 + 0xb4),param_11[0x17],0);
  fVar4 = _UNK_0116c26c;
  if ((*param_10 & 0xfffffffe) == 2) {
    param_3 = param_3 * _UNK_0116c26c;
    param_4 = param_4 * _UNK_0116c26c;
    fVar17 = (float)Quaternion_Internal_FromEulerRad_0x6000a4b(param_2 * _UNK_0116c26c,0);
    if (*param_10 == 2) {
      fVar3 = param_3;
      fVar11 = param_4;
      fVar14 = fVar13;
      fVar5 = (float)Quaternion_Inverse_0x6000a49(fVar17,param_3,param_4,fVar13,0);
      fVar8 = fVar9 * fVar8 * fVar4;
      fVar10 = param_7 * fVar9 * fVar4;
      fVar12 = fVar14;
      fVar6 = (float)Quaternion_Internal_FromEulerRad_0x6000a4b
                               (fVar9 * fVar6 * fVar4,fVar8,fVar10,0);
      if (param_14 == 0) {
LAB_02cd3cc0:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      fVar4 = ((fVar13 * fVar14 - fVar17 * fVar5) - param_3 * fVar3) - param_4 * fVar11;
      fVar9 = (param_3 * fVar11 + fVar13 * fVar5 + fVar17 * fVar14) - param_4 * fVar3;
      fVar16 = (fVar17 * fVar3 + fVar13 * fVar11 + param_4 * fVar14) - param_3 * fVar5;
      fVar3 = (param_4 * fVar5 + fVar13 * fVar3 + param_3 * fVar14) - fVar17 * fVar11;
      uVar7 = (ulong)(uint)((param_4 * ((fVar6 * fVar16 + fVar8 * fVar4 + fVar12 * fVar3) -
                                       fVar10 * fVar9) +
                            fVar17 * (((fVar12 * fVar4 - fVar6 * fVar9) - fVar8 * fVar3) -
                                     fVar10 * fVar16) +
                            fVar13 * ((fVar10 * fVar3 + fVar6 * fVar4 + fVar12 * fVar9) -
                                     fVar8 * fVar16)) -
                           param_3 * ((fVar8 * fVar9 + fVar10 * fVar4 + fVar12 * fVar16) -
                                     fVar6 * fVar3));
    }
    else {
      fVar8 = fVar9 * fVar8 * fVar4;
      fVar11 = param_7 * fVar9 * fVar4;
      fVar12 = fVar13;
      fVar3 = (float)Quaternion_Internal_FromEulerRad_0x6000a4b
                               (fVar9 * fVar6 * fVar4,fVar8,fVar11,0);
      if (param_14 == 0) goto LAB_02cd3cc0;
      uVar7 = (ulong)(uint)((param_3 * fVar11 + fVar13 * fVar3 + fVar17 * fVar12) - param_4 * fVar8)
      ;
    }
  }
  else {
    fVar3 = (fVar3 + fVar8 * fVar9) * 0.017453292;
    uVar7 = Quaternion_Internal_FromEulerRad_0x6000a4b
                      (CONCAT44(fVar3,(fVar12 + fVar6 * fVar9) * 0.017453292),fVar3,
                       (fVar17 + param_7 * fVar9) * _UNK_0116c26c,0);
    if (param_14 == 0) goto LAB_02cd3cc0;
  }
                    /* WARNING: Could not recover jumptable at 0x02cd3cbc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(param_14 + 0x18))
            (uVar7,*(undefined8 *)(param_14 + 0x40),*(undefined8 *)(param_14 + 0x28));
  return;
}

