/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b40400, Ghidra VA 02c40400. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_AIReposition(undefined1 param_1 [16],undefined1 param_2 [16],float param_3,long param_4)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 *puVar4;
  undefined8 uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0a1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0a1 = 1;
  }
  uVar5 = *(undefined8 *)(param_4 + 0x1e0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar2 & 1) != 0) {
    return;
  }
  lVar3 = Component_get_transform_0x6000c82(param_4,0);
  if (lVar3 != 0) {
    fVar6 = (float)Transform_get_position_0x6000f4d(lVar3,0);
    puVar1 = PTR_DAT_05e58bf8;
    fVar6 = fVar6 - *(float *)(param_4 + 0x1e8);
    param_3 = param_3 - *(float *)(param_4 + 0x1f0);
    if (_UNK_0116c268 <= fVar6 * fVar6 + param_3 * param_3) {
      uVar2 = (ulong)(uint)fVar6;
    }
    else {
      if (cRam000000000625b95b == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b95b = '\x01';
      }
      lVar3 = *(long *)(*(long *)puVar1 + 0xb8);
      uVar2 = *(ulong *)(lVar3 + 0x3c);
      param_3 = *(float *)(lVar3 + 0x44);
    }
    if (cRam000000000625b52e == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625b52e = '\x01';
    }
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar7 = (float)uVar2;
    fVar8 = (float)(uVar2 >> 0x20);
    fVar6 = SQRT(param_3 * param_3 + fVar7 * fVar7 + fVar8 * fVar8);
    if (fVar6 <= _UNK_0116c240) {
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      puVar4 = *(undefined8 **)(*(long *)puVar1 + 0xb8);
      uVar5 = *puVar4;
      param_3 = *(float *)(puVar4 + 1);
    }
    else {
      param_3 = param_3 / fVar6;
      uVar5 = CONCAT44(fVar8 / fVar6,fVar7 / fVar6);
    }
    fVar6 = *(float *)(param_4 + 0x1b8) + 0.5;
    Cat_SmoothMoveTowardWithAvoidance_0x600074d
              ((float)*(undefined8 *)(param_4 + 0x1e8) + (float)uVar5 * fVar6,
               (float)((ulong)*(undefined8 *)(param_4 + 0x1e8) >> 0x20) +
               (float)((ulong)uVar5 >> 0x20) * fVar6,*(float *)(param_4 + 0x1f0) + param_3 * fVar6,
               param_4);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

