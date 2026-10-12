/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf208, Ghidra VA 02caf208. */

void Upgrade_manager_Lv_return(uint param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c559 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c559 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if ((**(long **)(lVar2 + 0xb8) != 0) &&
     (lVar2 = *(long *)(**(long **)(lVar2 + 0xb8) + 0x20), lVar2 != 0)) {
    if (*(uint *)(lVar2 + 0x18) <= param_1) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar2 = *(long *)(lVar2 + (long)(int)param_1 * 8 + 0x20);
    if (lVar2 != 0) {
      ObscuredInt_op_Implicit_0x6000412
                (*(undefined8 *)(lVar2 + 0x18),*(undefined8 *)(lVar2 + 0x20),0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

