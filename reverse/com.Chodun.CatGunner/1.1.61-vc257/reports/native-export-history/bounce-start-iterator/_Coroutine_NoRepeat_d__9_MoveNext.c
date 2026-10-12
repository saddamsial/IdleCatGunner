/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9b7d0, Ghidra VA 02b9b7d0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _Coroutine_NoRepeat_d__9_MoveNext(long param_1)

{
  int iVar1;
  char cVar2;
  undefined8 uVar3;
  undefined4 uVar4;
  long lVar5;
  long lVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  iVar1 = *(int *)(param_1 + 0x10);
  lVar6 = *(long *)(param_1 + 0x20);
  if (iVar1 - 1U < 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar6 == 0) goto LAB_02b9ba74;
    fVar8 = *(float *)(lVar6 + 0x20);
    if (*(float *)(lVar6 + 0x30) < fVar8) goto LAB_02b9b934;
    fVar7 = (float)Time_get_deltaTime_0x6000ee5(0);
    cVar2 = cRam000000000625b279;
    fVar9 = *(float *)(lVar6 + 0x24);
    fVar10 = (fVar8 + fVar7) / *(float *)(lVar6 + 0x30);
    *(float *)(lVar6 + 0x20) = fVar8 + fVar7;
    fVar8 = 1.0;
    if (fVar10 <= 1.0) {
      fVar8 = fVar10;
    }
    fVar7 = 0.0;
    if (0.0 <= fVar10) {
      fVar7 = fVar8;
    }
    if (cVar2 == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b279 = '\x01';
    }
    lVar5 = *(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
    fVar8 = *(float *)(lVar5 + 0xc);
    fVar10 = *(float *)(lVar5 + 0x10);
    fVar11 = *(float *)(lVar5 + 0x14);
    lVar6 = Component_get_transform_0x6000c82(lVar6,0);
    if (lVar6 == 0) goto LAB_02b9ba74;
    fVar7 = fVar9 * fVar7 + 0.0;
    Transform_set_localScale_0x6000f5e(fVar7 * fVar8,fVar7 * fVar10,fVar7 * fVar11,lVar6,0);
    *(undefined8 *)(param_1 + 0x18) = 0;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
    uVar4 = 2;
LAB_02b9ba54:
    *(undefined4 *)(param_1 + 0x10) = uVar4;
    uVar3 = 1;
  }
  else {
    if (iVar1 == 3) {
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if (lVar6 == 0) goto LAB_02b9ba74;
      fVar8 = *(float *)(lVar6 + 0x20);
LAB_02b9b934:
      if (fVar8 <= *(float *)(lVar6 + 0x28)) {
        fVar7 = (float)Time_get_deltaTime_0x6000ee5(0);
        cVar2 = cRam000000000625b279;
        fVar10 = *(float *)(lVar6 + 0x24);
        *(float *)(lVar6 + 0x20) = fVar8 + fVar7;
        fVar7 = ((fVar8 + fVar7) - *(float *)(lVar6 + 0x30)) / *(float *)(lVar6 + 0x34);
        fVar8 = 1.0;
        if (fVar7 <= 1.0) {
          fVar8 = fVar7;
        }
        fVar9 = 0.0;
        if (0.0 <= fVar7) {
          fVar9 = fVar8;
        }
        if (cVar2 == '\0') {
          func_0x029f5a50(PTR_DAT_05e58bf8);
          cRam000000000625b279 = '\x01';
        }
        lVar5 = *(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
        fVar8 = *(float *)(lVar5 + 0xc);
        fVar7 = *(float *)(lVar5 + 0x10);
        fVar11 = *(float *)(lVar5 + 0x14);
        lVar6 = Component_get_transform_0x6000c82(lVar6,0);
        if (lVar6 == 0) goto LAB_02b9ba74;
        fVar10 = fVar10 + (1.0 - fVar10) * fVar9;
        Transform_set_localScale_0x6000f5e(fVar10 * fVar8,fVar10 * fVar7,fVar10 * fVar11,lVar6,0);
        *(undefined8 *)(param_1 + 0x18) = 0;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
        uVar4 = 3;
        goto LAB_02b9ba54;
      }
      lVar6 = Component_get_transform_0x6000c82(lVar6,0);
      if (cRam000000000625b279 == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b279 = '\x01';
      }
      if (lVar6 == 0) {
LAB_02b9ba74:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      lVar5 = *(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      Transform_set_localScale_0x6000f5e
                (*(undefined4 *)(lVar5 + 0xc),*(undefined4 *)(lVar5 + 0x10),
                 *(undefined4 *)(lVar5 + 0x14),lVar6,0);
    }
    else if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if ((lVar6 != 0) && (lVar6 = Component_get_transform_0x6000c82(lVar6,0), lVar6 != 0)) {
        Transform_set_localScale_0x6000f5e(_UNK_0116c268,_UNK_0116c268,_UNK_0116c268,lVar6,0);
        *(undefined8 *)(param_1 + 0x18) = 0;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
      goto LAB_02b9ba74;
    }
    uVar3 = 0;
  }
  return uVar3;
}

