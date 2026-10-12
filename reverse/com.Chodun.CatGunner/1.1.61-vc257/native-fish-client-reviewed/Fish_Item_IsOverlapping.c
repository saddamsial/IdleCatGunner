/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b62720, Ghidra VA 02c62720. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

bool Fish_Item_IsOverlapping(undefined1 param_1 [16],float param_2,long param_3,long param_4)

{
  undefined *puVar1;
  bool bVar2;
  ulong uVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c22d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c22d = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(param_4,0,0);
  if ((uVar3 & 1) == 0) {
    fVar4 = (float)Fish_Item_GetPosition(param_3);
    if (param_4 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    fVar9 = param_2;
    fVar5 = (float)Fish_Item_GetPosition(param_4);
    fVar10 = fVar9;
    fVar6 = (float)Fish_Item_GetScaledSize(param_3);
    fVar8 = fVar10;
    fVar7 = (float)Fish_Item_GetScaledSize(param_4);
    bVar2 = false;
    fVar6 = fVar6 * 0.5 * *(float *)(param_3 + 0x88) * (float)*(undefined8 *)(param_3 + 0x8c) +
            fVar7 * 0.5 * *(float *)(param_4 + 0x88) * (float)*(undefined8 *)(param_4 + 0x8c);
    fVar8 = fVar10 * 0.5 * *(float *)(param_3 + 0x88) *
            (float)((ulong)*(undefined8 *)(param_3 + 0x8c) >> 0x20) +
            fVar8 * 0.5 * *(float *)(param_4 + 0x88) *
            (float)((ulong)*(undefined8 *)(param_4 + 0x8c) >> 0x20);
    if ((_UNK_0116c200 < fVar6) && (_UNK_0116c200 < fVar8)) {
      fVar6 = (fVar4 - fVar5) / fVar6;
      fVar8 = (param_2 - fVar9) / fVar8;
      bVar2 = fVar6 * fVar6 + fVar8 * fVar8 <= 1.0;
    }
  }
  else {
    bVar2 = false;
  }
  return bVar2;
}

