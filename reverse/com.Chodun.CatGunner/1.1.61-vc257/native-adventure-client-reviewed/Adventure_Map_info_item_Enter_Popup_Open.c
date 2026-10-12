/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b34f88, Ghidra VA 02c34f88. */

void Adventure_Map_info_item_Enter_Popup_Open(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c05b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625c05b = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x10);
  if (((lVar2 != 0) && (lVar2 = *(long *)(lVar2 + 0x40), lVar2 != 0)) &&
     (lVar2 = *(long *)(lVar2 + 0x60), lVar2 != 0)) {
    Adventure_Enter_popup_Open
              (lVar2,*(undefined4 *)(param_1 + 0x90),*(undefined4 *)(param_1 + 0x94));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

