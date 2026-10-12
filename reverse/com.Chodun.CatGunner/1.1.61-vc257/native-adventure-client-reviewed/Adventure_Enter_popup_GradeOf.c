/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b33adc, Ghidra VA 02c33adc. */

undefined4 Adventure_Enter_popup_GradeOf(undefined8 param_1,long param_2)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c04b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c04b = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x28);
  if ((int)param_2 == 0) {
    if (lVar2 == 0) goto LAB_02c33b70;
    lVar2 = *(long *)(lVar2 + 0x38);
  }
  else {
    if (lVar2 == 0) goto LAB_02c33b70;
    lVar2 = *(long *)(lVar2 + 0x30);
  }
  if (lVar2 != 0) {
    if ((uint)((ulong)param_2 >> 0x20) < *(uint *)(lVar2 + 0x18)) {
      return *(undefined4 *)(lVar2 + (param_2 >> 0x20) * 4 + 0x20);
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
LAB_02c33b70:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

