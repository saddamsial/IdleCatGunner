/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bade00, Ghidra VA 02cade00. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long Tree_manager__ctor(long param_1)

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
  func_0x029f59f4((undefined8 *)(param_1 + 0x48),uVar5);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x03dadfa0(uVar5,*(undefined8 *)puVar4);
  *(undefined8 *)(param_1 + 0x80) = uVar5;
  func_0x029f59f4((undefined8 *)(param_1 + 0x80),uVar5);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x03dadfa0(uVar5,*(undefined8 *)puVar4);
  *(undefined8 *)(param_1 + 0x88) = uVar5;
  func_0x029f59f4((undefined8 *)(param_1 + 0x88),uVar5);
  uVar5 = _UNK_0116fb78;
  *(undefined4 *)(param_1 + 0x9c) = 0x43340000;
  *(undefined4 *)(param_1 + 0xd8) = 0;
  *(undefined8 *)(param_1 + 0xd0) = uVar5;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000626c4ef & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0,0);
    bRam000000000626c4ef = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  return param_1;
}

