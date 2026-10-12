/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b500f0, Ghidra VA 02c500f0. */

undefined8 _Enter_Cor_d__35_MoveNext(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long lVar4;
  undefined4 uStack_24;
  
  if ((bRam000000000625c151 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e5d368);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c151 = 1;
  }
  iVar1 = *(int *)(param_1 + 0x10);
  lVar4 = *(long *)(param_1 + 0x20);
  if (iVar1 == 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if ((lVar4 != 0) && (*(long *)(lVar4 + 0x30) != 0)) {
      GameObject_SetActive_0x6000cfe(*(long *)(lVar4 + 0x30),1,0);
      return 0;
    }
  }
  else if (iVar1 == 1) {
    lVar3 = **(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar3 != 0) {
      UI_manager_Loading_Off_0x60005fe(lVar3,0);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if ((**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) &&
         (Sound_manager_BGM_Change_SpeedRun_0x600054b
                    (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0), lVar4 != 0)) {
        Monster_manager_Game_Start(lVar4);
        uStack_24 = 0x3f800000;
        uVar2 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x78),&uStack_24);
        *(undefined8 *)(param_1 + 0x18) = uVar2;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
        *(undefined4 *)(param_1 + 0x10) = 2;
        return 1;
      }
    }
  }
  else {
    if (iVar1 != 0) {
      return 0;
    }
    lVar4 = **(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar4 != 0) {
      UI_manager_Loading_On_0x60005fd(lVar4,0);
      if (**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8) != 0) {
        Admob_ShowBannerAd_0x6000191(**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8),0);
        uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(0x40000000,uVar2,0);
        *(undefined8 *)(param_1 + 0x18) = uVar2;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

