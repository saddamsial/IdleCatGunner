/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb154c, Ghidra VA 02cb154c. */

void Upgrade_Ingame_Touch(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c54b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c54b = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (**(long **)(lVar2 + 0xb8) != 0) {
    Upgrade_manager_Upgrade_0x6000f8d(**(long **)(lVar2 + 0xb8),*(undefined4 *)(param_1 + 0x20));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

