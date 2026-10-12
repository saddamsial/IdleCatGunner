/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5f84c, Ghidra VA 02c5f84c. */

void Fish_manager__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  
  puVar4 = PTR_DAT_05e63848;
  puVar3 = PTR_DAT_05e62680;
  puVar2 = PTR_DAT_05e62628;
  puVar1 = PTR_DAT_05e5d5e8;
  if ((bRam000000000625c211 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62680);
    func_0x029f5a50(PTR_DAT_05e62628);
    func_0x029f5a50(PTR_DAT_05e5d5e8);
    func_0x029f5a50(PTR_DAT_05e63848);
    bRam000000000625c211 = 1;
  }
  uVar5 = *(undefined8 *)puVar2;
  *(undefined1 *)(param_1 + 0x88) = 1;
  uVar5 = func_0x029f5cec(uVar5);
  func_0x044f7180(uVar5,*(undefined8 *)puVar3);
  *(undefined8 *)(param_1 + 0x90) = uVar5;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x90),uVar5);
  uVar5 = func_0x029f5b40(*(undefined8 *)puVar1,4);
  RuntimeHelpers_InitializeArray_0x6002429(uVar5,*(undefined8 *)puVar4,0);
  *(undefined8 *)(param_1 + 0x98) = uVar5;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x98),uVar5);
  *(undefined1 *)(param_1 + 0xb0) = 1;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

