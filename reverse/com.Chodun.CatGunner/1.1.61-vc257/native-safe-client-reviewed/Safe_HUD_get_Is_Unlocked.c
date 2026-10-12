/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6b3f4, Ghidra VA 02c6b3f4. */

undefined8 Safe_HUD_get_Is_Unlocked(void)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  puVar2 = PTR_DAT_05e62648;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c28a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62648);
    bRam000000000625c28a = 1;
  }
  uVar4 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) != 0) {
    if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
      uVar4 = Safe_manager_get_Is_Unlocked();
      return uVar4;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return 0;
}

