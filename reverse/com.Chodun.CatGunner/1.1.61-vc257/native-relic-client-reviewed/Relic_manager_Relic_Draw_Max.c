/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b32aec, Ghidra VA 02c32aec. */

void Relic_manager_Relic_Draw_Max(undefined8 param_1,undefined4 param_2)

{
  undefined *puVar1;
  uint uVar2;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c043 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625c043 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Adventure_manager_CoreCount_return(param_2,0);
  if (0x13 < (int)uVar2) {
    Relic_manager_Relic_Draw(param_1,param_2,(ulong)uVar2 / 0x14);
    return;
  }
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

