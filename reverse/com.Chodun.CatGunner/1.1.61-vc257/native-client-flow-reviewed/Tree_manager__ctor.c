/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bade00, Ghidra VA 02cade00. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Tree_manager__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  
  puVar4 = PTR_DAT_05e64ac8;
  puVar3 = PTR_DAT_05e64ac0;
  puVar2 = PTR_DAT_05e5bde8;
  puVar1 = PTR_DAT_05e5bde0;
  if ((bRam000000000625c528 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64ac8);
    func_0x029f5a50(PTR_DAT_05e64ac0);
    func_0x029f5a50(PTR_DAT_05e5bde8);
    func_0x029f5a50(PTR_DAT_05e5bde0);
    bRam000000000625c528 = 1;
  }
  uVar5 = *(undefined8 *)puVar1;
  *(undefined4 *)(param_1 + 0x34) = 0xffffffff;
  uVar5 = func_0x029f5cec(uVar5);
  func_0x042bb9a4(uVar5,*(undefined8 *)puVar2);
  *(undefined8 *)(param_1 + 0x48) = uVar5;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x48),uVar5);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x03dadfa0(uVar5,*(undefined8 *)puVar4);
  *(undefined8 *)(param_1 + 0x80) = uVar5;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x80),uVar5);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x03dadfa0(uVar5,*(undefined8 *)puVar4);
  *(undefined8 *)(param_1 + 0x88) = uVar5;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x88),uVar5);
  uVar5 = _UNK_0116fb78;
  *(undefined4 *)(param_1 + 0x9c) = 0x43340000;
  *(undefined4 *)(param_1 + 0xd8) = 0;
  *(undefined8 *)(param_1 + 0xd0) = uVar5;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

