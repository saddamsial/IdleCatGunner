/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b27260, Ghidra VA 02c27260. */

void Menu_Menu_Reload(long param_1,uint param_2)

{
  long lVar1;
  uint uVar2;
  long lVar3;
  
  lVar1 = *(long *)(param_1 + 0x28);
  *(uint *)(param_1 + 0x20) = param_2;
  if (lVar1 != 0) {
    lVar3 = 0;
    do {
      uVar2 = (uint)lVar3;
      if ((int)*(uint *)(lVar1 + 0x18) <= (int)uVar2) {
        lVar1 = *(long *)(param_1 + 0x30);
        if (lVar1 != 0) {
          lVar3 = 0;
          goto LAB_02c272cc;
        }
        break;
      }
      if (*(uint *)(lVar1 + 0x18) <= uVar2) goto LAB_02c27314;
      lVar1 = *(long *)(lVar1 + lVar3 * 8 + 0x20);
      if (lVar1 == 0) break;
      GameObject_SetActive_0x6000cfe(lVar1,param_2 == uVar2,0);
      lVar1 = *(long *)(param_1 + 0x28);
      lVar3 = lVar3 + 1;
    } while (lVar1 != 0);
  }
  goto LAB_02c27304;
  while( true ) {
    Menu_Btn_Reload(lVar1,param_2 == uVar2);
    lVar1 = *(long *)(param_1 + 0x30);
    lVar3 = lVar3 + 1;
    if (lVar1 == 0) break;
LAB_02c272cc:
    uVar2 = (uint)lVar3;
    if ((int)*(uint *)(lVar1 + 0x18) <= (int)uVar2) {
      return;
    }
    if (*(uint *)(lVar1 + 0x18) <= uVar2) {
LAB_02c27314:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar1 = *(long *)(lVar1 + lVar3 * 8 + 0x20);
    if (lVar1 == 0) break;
  }
LAB_02c27304:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

