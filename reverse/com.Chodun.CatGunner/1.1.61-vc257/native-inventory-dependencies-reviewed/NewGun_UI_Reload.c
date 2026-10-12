/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7a184, Ghidra VA 02c7a184. */

void NewGun_UI_Reload(long param_1,uint param_2)

{
  undefined *puVar1;
  long lVar2;
  uint uVar3;
  undefined8 uVar4;
  long *plVar5;
  long lVar6;
  
  if ((bRam000000000625c30f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c30f = 1;
  }
  lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
  puVar1 = PTR_DAT_05e5dd40;
  if (lVar2 != 0) {
    GameObject_SetActive_0x6000cfe(lVar2,0,0);
    lVar2 = **(long **)(*(long *)puVar1 + 0xb8);
    if ((lVar2 != 0) && (*(long *)(lVar2 + 0x20) != 0)) {
      if (*(uint *)(*(long *)(lVar2 + 0x20) + 0x18) <= param_2) {
LAB_02c7a32c:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar2 = *(long *)(lVar2 + 0x48);
      if (lVar2 != 0) {
        if (*(uint *)(lVar2 + 0x18) <= param_2) goto LAB_02c7a32c;
        if (*(long *)(param_1 + 0x20) != 0) {
          lVar6 = *(long *)(param_1 + 0x28);
          uVar4 = *(undefined8 *)(lVar2 + (long)(int)param_2 * 8 + 0x20);
          Image_set_sprite_0x600013f(*(long *)(param_1 + 0x20),uVar4,0);
          if (lVar6 != 0) {
            Image_set_sprite_0x600013f(lVar6,uVar4,0);
            plVar5 = *(long **)(param_1 + 0x30);
            Gun_manager_Degree_Color_return_0x6000a7b((int)param_2 / 5,0);
            if (plVar5 != (long *)0x0) {
              (**(code **)(*plVar5 + 0x2a8))(plVar5,*(undefined8 *)(*plVar5 + 0x2b0));
              lVar2 = *(long *)(param_1 + 0x38);
              if (lVar2 != 0) {
                lVar6 = 0;
                do {
                  uVar3 = (uint)lVar6;
                  if ((int)*(uint *)(lVar2 + 0x18) <= (int)uVar3) {
                    plVar5 = *(long **)(param_1 + 0x40);
                    uVar4 = Gun_manager_Gun_Type_str_return_0x6000a7d(param_2,0);
                    if (plVar5 != (long *)0x0) {
                      (**(code **)(*plVar5 + 0x558))(plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
                      lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
                      if (lVar2 != 0) {
                        GameObject_SetActive_0x6000cfe(lVar2,1,0);
                        return;
                      }
                    }
                    break;
                  }
                  if (*(uint *)(lVar2 + 0x18) <= uVar3) goto LAB_02c7a32c;
                  lVar2 = *(long *)(lVar2 + lVar6 * 8 + 0x20);
                  if (lVar2 == 0) break;
                  GameObject_SetActive_0x6000cfe(lVar2,(int)param_2 / 5 == uVar3,0);
                  lVar2 = *(long *)(param_1 + 0x38);
                  lVar6 = lVar6 + 1;
                } while (lVar2 != 0);
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

