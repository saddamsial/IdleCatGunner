/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b31e9c, Ghidra VA 02c31e9c. */

void Relic_Item_Demo_onClick(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d4d8;
  if ((bRam000000000625c03d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    bRam000000000625c03d = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x70);
  if ((lVar2 != 0) && (lVar2 = *(long *)(lVar2 + 0x38), lVar2 != 0)) {
    Relic_Info_UI_Reload(lVar2,*(undefined8 *)(param_1 + 0x20));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

