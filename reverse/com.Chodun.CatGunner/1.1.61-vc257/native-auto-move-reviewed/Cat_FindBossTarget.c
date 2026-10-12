/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3ec6c, Ghidra VA 02c3ec6c. */

void Cat_FindBossTarget(void)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5dd30;
  if ((bRam000000000625c096 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd30);
    bRam000000000625c096 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 8);
  if ((lVar2 != 0) && (lVar2 = *(long *)(lVar2 + 0x110), lVar2 != 0)) {
    Component_get_transform_0x6000c82(lVar2,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

