/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9f300, Ghidra VA 02b9f300. */

void DailyCheck_Open_Btn(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625b9f8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b9f8 = 1;
  }
  DailyCheck_UI_reload(param_1);
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 200);
  if (lVar2 != 0) {
    Gamemanager_Time_Hacker_ForceCheck_0x6000061(lVar2,0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

