/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b913e4, Ghidra VA 02c913e4. */

undefined8 PlusPack_ApplyReward(long param_1,uint param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar2 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c3f2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c3f2 = 1;
  }
  puVar1 = PTR_DAT_05e5d3c0;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Time_manager_get_UtcNow_0x6000578(0);
  if (lVar3 != 0) {
    if (*(uint *)(lVar3 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined8 *)(lVar3 + (long)(int)param_2 * 8 + 0x20) = uVar4;
    SaveSystem_Save_0x600048a(0);
    if (*(long *)(param_1 + 0x20) != 0) {
      PlusPack_Popup_UI_Reload_0x6000d4a();
      lVar3 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x10);
      if (lVar3 != 0) {
        (**(code **)(lVar3 + 0x18))(*(undefined8 *)(lVar3 + 0x40),*(undefined8 *)(lVar3 + 0x28));
      }
      return 1;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

