/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b70370, Ghidra VA 02c70370. */

void Gun_Info_UI_onClick_PauseLock(void)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  puVar1 = PTR_DAT_05e63af8;
  if ((bRam000000000625c2c1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63af8);
    bRam000000000625c2c1 = 1;
  }
  uVar2 = Gun_manager_Loc_0x6000a7a(*(undefined8 *)puVar1,0);
  UI_manager_Alert_0x6000602(uVar2,0);
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

