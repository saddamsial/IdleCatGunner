/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b47950, Ghidra VA 02c47950. */

bool _Enter_Cor_d__26_MoveNext(long param_1)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  long lVar4;
  
  if ((bRam000000000625c0ef & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e5d368);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c0ef = 1;
  }
  iVar1 = *(int *)(param_1 + 0x10);
  if (iVar1 == 0) {
    lVar2 = **(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar2 != 0) {
      UI_manager_Loading_On_0x60005fd(lVar2,0);
      if (**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8) != 0) {
        Admob_ShowBannerAd_0x6000191(**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8),0);
        uVar3 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(0x40000000,uVar3,0);
        *(undefined8 *)(param_1 + 0x18) = uVar3;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar3);
        *(undefined4 *)(param_1 + 0x10) = 1;
        goto LAB_02c47aa0;
      }
    }
  }
  else {
    if (iVar1 != 1) {
LAB_02c47aa0:
      return iVar1 == 0;
    }
    lVar4 = *(long *)(param_1 + 0x20);
    lVar2 = **(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar2 != 0) {
      UI_manager_Loading_Off_0x60005fe(lVar2,0);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if ((**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) &&
         (Sound_manager_BGM_Change_SpeedRun_0x600054b
                    (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0), lVar4 != 0)) {
        Boss_manager_Game_Start(lVar4);
        goto LAB_02c47aa0;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

