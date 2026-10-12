/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b88650, Ghidra VA 02c88650. */

void Rebirth_FX_Rebirth_Start(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e5dc20;
  if ((bRam000000000625c38f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e63eb8);
    bRam000000000625c38f = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x10);
  if (lVar2 != 0) {
    if (*(int *)(lVar2 + 0x28) < 2) {
      if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = LocalizationManager_GetTranslation_0x60011b3
                        (*(undefined8 *)PTR_DAT_05e63eb8,1,0,1,0,0,0,1,0);
      UI_manager_Alert_0x6000602(uVar3,0);
      return;
    }
    lVar2 = **(long **)(*(long *)PTR_DAT_05e5dd60 + 0xb8);
    if (lVar2 != 0) {
      if ((*(char *)(lVar2 + 0x48) == '\0') || (*(char *)(lVar2 + 0x49) != '\0')) {
        Rebirth_FX_Start_Internal(param_1);
        return;
      }
      if (**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8) != 0) {
        Admob_ShowRewardAd_0x6000163(**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8),8,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

