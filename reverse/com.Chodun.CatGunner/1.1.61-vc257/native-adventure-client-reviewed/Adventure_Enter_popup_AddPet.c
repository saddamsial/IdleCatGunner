/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b33f20, Ghidra VA 02c33f20. */

void Adventure_Enter_popup_AddPet(long param_1,ulong param_2)

{
  uint uVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  long lVar6;
  
  if ((bRam000000000625c04f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62fb8);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c04f = 1;
  }
  uVar3 = Adventure_Enter_popup_HasEmptyOpenSlot(param_1);
  if (((uVar3 & 1) != 0) &&
     (uVar3 = Adventure_Enter_popup_IsAlreadySelected(param_1,param_2), puVar2 = PTR_DAT_05e5d4d0,
     (uVar3 & 1) == 0)) {
    lVar4 = *(long *)PTR_DAT_05e5d4d0;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x28);
    if ((int)param_2 == 0) {
      if (lVar4 == 0) goto LAB_02c340a0;
      uVar3 = Pet_manager_CanDispatchOwned(lVar4,param_2 >> 0x20,0);
    }
    else {
      if (lVar4 == 0) goto LAB_02c340a0;
      uVar3 = Pet_manager_CanDispatchSelected(lVar4,param_2 >> 0x20,0);
    }
    if ((uVar3 & 1) != 0) {
      lVar4 = *(long *)(param_1 + 200);
      if (lVar4 != 0) {
        lVar5 = *(long *)(lVar4 + 0x10);
        lVar6 = *(long *)PTR_DAT_05e62fb8;
        *(int *)(lVar4 + 0x1c) = *(int *)(lVar4 + 0x1c) + 1;
        if (lVar5 != 0) {
          uVar1 = *(uint *)(lVar4 + 0x18);
          if (uVar1 < *(uint *)(lVar5 + 0x18)) {
            *(uint *)(lVar4 + 0x18) = uVar1 + 1;
            *(ulong *)(lVar5 + (long)(int)uVar1 * 8 + 0x20) = param_2;
          }
          else {
            func_0x045c1598(lVar4,param_2,
                            *(undefined8 *)(*(long *)(*(long *)(lVar6 + 0x20) + 0xc0) + 0x70));
          }
          Adventure_Enter_popup_Reload(param_1);
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
            Sound_manager_PlaySfx_0x600054a
                      (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),9,0,0);
            return;
          }
        }
      }
LAB_02c340a0:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

