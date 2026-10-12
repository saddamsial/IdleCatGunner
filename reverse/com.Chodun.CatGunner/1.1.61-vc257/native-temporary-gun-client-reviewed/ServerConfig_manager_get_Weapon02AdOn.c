/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b19370, Ghidra VA 02c19370. */

bool ServerConfig_manager_get_Weapon02AdOn(void)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d6a8;
  if ((bRam000000000625bf17 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d6a8);
    bRam000000000625bf17 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  lVar2 = ServerConfig_manager_get_Config_0x60004b2();
  if (lVar2 != 0) {
    return *(int *)(lVar2 + 0x54) == 1;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

