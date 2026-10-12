/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3f3d4, Ghidra VA 02c3f3d4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_AutoSmoothStop(long param_1)

{
  undefined *puVar1;
  long lVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  undefined4 uVar6;
  float fVar7;
  float fVar8;
  undefined8 uVar9;
  undefined8 uVar10;
  
  uVar9 = *(undefined8 *)(param_1 + 0x188);
  fVar8 = *(float *)(param_1 + 400);
  if (cRam000000000625b26f == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b26f = '\x01';
  }
  puVar1 = PTR_DAT_05e58bf8;
  fVar3 = *(float *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
  uVar10 = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
  fVar4 = (float)Time_get_deltaTime_0x6000ee5(0);
  fVar4 = fVar4 * 8.0;
  fVar7 = 1.0;
  if (fVar4 <= 1.0) {
    fVar7 = fVar4;
  }
  fVar5 = 0.0;
  if (0.0 <= fVar4) {
    fVar5 = fVar7;
  }
  fVar7 = (float)uVar9;
  fVar4 = (float)((ulong)uVar9 >> 0x20);
  fVar7 = fVar7 + ((float)uVar10 - fVar7) * fVar5;
  fVar4 = fVar4 + ((float)((ulong)uVar10 >> 0x20) - fVar4) * fVar5;
  fVar8 = fVar8 + (fVar3 - fVar8) * fVar5;
  *(ulong *)(param_1 + 0x188) = CONCAT44(fVar4,fVar7);
  *(float *)(param_1 + 400) = fVar8;
  if (_UNK_0116c088 <= fVar8 * fVar8 + fVar7 * fVar7 + fVar4 * fVar4) {
    lVar2 = *(long *)(param_1 + 0x30);
    uVar9 = CONCAT44(fVar4,fVar7);
    if (lVar2 == 0) goto LAB_02c3f52c;
    Rigidbody_get_linearVelocity_0x6000095(lVar2,0);
  }
  else {
    if (cRam000000000625b26f == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
    lVar2 = *(long *)(param_1 + 0x30);
    uVar6 = *(undefined4 *)(*(undefined8 **)(*(long *)puVar1 + 0xb8) + 1);
    *(undefined8 *)(param_1 + 0x188) = **(undefined8 **)(*(long *)puVar1 + 0xb8);
    *(undefined4 *)(param_1 + 400) = uVar6;
    if (lVar2 == 0) {
LAB_02c3f52c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Rigidbody_get_linearVelocity_0x6000095(lVar2,0);
    uVar9 = 0;
  }
  Rigidbody_set_linearVelocity_0x6000096(uVar9,lVar2,0);
  return;
}

