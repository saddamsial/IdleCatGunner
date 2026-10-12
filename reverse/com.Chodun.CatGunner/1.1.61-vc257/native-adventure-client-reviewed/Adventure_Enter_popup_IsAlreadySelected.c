/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b340f8, Ghidra VA 02c340f8. */

byte Adventure_Enter_popup_IsAlreadySelected(long param_1,long param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  byte bVar3;
  undefined8 uStack_48;
  undefined8 uStack_40;
  long lStack_38;
  
  if ((bRam000000000625c050 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62fa0);
    func_0x029f5a50(PTR_DAT_05e62fa8);
    func_0x029f5a50(PTR_DAT_05e62fb0);
    func_0x029f5a50(PTR_DAT_05e62fc0);
    bRam000000000625c050 = 1;
  }
  puVar2 = PTR_DAT_05e62fa8;
  puVar1 = PTR_DAT_05e62fa0;
  uStack_48 = 0;
  uStack_40 = 0;
  lStack_38 = 0;
  if (*(long *)(param_1 + 200) != 0) {
    func_0x045c2058(&uStack_48,*(long *)(param_1 + 200),*(undefined8 *)PTR_DAT_05e62fc0);
    do {
      bVar3 = func_0x03fd486c(&uStack_48,*(undefined8 *)puVar2);
    } while ((bVar3 & lStack_38 != param_2) != 0);
    func_0x03fd4868(&uStack_48,*(undefined8 *)puVar1);
    return bVar3 & 1;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

