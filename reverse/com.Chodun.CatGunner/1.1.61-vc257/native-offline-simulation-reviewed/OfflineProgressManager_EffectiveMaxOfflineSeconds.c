/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b05d94, Ghidra VA 02c05d94. */

float OfflineProgressManager_EffectiveMaxOfflineSeconds(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  float fVar6;
  
  puVar2 = PTR_DAT_05e5d4d8;
  if ((bRam000000000625be76 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    bRam000000000625be76 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  uVar5 = *(undefined8 *)(*(long *)(lVar3 + 0xb8) + 0x70);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  fVar6 = 0.0;
  if ((uVar4 & 1) != 0) {
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    fVar6 = (float)*(int *)(*(long *)(lVar3 + 0xb8) + 100) * 60.0;
  }
  return fVar6 + *(float *)(param_1 + 0x20);
}

