/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b327d8, Ghidra VA 02c327d8. */

void Relic_manager_UI_Reload(long param_1)

{
  long lVar1;
  uint uVar2;
  long lVar3;
  long lVar4;
  
  lVar1 = *(long *)(param_1 + 0x28);
  if (lVar1 != 0) {
    lVar4 = 4;
    do {
      uVar2 = (int)lVar4 - 4;
      if ((int)*(uint *)(lVar1 + 0x18) <= (int)uVar2) {
        if (*(long *)(param_1 + 0x30) != 0) {
          Relic_DownPanel_UI_Reload(*(long *)(param_1 + 0x30),0);
          return;
        }
        break;
      }
      if (*(uint *)(lVar1 + 0x18) <= uVar2) {
LAB_02c32854:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar3 = *(long *)(param_1 + 0x20);
      if (lVar3 == 0) break;
      if (*(uint *)(lVar3 + 0x18) <= uVar2) goto LAB_02c32854;
      lVar1 = *(long *)(lVar1 + lVar4 * 8);
      if (lVar1 == 0) break;
      Relic_Item_Reload(lVar1,*(undefined8 *)(lVar3 + lVar4 * 8));
      lVar1 = *(long *)(param_1 + 0x28);
      lVar4 = lVar4 + 1;
    } while (lVar1 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

