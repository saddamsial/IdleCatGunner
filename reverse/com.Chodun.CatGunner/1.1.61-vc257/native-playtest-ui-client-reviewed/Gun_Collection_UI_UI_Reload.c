/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6f754, Ghidra VA 02c6f754. */

void Gun_Collection_UI_UI_Reload(long param_1)

{
  long lVar1;
  ulong uVar2;
  
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 != 0) {
    uVar2 = 0;
    do {
      if ((int)*(uint *)(lVar1 + 0x18) <= (int)(uint)uVar2) {
        lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
        if (lVar1 != 0) {
          GameObject_SetActive_0x6000cfe(lVar1,1,0);
          return;
        }
        break;
      }
      if (*(uint *)(lVar1 + 0x18) <= (uint)uVar2) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar1 = *(long *)(lVar1 + uVar2 * 8 + 0x20);
      if (lVar1 == 0) break;
      Gun_Item_Collection_Reload(lVar1,uVar2 & 0xffffffff);
      lVar1 = *(long *)(param_1 + 0x20);
      uVar2 = uVar2 + 1;
    } while (lVar1 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

