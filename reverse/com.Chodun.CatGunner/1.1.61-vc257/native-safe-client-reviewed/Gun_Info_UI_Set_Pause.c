/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b701c8, Ghidra VA 02c701c8. */

void Gun_Info_UI_Set_Pause(long param_1,uint param_2)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c2bf & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c2bf = 1;
  }
  lVar2 = **(long **)(*(long *)puVar1 + 0xb8);
  if (*(int *)(param_1 + 0x88) == 2) {
    if (lVar2 != 0) {
      Gun_manager_Set_Selected_Pause_0x6000a57(lVar2,*(undefined4 *)(param_1 + 0x90),param_2 & 1,0);
      return;
    }
  }
  else {
    if (*(int *)(param_1 + 0x88) != 1) {
      return;
    }
    if (lVar2 != 0) {
      Gun_manager_Set_Owned_Pause_0x6000a56(lVar2,*(undefined4 *)(param_1 + 0x90),param_2 & 1,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

