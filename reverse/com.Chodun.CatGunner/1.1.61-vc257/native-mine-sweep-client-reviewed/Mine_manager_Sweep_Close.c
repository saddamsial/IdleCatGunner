/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4a4ac, Ghidra VA 02c4a4ac. */

void Mine_manager_Sweep_Close(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625c117 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c117 = 1;
  }
  *(undefined1 *)(param_1 + 0x108) = 0;
  if (*(long *)(param_1 + 0xd8) == 0) {
LAB_02c4a5a8:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xd8),0,0);
  if (*(char *)(param_1 + 0x6a) == '\0') {
    if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Shop_manager_get_Is_RewardBonus_Auto_0x6000d61(0);
    puVar1 = PTR_DAT_05e5d910;
    if ((uVar2 & 1) == 0) {
      uVar3 = **(undefined8 **)(*(long *)PTR_DAT_05e5d910 + 0xb8);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
      if ((uVar2 & 1) != 0) {
        if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
          Admob_ShowPlacementInterstitial_0x60001a4(**(long **)(*(long *)puVar1 + 0xb8),1,0,0);
          return;
        }
        goto LAB_02c4a5a8;
      }
    }
  }
  return;
}

