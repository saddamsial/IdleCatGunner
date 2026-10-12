/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba2b94, Ghidra VA 02ca2b94. */

undefined8 StepUp_Banner_ShouldShow(undefined8 param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625c499 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c499 = 1;
  }
  uVar2 = StepUp_Is_AllPurchased(param_1);
  if (((uVar2 & 1) == 0) &&
     (uVar2 = StepUp_Is_Expired(param_1), puVar1 = PTR_DAT_05e5dd40, (uVar2 & 1) == 0)) {
    uVar3 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Equality_0x6000dec(uVar3,0,0);
    if ((uVar2 & 1) == 0) {
      if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
        uVar3 = Gun_manager_Has_Degree_Or_Higher_0x6000a82(**(long **)(*(long *)puVar1 + 0xb8),2,0);
        return uVar3;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return 0;
}

