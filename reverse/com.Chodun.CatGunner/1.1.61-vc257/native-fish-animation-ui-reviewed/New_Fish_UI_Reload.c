/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5f1b0, Ghidra VA 02c5f1b0. */

void New_Fish_UI_Reload(long param_1,uint param_2)

{
  undefined *puVar1;
  long lVar2;
  uint uVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e5dd38;
  if ((bRam000000000625c244 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    bRam000000000625c244 = 1;
  }
  if ((**(long **)(*(long *)puVar1 + 0xb8) != 0) &&
     (lVar2 = *(long *)(**(long **)(*(long *)puVar1 + 0xb8) + 0x28), lVar2 != 0)) {
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
LAB_02c5f2a0:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(long *)(param_1 + 0x20) != 0) {
      Image_set_sprite_0x600013f
                (*(long *)(param_1 + 0x20),*(undefined8 *)(lVar2 + (long)(int)param_2 * 8 + 0x20),0)
      ;
      lVar2 = *(long *)(param_1 + 0x28);
      if (lVar2 != 0) {
        lVar4 = 0;
        do {
          uVar3 = (uint)lVar4;
          if ((int)*(uint *)(lVar2 + 0x18) <= (int)uVar3) {
            lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
            if (lVar2 != 0) {
              GameObject_SetActive_0x6000cfe(lVar2,1,0);
              return;
            }
            break;
          }
          if (*(uint *)(lVar2 + 0x18) <= uVar3) goto LAB_02c5f2a0;
          lVar2 = *(long *)(lVar2 + lVar4 * 8 + 0x20);
          if (lVar2 == 0) break;
          GameObject_SetActive_0x6000cfe(lVar2,param_2 == uVar3,0);
          lVar2 = *(long *)(param_1 + 0x28);
          lVar4 = lVar4 + 1;
        } while (lVar2 != 0);
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

