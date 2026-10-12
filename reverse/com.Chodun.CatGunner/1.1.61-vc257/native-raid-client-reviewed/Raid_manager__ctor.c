/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b59e3c, Ghidra VA 02c59e3c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Raid_manager__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  
  puVar2 = PTR_DAT_05e63738;
  puVar1 = PTR_DAT_05e5d790;
  if ((bRam000000000625c1cf & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e63738);
    bRam000000000625c1cf = 1;
  }
  uVar3 = *(undefined8 *)puVar1;
  *(undefined4 *)(param_1 + 0x78) = 0xffffffff;
  uVar3 = func_0x029f5b40(uVar3,3);
  RuntimeHelpers_InitializeArray_0x6002429(uVar3,*(undefined8 *)puVar2,0);
  *(undefined8 *)(param_1 + 0x88) = uVar3;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x88),uVar3);
  uVar3 = func_0x029f5b40(*(undefined8 *)puVar1,3);
  RuntimeHelpers_InitializeArray_0x6002429(uVar3,*(undefined8 *)puVar2,0);
  *(undefined8 *)(param_1 + 0x90) = uVar3;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x90),uVar3);
  uVar3 = _UNK_0116fb78;
  uVar4 = *(undefined8 *)puVar1;
  *(undefined4 *)(param_1 + 0xe0) = 0;
  *(undefined1 *)(param_1 + 0xe8) = 1;
  *(undefined8 *)(param_1 + 0xd8) = uVar3;
  uVar3 = func_0x029f5b40(uVar4,7);
  *(undefined8 *)(param_1 + 0xf8) = uVar3;
  Managed_WriteBarrier();
  *(undefined4 *)(param_1 + 0x100) = 0xffffffff;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

