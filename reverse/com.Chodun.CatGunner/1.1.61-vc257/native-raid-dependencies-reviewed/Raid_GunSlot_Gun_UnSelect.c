/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5b474, Ghidra VA 02c5b474. */

void Raid_GunSlot_Gun_UnSelect(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1db & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1db = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (**(long **)(lVar2 + 0xb8) != 0) {
    Raid_manager_Gun_UnSelect_0x6000914(**(long **)(lVar2 + 0xb8),*(undefined4 *)(param_1 + 0x20),0)
    ;
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

