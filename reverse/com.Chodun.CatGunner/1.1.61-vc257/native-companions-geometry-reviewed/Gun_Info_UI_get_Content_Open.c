/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6febc, Ghidra VA 02c6febc. */

undefined8 Gun_Info_UI_get_Content_Open(void)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e62648;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c2ba & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62648);
    bRam000000000625c2ba = 1;
  }
  uVar5 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar3 & 1) != 0) {
    lVar4 = **(long **)(*(long *)puVar2 + 0xb8);
    if (lVar4 != 0) {
      uVar5 = Safe_manager_get_Is_Unlocked_0x6000ab4(lVar4,0);
      return uVar5;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return 0;
}

