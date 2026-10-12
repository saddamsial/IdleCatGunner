/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61164, Ghidra VA 02c61164. */

void Fish_Item_Reload(long param_1,uint param_2,undefined4 param_3)

{
  undefined *puVar1;
  long *plVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5dd38;
  if ((bRam000000000625c21e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    bRam000000000625c21e = 1;
  }
  Fish_Item_EnsureInit(param_1);
  lVar3 = *(long *)puVar1;
  *(uint *)(param_1 + 0x40) = param_2;
  *(undefined4 *)(param_1 + 0x44) = param_3;
  *(undefined2 *)(param_1 + 0x48) = 1;
  lVar3 = **(long **)(lVar3 + 0xb8);
  if ((lVar3 != 0) && (lVar3 = *(long *)(lVar3 + 0x30), lVar3 != 0)) {
    if (*(uint *)(lVar3 + 0x18) <= param_2) {
LAB_02c612b0:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(long *)(param_1 + 0x20) != 0) {
      Image_set_sprite_0x600013f
                (*(long *)(param_1 + 0x20),*(undefined8 *)(lVar3 + (long)(int)param_2 * 8 + 0x20),0)
      ;
      plVar2 = *(long **)(param_1 + 0x20);
      if (plVar2 != (long *)0x0) {
        (**(code **)(*plVar2 + 0x408))(plVar2,*(undefined8 *)(*plVar2 + 0x410));
        lVar3 = **(long **)(*(long *)puVar1 + 0xb8);
        if ((lVar3 != 0) && (lVar3 = *(long *)(lVar3 + 0x38), lVar3 != 0)) {
          if (*(uint *)(lVar3 + 0x18) <= *(uint *)(param_1 + 0x40)) goto LAB_02c612b0;
          if (*(long *)(param_1 + 0x28) != 0) {
            Image_set_sprite_0x600013f
                      (*(long *)(param_1 + 0x28),
                       *(undefined8 *)(lVar3 + (long)(int)*(uint *)(param_1 + 0x40) * 8 + 0x20),0);
            Fish_Item_SyncSizeToSkin(param_1);
            Fish_Item_InitSwimming(param_1);
            Fish_Item_Fusion_Alert_Off(param_1);
            Fish_Item_EndAutoMerge(param_1);
            *(undefined2 *)(param_1 + 0x84) = 0;
            *(undefined1 *)(param_1 + 0xb0) = 0;
            lVar3 = Component_get_gameObject_0x6000c83(param_1,0);
            if (lVar3 != 0) {
              GameObject_SetActive_0x6000cfe(lVar3,1,0);
              Fish_Item_UpdateSortOrder(param_1);
              Fish_Item_ResetScale(param_1);
              return;
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

