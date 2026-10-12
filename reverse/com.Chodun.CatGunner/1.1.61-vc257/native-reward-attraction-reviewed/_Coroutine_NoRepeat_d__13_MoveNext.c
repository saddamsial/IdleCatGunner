/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9b0f4, Ghidra VA 02b9b0f4. */

bool _Coroutine_NoRepeat_d__13_MoveNext(long param_1)

{
  int iVar1;
  long lVar2;
  long lVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  undefined8 uVar7;
  float fVar8;
  undefined8 uVar9;
  float fVar10;
  
  if ((bRam000000000625b9b2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e368);
    bRam000000000625b9b2 = 1;
  }
  iVar1 = *(int *)(param_1 + 0x10);
  if (iVar1 == 0) {
    *(undefined8 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
    *(undefined4 *)(param_1 + 0x10) = 1;
  }
  else if (iVar1 == 1) {
    lVar3 = *(long *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar3 == 0) goto LAB_02b9b2a0;
    fVar6 = *(float *)(lVar3 + 0x20);
    fVar4 = (float)Time_get_deltaTime_0x6000ee5(0);
    fVar6 = fVar6 + fVar4;
    *(float *)(lVar3 + 0x20) = fVar6;
    if (*(char *)(lVar3 + 0x34) == '\0') goto LAB_02b9b280;
    if (fVar6 <= *(float *)(lVar3 + 0x2c) * 0.5) {
      fVar8 = *(float *)(lVar3 + 0x40);
      uVar7 = *(undefined8 *)(lVar3 + 0x38);
      uVar9 = *(undefined8 *)(lVar3 + 0x44);
      fVar10 = *(float *)(lVar3 + 0x4c);
      fVar4 = *(float *)(lVar3 + 0x30);
      lVar2 = Component_get_transform_0x6000c82(lVar3,0);
      if (lVar2 == 0) goto LAB_02b9b2a0;
      fVar4 = fVar6 / fVar4;
    }
    else {
      if (*(float *)(lVar3 + 0x2c) < fVar6) {
        *(undefined4 *)(lVar3 + 0x20) = 0;
        *(undefined1 *)(lVar3 + 0x34) = 0;
        lVar2 = Component_get_transform_0x6000c82(lVar3,0);
        if (lVar2 != 0) {
          Transform_set_localScale_0x6000f5e
                    (*(undefined4 *)(lVar3 + 0x38),*(undefined4 *)(lVar3 + 0x3c),
                     *(undefined4 *)(lVar3 + 0x40),lVar2,0);
          goto LAB_02b9b280;
        }
LAB_02b9b2a0:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      fVar8 = *(float *)(lVar3 + 0x4c);
      uVar7 = *(undefined8 *)(lVar3 + 0x44);
      uVar9 = *(undefined8 *)(lVar3 + 0x38);
      fVar10 = *(float *)(lVar3 + 0x40);
      fVar4 = *(float *)(lVar3 + 0x30);
      lVar2 = Component_get_transform_0x6000c82(lVar3,0);
      if (lVar2 == 0) goto LAB_02b9b2a0;
      fVar4 = (fVar6 - fVar4) / fVar4;
    }
    fVar6 = 1.0;
    if (fVar4 <= 1.0) {
      fVar6 = fVar4;
    }
    fVar5 = 0.0;
    if (0.0 <= fVar4) {
      fVar5 = fVar6;
    }
    fVar4 = (float)((ulong)uVar7 >> 0x20);
    Transform_set_localScale_0x6000f5e
              ((float)uVar7 + ((float)uVar9 - (float)uVar7) * fVar5,
               fVar4 + ((float)((ulong)uVar9 >> 0x20) - fVar4) * fVar5,
               fVar8 + (fVar10 - fVar8) * fVar5,lVar2,0);
    MonoBehaviour_StartCoroutine_0x6000d41(lVar3,*(undefined8 *)PTR_DAT_05e5e368,0);
  }
LAB_02b9b280:
  return iVar1 == 0;
}

