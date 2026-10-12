/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb2310, Ghidra VA 02cb2310. */

void Upgrade_list_Reload(long param_1)

{
  long lVar1;
  long lVar2;
  
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 != 0) {
    lVar2 = 0;
    do {
      if ((int)*(uint *)(lVar1 + 0x18) <= (int)(uint)lVar2) {
        *(undefined1 *)(param_1 + 0x28) = 0;
        return;
      }
      if (*(uint *)(lVar1 + 0x18) <= (uint)lVar2) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(long *)(lVar1 + lVar2 * 8 + 0x20) == 0) break;
      Upgrade_Ingame_Reload();
      lVar1 = *(long *)(param_1 + 0x20);
      lVar2 = lVar2 + 1;
    } while (lVar1 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

