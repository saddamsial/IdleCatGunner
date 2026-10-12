/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b57f04, Ghidra VA 02c57f04. */

int Raid_manager_get_Safe_Base(void)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  
  puVar2 = PTR_DAT_05e5dd40;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c1a8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c1a8 = 1;
  }
  uVar6 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar4 & 1) == 0) {
    iVar3 = 0x13;
  }
  else {
    lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
    if ((lVar5 == 0) || (lVar5 = *(long *)(lVar5 + 0x40), lVar5 == 0)) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    iVar3 = *(int *)(lVar5 + 0x18) + 3;
  }
  return iVar3;
}

