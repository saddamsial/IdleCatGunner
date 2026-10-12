/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7b10, Ghidra VA 02ca7b10. */

void Skin_manager_UI_Reload(long param_1)

{
  long lVar1;
  long lVar2;
  
  lVar1 = *(long *)(param_1 + 0x60);
  if (lVar1 != 0) {
    lVar2 = 0;
    do {
      if ((int)*(uint *)(lVar1 + 0x18) <= (int)(uint)lVar2) {
        if (*(long *)(param_1 + 0x68) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),1,0);
          return;
        }
        break;
      }
      if (*(uint *)(lVar1 + 0x18) <= (uint)lVar2) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(long *)(lVar1 + lVar2 * 8 + 0x20) == 0) break;
      Skin_Item_UI_Reload();
      lVar1 = *(long *)(param_1 + 0x60);
      lVar2 = lVar2 + 1;
    } while (lVar1 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

