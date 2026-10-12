/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b894e4, Ghidra VA 02c894e4. */

void Rebirth_Upgrade_Item_Upgrade(long param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5dd60;
  if ((bRam000000000625c398 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd60);
    bRam000000000625c398 = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    Rebirth_manager_Rebirth_Upgrade_0x6000c8c
              (**(long **)(*(long *)puVar1 + 0xb8),*(undefined4 *)(param_1 + 0x20));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

