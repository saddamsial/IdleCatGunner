/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b821e8, Ghidra VA 02c821e8. */

void Pet_Item_Demo_Reload(long param_1,uint param_2)

{
  undefined *puVar1;
  long lVar2;
  long *plVar3;
  long lVar4;
  uint uVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar1 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c35d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c35d = 1;
  }
  lVar2 = *(long *)puVar1;
  lVar4 = *(long *)(param_1 + 0x20);
  lVar6 = *(long *)(param_1 + 0x28);
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x28);
  if ((lVar2 != 0) && (lVar2 = *(long *)(lVar2 + 0x58), lVar2 != 0)) {
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
LAB_02c82344:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (lVar4 != 0) {
      uVar7 = *(undefined8 *)(lVar2 + (long)(int)param_2 * 8 + 0x20);
      Image_set_sprite_0x600013f(lVar4,uVar7,0);
      if (lVar6 != 0) {
        Image_set_sprite_0x600013f(lVar6,uVar7,0);
        plVar3 = *(long **)(param_1 + 0x28);
        if (plVar3 != (long *)0x0) {
          (**(code **)(*plVar3 + 0x408))(plVar3,*(undefined8 *)(*plVar3 + 0x410));
          plVar3 = *(long **)(param_1 + 0x20);
          if (plVar3 != (long *)0x0) {
            (**(code **)(*plVar3 + 0x408))(plVar3,*(undefined8 *)(*plVar3 + 0x410));
            plVar3 = *(long **)(param_1 + 0x30);
            Pet_manager_Degree_Color_return_0x6000bee(param_2,0);
            if (plVar3 != (long *)0x0) {
              (**(code **)(*plVar3 + 0x2a8))(plVar3,*(undefined8 *)(*plVar3 + 0x2b0));
              lVar4 = *(long *)(param_1 + 0x38);
              if (lVar4 != 0) {
                lVar6 = 0;
                do {
                  uVar5 = (uint)lVar6;
                  if ((int)*(uint *)(lVar4 + 0x18) <= (int)uVar5) {
                    return;
                  }
                  if (*(uint *)(lVar4 + 0x18) <= uVar5) goto LAB_02c82344;
                  lVar4 = *(long *)(lVar4 + lVar6 * 8 + 0x20);
                  if (lVar4 == 0) break;
                  GameObject_SetActive_0x6000cfe(lVar4,param_2 == uVar5,0);
                  lVar4 = *(long *)(param_1 + 0x38);
                  lVar6 = lVar6 + 1;
                } while (lVar4 != 0);
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

