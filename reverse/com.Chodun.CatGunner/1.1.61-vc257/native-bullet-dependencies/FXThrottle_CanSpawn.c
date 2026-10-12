/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b66e60, Ghidra VA 02c66e60. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 FXThrottle_CanSpawn(float param_1,float param_2,float param_3,uint param_4)

{
  float *pfVar1;
  undefined *puVar2;
  int iVar3;
  long lVar4;
  long lVar5;
  long *plVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  puVar2 = PTR_DAT_05e639f0;
  if ((bRam000000000625c258 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e639f0);
    bRam000000000625c258 = 1;
  }
  iVar3 = Time_get_frameCount_0x6000eee(0);
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0(lVar4);
    lVar4 = *(long *)puVar2;
  }
  lVar5 = *(long *)(lVar4 + 0xb8);
  if (iVar3 != *(int *)(lVar5 + 8)) {
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0(lVar4);
      lVar4 = *(long *)puVar2;
      lVar5 = *(long *)(lVar4 + 0xb8);
    }
    *(int *)(lVar5 + 8) = iVar3;
    *(undefined4 *)(lVar5 + 0xc) = 0;
  }
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0(lVar4);
    lVar4 = *(long *)puVar2;
  }
  plVar6 = *(long **)(lVar4 + 0xb8);
  if (*(int *)((long)plVar6 + 0xc) < 3) {
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0(lVar4);
      plVar6 = *(long **)(*(long *)puVar2 + 0xb8);
    }
    lVar4 = *plVar6;
    if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar4 + 0x18) <= param_4) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    pfVar1 = (float *)(lVar4 + 0x20 + (long)(int)param_4 * 0x10);
    fVar7 = (float)Time_get_time_0x6000ee1(0);
    lVar4 = lVar4 + 0x20 + (long)(int)param_4 * 0x10;
    if ((_UNK_0116c094 <= fVar7 - *pfVar1) ||
       (fVar8 = param_1 - (float)*(undefined8 *)(lVar4 + 4),
       fVar9 = param_2 - (float)((ulong)*(undefined8 *)(lVar4 + 4) >> 0x20),
       fVar10 = param_3 - *(float *)(lVar4 + 0xc),
       2.25 <= fVar8 * fVar8 + fVar9 * fVar9 + fVar10 * fVar10)) {
      *(float *)(lVar4 + 4) = param_1;
      *(float *)(lVar4 + 8) = param_2;
      *(float *)(lVar4 + 0xc) = param_3;
      lVar4 = *(long *)puVar2;
      *pfVar1 = fVar7;
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)puVar2;
      }
      *(int *)(*(long *)(lVar4 + 0xb8) + 0xc) = *(int *)(*(long *)(lVar4 + 0xb8) + 0xc) + 1;
      return 1;
    }
  }
  return 0;
}

