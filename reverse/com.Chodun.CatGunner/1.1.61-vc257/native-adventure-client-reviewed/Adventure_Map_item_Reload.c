/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b35290, Ghidra VA 02c35290. */

void Adventure_Map_item_Reload(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c060 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625c060 = 1;
  }
  lVar3 = *(long *)puVar1;
  lVar4 = *(long *)(param_1 + 0x30);
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
  if ((lVar3 != 0) &&
     (uVar2 = Adventure_manager_HasAnyFinish_return(lVar3,*(undefined4 *)(param_1 + 0x20),0),
     lVar4 != 0)) {
    GameObject_SetActive_0x6000cfe(lVar4,uVar2 & 1,0);
    lVar3 = *(long *)(param_1 + 0x38);
    uVar2 = Adventure_manager_is_OpenDay_return_0x6000646(*(undefined4 *)(param_1 + 0x20),0);
    if (lVar3 != 0) {
      GameObject_SetActive_0x6000cfe(lVar3,(uVar2 ^ 0xffffffff) & 1,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

