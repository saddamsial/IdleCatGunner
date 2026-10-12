/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7aaa4, Ghidra VA 02c7aaa4. */

void Pet_Dummy_Reload(long param_1,uint param_2)

{
  long lVar1;
  uint uVar2;
  long lVar3;
  
  lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar1 != 0) {
    GameObject_SetActive_0x6000cfe(lVar1,1,0);
    lVar1 = *(long *)(param_1 + 0x20);
    if (lVar1 != 0) {
      lVar3 = 0;
      do {
        uVar2 = (uint)lVar3;
        if ((int)*(uint *)(lVar1 + 0x18) <= (int)uVar2) {
          return;
        }
        if (*(uint *)(lVar1 + 0x18) <= uVar2) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar1 = *(long *)(lVar1 + lVar3 * 8 + 0x20);
        if (lVar1 == 0) break;
        GameObject_SetActive_0x6000cfe(lVar1,param_2 == uVar2,0);
        lVar1 = *(long *)(param_1 + 0x20);
        lVar3 = lVar3 + 1;
      } while (lVar1 != 0);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

