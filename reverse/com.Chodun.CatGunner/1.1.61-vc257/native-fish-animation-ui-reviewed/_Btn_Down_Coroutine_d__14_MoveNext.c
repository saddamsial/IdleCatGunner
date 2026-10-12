/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9b4cc, Ghidra VA 02b9b4cc. */

bool _Btn_Down_Coroutine_d__14_MoveNext(long param_1)

{
  int iVar1;
  long lVar2;
  long lVar3;
  float fVar4;
  undefined8 uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  undefined8 uVar9;
  float fVar10;
  
  iVar1 = *(int *)(param_1 + 0x10);
  if (iVar1 == 0) {
    *(undefined8 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
    *(undefined4 *)(param_1 + 0x10) = 1;
    goto LAB_02b9b63c;
  }
  if (iVar1 != 1) goto LAB_02b9b63c;
  lVar3 = *(long *)(param_1 + 0x20);
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  if (lVar3 == 0) goto LAB_02b9b65c;
  if (*(char *)(lVar3 + 0x30) == '\0') {
    fVar8 = *(float *)(lVar3 + 0x24);
    fVar4 = (float)Time_get_deltaTime_0x6000ee5(0);
    fVar8 = fVar8 + fVar4;
    fVar4 = *(float *)(lVar3 + 0x2c);
    *(float *)(lVar3 + 0x24) = fVar8;
    if (fVar4 < fVar8) {
      lVar2 = Component_get_transform_0x6000c82(lVar3,0);
      if (lVar2 != 0) {
        Transform_set_localScale_0x6000f5e
                  (*(undefined4 *)(lVar3 + 0x34),*(undefined4 *)(lVar3 + 0x38),
                   *(undefined4 *)(lVar3 + 0x3c),lVar2,0);
        goto LAB_02b9b63c;
      }
      goto LAB_02b9b65c;
    }
    uVar5 = *(undefined8 *)(lVar3 + 0x40);
    uVar9 = *(undefined8 *)(lVar3 + 0x34);
    fVar7 = *(float *)(lVar3 + 0x48);
    fVar10 = *(float *)(lVar3 + 0x3c);
LAB_02b9b5d4:
    lVar2 = Component_get_transform_0x6000c82(lVar3,0);
    if (lVar2 == 0) {
LAB_02b9b65c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    fVar8 = fVar8 / fVar4;
    fVar4 = 1.0;
    if (fVar8 <= 1.0) {
      fVar4 = fVar8;
    }
    fVar6 = 0.0;
    if (0.0 <= fVar8) {
      fVar6 = fVar4;
    }
    fVar4 = (float)((ulong)uVar5 >> 0x20);
    fVar7 = fVar7 + fVar6 * (fVar10 - fVar7);
    uVar5 = CONCAT44(fVar4 + ((float)((ulong)uVar9 >> 0x20) - fVar4) * fVar6,
                     (float)uVar5 + ((float)uVar9 - (float)uVar5) * fVar6);
  }
  else {
    fVar8 = *(float *)(lVar3 + 0x20);
    fVar4 = (float)Time_get_deltaTime_0x6000ee5(0);
    fVar8 = fVar8 + fVar4;
    fVar4 = *(float *)(lVar3 + 0x2c);
    *(float *)(lVar3 + 0x20) = fVar8;
    if (fVar8 <= fVar4) {
      uVar5 = *(undefined8 *)(lVar3 + 0x34);
      uVar9 = *(undefined8 *)(lVar3 + 0x40);
      fVar7 = *(float *)(lVar3 + 0x3c);
      fVar10 = *(float *)(lVar3 + 0x48);
      goto LAB_02b9b5d4;
    }
    lVar2 = Component_get_transform_0x6000c82(lVar3,0);
    if (lVar2 == 0) goto LAB_02b9b65c;
    fVar7 = *(float *)(lVar3 + 0x48);
    uVar5 = *(undefined8 *)(lVar3 + 0x40);
  }
  Transform_set_localScale_0x6000f5e(uVar5,(int)((ulong)uVar5 >> 0x20),fVar7,lVar2,0);
  uVar5 = BounceBtn_Btn_Down_Coroutine(lVar3);
  MonoBehaviour_StartCoroutine_0x6000d43(lVar3,uVar5,0);
LAB_02b9b63c:
  return iVar1 == 0;
}

