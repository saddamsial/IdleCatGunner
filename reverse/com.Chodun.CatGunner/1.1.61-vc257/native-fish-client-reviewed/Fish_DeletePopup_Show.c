/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5f93c, Ghidra VA 02c5f93c. */

void Fish_DeletePopup_Show(long param_1,long param_2)

{
  undefined *puVar1;
  long *plVar2;
  long lVar3;
  uint uVar4;
  long lVar5;
  
  puVar1 = PTR_DAT_05e5dd38;
  if ((bRam000000000625c212 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    bRam000000000625c212 = 1;
  }
  *(long *)(param_1 + 0x40) = param_2;
  Managed_WriteBarrier((long *)(param_1 + 0x40),param_2);
  if (((**(long **)(*(long *)puVar1 + 0xb8) != 0) && (param_2 != 0)) &&
     (lVar3 = *(long *)(**(long **)(*(long *)puVar1 + 0xb8) + 0x28), lVar3 != 0)) {
    if (*(uint *)(lVar3 + 0x18) <= *(uint *)(param_2 + 0x40)) {
LAB_02c5fa84:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(long *)(param_1 + 0x20) != 0) {
      Image_set_sprite_0x600013f
                (*(long *)(param_1 + 0x20),
                 *(undefined8 *)(lVar3 + (long)(int)*(uint *)(param_2 + 0x40) * 8 + 0x20),0);
      lVar3 = *(long *)(param_1 + 0x30);
      if (lVar3 != 0) {
        lVar5 = 0;
        do {
          uVar4 = (uint)lVar5;
          if ((int)*(uint *)(lVar3 + 0x18) <= (int)uVar4) {
            lVar3 = *(long *)(param_1 + 0x38);
            if (lVar3 != 0) {
              if (*(uint *)(lVar3 + 0x18) <= *(uint *)(param_2 + 0x40)) goto LAB_02c5fa84;
              plVar2 = *(long **)(param_1 + 0x28);
              if (plVar2 != (long *)0x0) {
                lVar3 = lVar3 + (long)(int)*(uint *)(param_2 + 0x40) * 0x10;
                (**(code **)(*plVar2 + 0x2a8))
                          (*(undefined4 *)(lVar3 + 0x20),*(undefined4 *)(lVar3 + 0x24),
                           *(undefined4 *)(lVar3 + 0x28),*(undefined4 *)(lVar3 + 0x2c),plVar2,
                           *(undefined8 *)(*plVar2 + 0x2b0));
                lVar3 = Component_get_gameObject_0x6000c83(param_1,0);
                if (lVar3 != 0) {
                  GameObject_SetActive_0x6000cfe(lVar3,1,0);
                  return;
                }
              }
            }
            break;
          }
          if (*(uint *)(lVar3 + 0x18) <= uVar4) goto LAB_02c5fa84;
          lVar3 = *(long *)(lVar3 + lVar5 * 8 + 0x20);
          if (lVar3 == 0) break;
          GameObject_SetActive_0x6000cfe(lVar3,uVar4 == *(uint *)(param_2 + 0x40),0);
          lVar3 = *(long *)(param_1 + 0x30);
          lVar5 = lVar5 + 1;
        } while (lVar3 != 0);
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

