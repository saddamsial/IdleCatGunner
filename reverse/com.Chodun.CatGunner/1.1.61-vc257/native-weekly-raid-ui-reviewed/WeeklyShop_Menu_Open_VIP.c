/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7398, Ghidra VA 02ca7398. */

void WeeklyShop_Menu_Open_VIP(undefined8 param_1)

{
  ulong uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined4 uStack_14;
  
  uVar1 = WeeklyShop_Is_VIP_Unlocked();
  if ((uVar1 & 1) == 0) {
    uVar2 = Alarm_get_StageUnlock_0x60012f7(0);
    uStack_14 = 0x14;
    uVar3 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_14);
    uVar2 = String_Format_0x600029c(uVar2,uVar3,0);
    UI_manager_Alert_0x6000602(uVar2,0);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
      return;
    }
  }
  else {
    WeeklyShop_Menu_Open(param_1,1);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),1,0,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

