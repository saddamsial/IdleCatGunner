/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b57fb0, Ghidra VA 02c57fb0. */

int Raid_manager_get_Index_Count(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  ulong uVar5;
  int iVar6;
  long lVar7;
  undefined8 uVar8;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1a9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e62648);
    bRam000000000625c1a9 = 1;
  }
  puVar3 = PTR_DAT_05e62648;
  puVar1 = PTR_DAT_05e591c0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar4 = Raid_manager_get_Safe_Base();
  uVar8 = **(undefined8 **)(*(long *)puVar3 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
  if ((uVar5 & 1) == 0) {
    iVar6 = 0;
  }
  else {
    lVar7 = **(long **)(*(long *)puVar3 + 0xb8);
    if ((lVar7 == 0) || (lVar7 = *(long *)(lVar7 + 0x20), lVar7 == 0)) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    iVar6 = *(int *)(lVar7 + 0x18);
  }
  return iVar6 + iVar4;
}

