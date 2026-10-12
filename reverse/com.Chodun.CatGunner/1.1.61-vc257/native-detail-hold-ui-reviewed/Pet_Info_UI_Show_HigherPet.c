/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7e658, Ghidra VA 02c7e658. */

void Pet_Info_UI_Show_HigherPet(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  puVar2 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c33e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c33e = 1;
  }
  lVar3 = *(long *)puVar2;
  iVar1 = *(int *)(param_1 + 0x60);
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x28);
  if ((lVar3 != 0) && (lVar3 = *(long *)(lVar3 + 0x20), lVar3 != 0)) {
    if (iVar1 < *(int *)(lVar3 + 0x18) + -1) {
      Pet_Info_UI_Reload(param_1,*(int *)(param_1 + 0x60) + 1);
      return;
    }
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

