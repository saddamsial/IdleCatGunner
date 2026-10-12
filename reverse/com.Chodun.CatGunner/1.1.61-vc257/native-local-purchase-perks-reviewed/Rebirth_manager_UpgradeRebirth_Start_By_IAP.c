/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b88594, Ghidra VA 02c88594. */

void Rebirth_manager_UpgradeRebirth_Start_By_IAP(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c38b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c38b = 1;
  }
  Rebirth_manager_UpgradeRebirth_DayCheck(param_1);
  *(int *)(param_1 + 0x50) = *(int *)(param_1 + 0x50) + 1;
  uVar2 = Rebirth_manager_Today_str_return_0x6000c91();
  *(undefined8 *)(param_1 + 0x58) = uVar2;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x58),uVar2);
  *(undefined2 *)(param_1 + 0x48) = 0x101;
  SaveSystem_Save_0x600048a(0);
  uVar2 = *(undefined8 *)(param_1 + 0x40);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar2,0,0);
  if ((uVar3 & 1) != 0) {
    if (*(long *)(param_1 + 0x40) != 0) {
      Rebirth_FX_Rebirth_Start_0x6000c9f();
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

