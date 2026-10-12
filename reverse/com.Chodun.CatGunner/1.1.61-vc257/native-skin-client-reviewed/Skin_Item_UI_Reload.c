/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7eac, Ghidra VA 02ca7eac. */

void Skin_Item_UI_Reload(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5d4e0;
  if ((bRam000000000625c4ec & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    bRam000000000625c4ec = 1;
  }
  lVar3 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
  if (lVar3 != 0) {
    uVar2 = Skin_manager_is_Unlock(lVar3,*(undefined4 *)(param_1 + 0x20));
    lVar3 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
    if (lVar3 != 0) {
      if (*(long *)(param_1 + 0x38) != 0) {
        GameObject_SetActive_0x6000cfe
                  (*(long *)(param_1 + 0x38),*(int *)(lVar3 + 0x30) == *(int *)(param_1 + 0x20),0);
        if (*(long *)(param_1 + 0x40) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),(uVar2 ^ 0xffffffff) & 1,0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

