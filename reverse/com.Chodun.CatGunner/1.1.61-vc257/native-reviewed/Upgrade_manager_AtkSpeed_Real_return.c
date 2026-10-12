/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb2ef8, Ghidra VA 02cb2ef8. */

undefined4 Upgrade_manager_AtkSpeed_Real_return(void)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c55f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c55f = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  if (**(long **)(lVar3 + 0xb8) != 0) {
    lVar3 = *(long *)(**(long **)(lVar3 + 0xb8) + 0x48);
    uVar2 = Upgrade_manager_Lv_return_0x6000f92(1);
    if (lVar3 != 0) {
      if (uVar2 < *(uint *)(lVar3 + 0x18)) {
        return *(undefined4 *)(lVar3 + (long)(int)uVar2 * 4 + 0x20);
      }
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

