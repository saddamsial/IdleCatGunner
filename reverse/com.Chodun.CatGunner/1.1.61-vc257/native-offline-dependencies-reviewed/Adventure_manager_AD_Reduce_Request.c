/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2f22c, Ghidra VA 02c2f22c. */

void Adventure_manager_AD_Reduce_Request(long param_1,undefined4 param_2,undefined4 param_3)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  
  if ((bRam000000000625c01a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    bRam000000000625c01a = 1;
  }
  uVar2 = Adventure_manager_AD_Reduce_Able_return(param_1,param_2,param_3);
  puVar1 = PTR_DAT_05e5d910;
  if ((uVar2 & 1) == 0) {
    return;
  }
  if (**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8) != 0) {
    uVar2 = Admob_get_IsRewardAdBusy_0x6000161(**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8),0);
    if ((uVar2 & 1) != 0) {
      return;
    }
    lVar3 = *(long *)puVar1;
    *(undefined4 *)(param_1 + 0x88) = param_3;
    *(undefined4 *)(param_1 + 0x8c) = param_2;
    if (**(long **)(lVar3 + 0xb8) != 0) {
      Admob_ShowRewardAd_0x6000163(**(long **)(lVar3 + 0xb8),0xd,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

