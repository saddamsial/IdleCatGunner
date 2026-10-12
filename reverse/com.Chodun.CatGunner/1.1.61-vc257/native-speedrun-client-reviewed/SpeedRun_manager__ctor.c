/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baa710, Ghidra VA 02caa710. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void SpeedRun_manager__ctor(long param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  
  puVar4 = PTR_DAT_05e64a30;
  puVar3 = PTR_DAT_05e64a28;
  if ((bRam000000000625c504 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64a30);
    func_0x029f5a50(PTR_DAT_05e64a28);
    bRam000000000625c504 = 1;
  }
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x0452c340(uVar5,*(undefined8 *)puVar4);
  *(undefined8 *)(param_1 + 0x28) = uVar5;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x28),uVar5);
  *(undefined4 *)(param_1 + 0x78) = 0;
  uVar2 = _UNK_0116fb78;
  *(undefined4 *)(param_1 + 100) = 0x42700000;
  uVar1 = _UNK_0116c2b8;
  uVar5 = _UNK_0116c2b0;
  *(undefined4 *)(param_1 + 0x88) = 0x1e;
  *(undefined8 *)(param_1 + 0x70) = uVar2;
  *(undefined8 *)(param_1 + 0xe8) = uVar1;
  *(undefined8 *)(param_1 + 0xe0) = uVar5;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

