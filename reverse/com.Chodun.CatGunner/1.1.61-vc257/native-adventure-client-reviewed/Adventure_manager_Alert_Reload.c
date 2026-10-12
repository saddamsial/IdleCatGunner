/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2c974, Ghidra VA 02c2c974. */

void Adventure_manager_Alert_Reload(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  ulong uVar3;
  undefined8 uVar4;
  long lVar5;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625bffa & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625bffa = 1;
  }
  uVar4 = *(undefined8 *)(param_1 + 0x50);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) != 0) {
    lVar5 = *(long *)(param_1 + 0x50);
    uVar2 = Adventure_manager_ShouldAlert_return(param_1);
    if (lVar5 != 0) {
      GameObject_SetActive_0x6000cfe(lVar5,uVar2 & 1,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

