/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9da24, Ghidra VA 02b9da24. */

void Mission_manager_NewSeason_Start(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined1 *puVar3;
  undefined1 uVar4;
  
  puVar1 = PTR_DAT_05e5dd50;
  if ((bRam000000000625ba4c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625ba4c = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  puVar3 = *(undefined1 **)(lVar2 + 0xb8);
  if (puVar3[1] == '\0') {
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      puVar3 = *(undefined1 **)(*(long *)puVar1 + 0xb8);
    }
    uVar4 = *puVar3;
  }
  else {
    uVar4 = 2;
  }
  Mission_manager_Season_Reset(param_1,1,0);
  Mission_manager_UI_Reload_0x600034f(param_1);
  if (*(long *)(param_1 + 0xe0) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xe0),0,0);
    if (*(long *)(param_1 + 0xe8) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xe8),0,0);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      puVar1 = PTR_DAT_05e5d540;
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),7,0,0);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        AppsFlyerInit_SendLog_SeasonReset_0x600022f(uVar4);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

