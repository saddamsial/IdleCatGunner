/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5e13c, Ghidra VA 02c5e13c. */

void Fish_manager_RefreshCatStats(void)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e5d5b0;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c1fe & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c1fe = 1;
  }
  uVar5 = *(undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar3 & 1) != 0) {
    return;
  }
  lVar4 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
  if (lVar4 != 0) {
    Cat_manager_Balance_Reload_0x6000779(lVar4,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

