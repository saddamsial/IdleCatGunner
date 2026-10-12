/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b75a64, Ghidra VA 02c75a64. */

void Gun_Item_Collection_Touch(long param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c2e8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c2e8 = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    Gun_manager_Gun_Info_UI_Reload_0x6000a6c
              (**(long **)(*(long *)puVar1 + 0xb8),*(undefined4 *)(param_1 + 0x20),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

