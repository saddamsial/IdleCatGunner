/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b90bfc, Ghidra VA 02c90bfc. */

undefined8 PlusPack_Product_id_return(int param_1)

{
  undefined8 uVar1;
  undefined8 *puVar2;
  
  if ((bRam000000000625c3ec & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64130);
    func_0x029f5a50(PTR_DAT_05e64138);
    func_0x029f5a50(PTR_DAT_05e64140);
    bRam000000000625c3ec = 1;
  }
  puVar2 = (undefined8 *)PTR_DAT_05e64138;
  if (((param_1 == 2) || (puVar2 = (undefined8 *)PTR_DAT_05e64140, param_1 == 1)) ||
     (puVar2 = (undefined8 *)PTR_DAT_05e64130, param_1 == 0)) {
    uVar1 = *puVar2;
  }
  else {
    uVar1 = 0;
  }
  return uVar1;
}

