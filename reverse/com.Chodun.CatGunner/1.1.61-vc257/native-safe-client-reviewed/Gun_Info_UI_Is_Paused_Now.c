/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6ff64, Ghidra VA 02c6ff64. */

ulong Gun_Info_UI_Is_Paused_Now(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  
  puVar2 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c2bb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c2bb = 1;
  }
  iVar1 = *(int *)(param_1 + 0x88);
  lVar3 = **(long **)(*(long *)puVar2 + 0xb8);
  if (iVar1 == 1) {
    if (lVar3 != 0) {
      uVar4 = Gun_manager_Is_Owned_Paused_0x6000a4c(lVar3,*(undefined4 *)(param_1 + 0x90),0);
      return uVar4;
    }
  }
  else {
    if (iVar1 != 2) {
      return (ulong)(iVar1 == 3);
    }
    if (lVar3 != 0) {
      uVar4 = Gun_manager_Is_Selected_Paused_0x6000a4d(lVar3,*(undefined4 *)(param_1 + 0x90),0);
      return uVar4;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

