/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b45270, Ghidra VA 02c45270. */

void Boss_GetMainCatPosition(void)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d5b0;
  if ((bRam000000000625c0d5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    bRam000000000625c0d5 = 1;
  }
  lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
  if ((lVar2 != 0) && (lVar2 = *(long *)(lVar2 + 0x20), lVar2 != 0)) {
    if (*(int *)(lVar2 + 0x18) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if ((*(long *)(lVar2 + 0x20) != 0) &&
       (lVar2 = Component_get_transform_0x6000c82(*(long *)(lVar2 + 0x20),0), lVar2 != 0)) {
      Transform_get_position_0x6000f4d(lVar2,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

