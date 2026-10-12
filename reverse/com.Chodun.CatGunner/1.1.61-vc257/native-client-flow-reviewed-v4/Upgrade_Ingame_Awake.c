/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb0d4c, Ghidra VA 02cb0d4c. */

void Upgrade_Ingame_Awake(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  undefined4 uVar3;
  
  puVar1 = PTR_DAT_05e5a710;
  if ((bRam000000000625c546 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c546 = 1;
  }
  uVar3 = *(undefined4 *)(param_1 + 0x90);
  uVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  WaitForSeconds__ctor_0x6000e26(uVar3,uVar2,0);
  *(undefined8 *)(param_1 + 0xd8) = uVar2;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0xd8),uVar2);
  uVar3 = *(undefined4 *)(param_1 + 0x94);
  uVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  WaitForSeconds__ctor_0x6000e26(uVar3,uVar2,0);
  *(undefined8 *)(param_1 + 0xe0) = uVar2;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0xe0),uVar2);
  return;
}

