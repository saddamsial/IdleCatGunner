/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1d984, Ghidra VA 02c1d984. */

void AutoUpgrade_UI_AutoUpgrade_AD_Click(undefined8 param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625bf36 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625bf36 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Upgrade_manager_get_AutoUpgradeAd_Able(0);
  puVar1 = PTR_DAT_05e5d910;
  if ((uVar2 & 1) == 0) {
    AutoUpgrade_UI_Reload(param_1);
    return;
  }
  uVar4 = **(undefined8 **)(*(long *)PTR_DAT_05e5d910 + 0xb8);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar4,0,0);
  if ((uVar2 & 1) != 0) {
    return;
  }
  lVar3 = **(long **)(*(long *)puVar1 + 0xb8);
  if (lVar3 != 0) {
    uVar2 = Admob_get_IsRewardAdBusy_0x6000161(lVar3,0);
    if ((uVar2 & 1) != 0) {
      return;
    }
    lVar3 = **(long **)(*(long *)puVar1 + 0xb8);
    if (lVar3 != 0) {
      Admob_ShowRewardAd_0x6000163(lVar3,0xc,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

