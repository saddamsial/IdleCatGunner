/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4fa08, Ghidra VA 02c4fa08. */

void Monster_manager_Sweep_Close(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625c149 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c149 = 1;
  }
  *(undefined1 *)(param_1 + 0x138) = 0;
  if (*(long *)(param_1 + 0x108) == 0) {
LAB_02c4fb10:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x108),0,0);
  if (*(char *)(param_1 + 0xba) == '\0') {
    if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Shop_manager_get_Is_RewardBonus_Auto_0x6000d61(0);
    puVar1 = PTR_DAT_05e5d910;
    if (((uVar2 & 1) == 0) && (0 < *(int *)(param_1 + 0x13c))) {
      uVar3 = **(undefined8 **)(*(long *)PTR_DAT_05e5d910 + 0xb8);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
      if ((uVar2 & 1) != 0) {
        if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
          Admob_ShowPlacementInterstitial_0x60001a4(**(long **)(*(long *)puVar1 + 0xb8),4,0,0);
          return;
        }
        goto LAB_02c4fb10;
      }
    }
  }
  return;
}

