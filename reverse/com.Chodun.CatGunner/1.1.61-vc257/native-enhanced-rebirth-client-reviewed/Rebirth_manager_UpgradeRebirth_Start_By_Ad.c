/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b88510, Ghidra VA 02c88510. */

void Rebirth_manager_UpgradeRebirth_Start_By_Ad(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c38a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c38a = 1;
  }
  uVar3 = *(undefined8 *)(param_1 + 0x40);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0x40) != 0) {
      Rebirth_FX_Start_Internal();
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

