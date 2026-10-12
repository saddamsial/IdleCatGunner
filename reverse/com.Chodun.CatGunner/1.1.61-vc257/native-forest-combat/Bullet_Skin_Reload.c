/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b652f8, Ghidra VA 02c652f8. */

void Bullet_Skin_Reload(long param_1,uint param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x60);
  *(uint *)(param_1 + 0x20) = param_2;
  if (lVar1 != 0) {
    lVar1 = Component_get_gameObject_0x6000c83(lVar1,0);
    if (lVar1 != 0) {
      GameObject_SetActive_0x6000cfe(lVar1,0,0);
      lVar1 = *(long *)(param_1 + 0x78);
      if (lVar1 != 0) {
        if (*(uint *)(lVar1 + 0x18) <= param_2) {
LAB_02c653a8:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        *(undefined8 *)(param_1 + 0x60) = *(undefined8 *)(lVar1 + (long)(int)param_2 * 8 + 0x20);
        func_0x029f59f4((long *)(param_1 + 0x60));
        lVar1 = *(long *)(param_1 + 0x78);
        if (lVar1 != 0) {
          if (*(uint *)(lVar1 + 0x18) <= param_2) goto LAB_02c653a8;
          lVar1 = *(long *)(lVar1 + (long)(int)param_2 * 8 + 0x20);
          if ((lVar1 != 0) && (lVar1 = Component_get_gameObject_0x6000c83(lVar1,0), lVar1 != 0)) {
            GameObject_SetActive_0x6000cfe(lVar1,1,0);
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

