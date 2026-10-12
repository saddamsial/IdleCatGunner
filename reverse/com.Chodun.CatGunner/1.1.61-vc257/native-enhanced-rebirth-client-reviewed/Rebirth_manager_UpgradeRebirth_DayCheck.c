/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b883a0, Ghidra VA 02c883a0. */

void Rebirth_manager_UpgradeRebirth_DayCheck(long param_1)

{
  undefined8 uVar1;
  ulong uVar2;
  
  uVar1 = Rebirth_manager_Today_str_return();
  uVar2 = String_op_Inequality_0x600025b(*(undefined8 *)(param_1 + 0x58),uVar1,0);
  if ((uVar2 & 1) != 0) {
    *(undefined8 *)(param_1 + 0x58) = uVar1;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x58),uVar1);
    *(undefined4 *)(param_1 + 0x4c) = 0;
    *(undefined4 *)(param_1 + 0x50) = 0;
  }
  return;
}

