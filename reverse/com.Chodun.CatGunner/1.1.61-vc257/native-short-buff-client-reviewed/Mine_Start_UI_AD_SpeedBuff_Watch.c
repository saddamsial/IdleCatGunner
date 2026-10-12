/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4be44, Ghidra VA 02c4be44. */

void Mine_Start_UI_AD_SpeedBuff_Watch(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  long lVar5;
  
  puVar3 = PTR_DAT_05e63458;
  puVar2 = PTR_DAT_05e5d910;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625c125 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e63458);
    func_0x029f5a50(PTR_DAT_05e63460);
    bRam000000000625c125 = 1;
  }
  lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar4,param_1,*(undefined8 *)puVar3,0);
  if (lVar5 != 0) {
    Admob_ShowRewardAd_0x6000164(lVar5,0xe,*(undefined8 *)PTR_DAT_05e63460,uVar4,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

