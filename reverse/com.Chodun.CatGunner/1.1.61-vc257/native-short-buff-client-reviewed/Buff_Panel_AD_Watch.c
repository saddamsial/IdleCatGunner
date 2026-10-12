/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b389f0, Ghidra VA 02c389f0. */

void Buff_Panel_AD_Watch(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long lVar4;
  
  puVar2 = PTR_DAT_05e5d910;
  puVar1 = PTR_DAT_05e5d4c0;
  if ((bRam000000000625c084 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    bRam000000000625c084 = 1;
  }
  uVar3 = *(undefined4 *)(param_1 + 0x20);
  lVar4 = **(long **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Buff_manager_ToAdType(uVar3);
  if (lVar4 != 0) {
    Admob_ShowRewardAd_0x6000163(lVar4,uVar3,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

