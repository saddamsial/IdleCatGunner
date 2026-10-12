/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7100, Ghidra VA 02ca7100. */

void WeeklyShop_Open_Auto(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  long lVar2;
  
  if ((bRam000000000625c4dc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c4dc = 1;
  }
  *(undefined8 *)(param_1 + 0x20) = param_2;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x20),param_2);
  puVar1 = PTR_DAT_05e5e0b8;
  if (*(long *)(param_1 + 0x30) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),1,0);
    WeeklyShop_Menu_Open(param_1,1);
    lVar2 = *(long *)puVar1;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    if ((**(long **)(lVar2 + 0xb8) != 0) &&
       (lVar2 = *(long *)(**(long **)(lVar2 + 0xb8) + 0x20), lVar2 != 0)) {
      PlusPack_Popup_Panel_View_Down_0x6000d4b(lVar2,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

