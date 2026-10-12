/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5fa88, Ghidra VA 02c5fa88. */

void Fish_DeletePopup_OnConfirm(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined *puVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c213 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c213 = 1;
  }
  uVar6 = *(undefined8 *)(param_1 + 0x40);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar4 & 1) != 0) {
    lVar5 = *(long *)(param_1 + 0x40);
    if (lVar5 != 0) {
      if (*(char *)(lVar5 + 0x48) == '\0') goto LAB_02c5fb80;
      uVar1 = *(undefined4 *)(lVar5 + 0x44);
      Fish_Item_Deactivate();
      puVar3 = PTR_DAT_05e5dd38;
      if (**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8) != 0) {
        Fish_manager_RemoveFish(**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8),uVar1);
        lVar5 = **(long **)(*(long *)puVar3 + 0xb8);
        if (lVar5 != 0) {
          uVar6 = *(undefined8 *)(lVar5 + 0xa0);
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
          if ((uVar4 & 1) != 0) {
            lVar5 = **(long **)(*(long *)puVar3 + 0xb8);
            if ((lVar5 == 0) || (*(long *)(lVar5 + 0xa0) == 0)) goto LAB_02c5fb94;
            Fish_Tank_SyncAfterDelete();
          }
          goto LAB_02c5fb80;
        }
      }
    }
LAB_02c5fb94:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
LAB_02c5fb80:
  Fish_DeletePopup_Close(param_1);
  return;
}

