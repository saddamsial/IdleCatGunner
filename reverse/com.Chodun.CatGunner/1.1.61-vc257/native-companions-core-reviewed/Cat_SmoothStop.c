/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3d9a0, Ghidra VA 02c3d9a0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_SmoothStop(long param_1)

{
  undefined *puVar1;
  undefined8 *puVar2;
  long lVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  undefined4 uVar7;
  float fVar8;
  undefined8 uVar9;
  float fVar10;
  undefined8 uVar11;
  
  if ((bRam000000000625c0a4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e61878);
    bRam000000000625c0a4 = 1;
  }
  uVar9 = *(undefined8 *)(param_1 + 0x230);
  fVar8 = *(float *)(param_1 + 0x238);
  if (cRam000000000625b26f == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b26f = '\x01';
  }
  puVar1 = PTR_DAT_05e58bf8;
  fVar10 = *(float *)(param_1 + 0x228);
  fVar4 = *(float *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
  uVar11 = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
  fVar5 = (float)Time_get_deltaTime_0x6000ee5(0);
  fVar10 = fVar10 * fVar5;
  fVar5 = 1.0;
  if (fVar10 <= 1.0) {
    fVar5 = fVar10;
  }
  fVar6 = 0.0;
  if (0.0 <= fVar10) {
    fVar6 = fVar5;
  }
  fVar5 = (float)uVar9;
  fVar10 = (float)((ulong)uVar9 >> 0x20);
  fVar5 = fVar5 + ((float)uVar11 - fVar5) * fVar6;
  fVar10 = fVar10 + ((float)((ulong)uVar11 >> 0x20) - fVar10) * fVar6;
  fVar8 = fVar8 + (fVar4 - fVar8) * fVar6;
  *(ulong *)(param_1 + 0x230) = CONCAT44(fVar10,fVar5);
  *(float *)(param_1 + 0x238) = fVar8;
  if (_UNK_0116c088 <= fVar8 * fVar8 + fVar5 * fVar5 + fVar10 * fVar10) {
    lVar3 = *(long *)(param_1 + 0x30);
    if (lVar3 != 0) {
      Rigidbody_get_linearVelocity_0x6000095(lVar3,0);
      Rigidbody_set_linearVelocity_0x6000096(CONCAT44(fVar10,fVar5),lVar3,0);
      lVar3 = *(long *)(param_1 + 0x38);
      if (lVar3 != 0) {
        uVar9 = 1;
        goto LAB_02c3db34;
      }
    }
  }
  else {
    if (cRam000000000625b26f == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
    lVar3 = *(long *)(param_1 + 0x30);
    puVar2 = *(undefined8 **)(*(long *)puVar1 + 0xb8);
    uVar7 = *(undefined4 *)(puVar2 + 1);
    *(undefined8 *)(param_1 + 0x230) = *puVar2;
    *(undefined4 *)(param_1 + 0x238) = uVar7;
    if (lVar3 != 0) {
      Rigidbody_get_linearVelocity_0x6000095(lVar3,0);
      Rigidbody_set_linearVelocity_0x6000096(0,lVar3,0);
      lVar3 = *(long *)(param_1 + 0x38);
      if (lVar3 != 0) {
        uVar9 = 0;
LAB_02c3db34:
        Animator_SetBool_0x6000033(lVar3,*(undefined8 *)PTR_DAT_05e61878,uVar9,0);
        if (cRam000000000625b26f == '\0') {
          func_0x029f5a50(PTR_DAT_05e58bf8);
          cRam000000000625b26f = '\x01';
        }
        puVar2 = *(undefined8 **)(*(long *)puVar1 + 0xb8);
        uVar9 = *puVar2;
        *(undefined4 *)(param_1 + 0x214) = *(undefined4 *)(puVar2 + 1);
        *(undefined8 *)(param_1 + 0x20c) = uVar9;
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

