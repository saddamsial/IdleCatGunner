/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba75b8, Ghidra VA 02ca75b8. */

void Skin_manager_UI_First_Reload(long param_1)

{
  long lVar1;
  ulong uVar2;
  
  lVar1 = *(long *)(param_1 + 0x60);
  if (lVar1 != 0) {
    uVar2 = 0;
    do {
      if ((int)*(uint *)(lVar1 + 0x18) <= (int)(uint)uVar2) {
        return;
      }
      if (*(uint *)(lVar1 + 0x18) <= (uint)uVar2) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar1 = *(long *)(lVar1 + uVar2 * 8 + 0x20);
      if (lVar1 == 0) break;
      Skin_Item_UI_First_Reload(lVar1,uVar2 & 0xffffffff);
      lVar1 = *(long *)(param_1 + 0x60);
      uVar2 = uVar2 + 1;
    } while (lVar1 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

