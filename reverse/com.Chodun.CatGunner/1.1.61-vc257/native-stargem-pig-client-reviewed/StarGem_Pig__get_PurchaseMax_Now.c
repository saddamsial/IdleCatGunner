/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba1040, Ghidra VA 02ca1040. */

undefined4 StarGem_Pig__get_PurchaseMax_Now(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  puVar2 = PTR_DAT_05e5e3e0;
  if ((bRam000000000625c480 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c480 = 1;
  }
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
  if (lVar3 != 0) {
    iVar1 = *(int *)(param_1 + 0x20);
    if (2 < iVar1) {
      iVar1 = 3;
    }
    if (iVar1 < 2) {
      iVar1 = 1;
    }
    if (iVar1 - 1U < *(uint *)(lVar3 + 0x18)) {
      return *(undefined4 *)(lVar3 + (ulong)(iVar1 - 1U) * 4 + 0x20);
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

