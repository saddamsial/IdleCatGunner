/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b94b30, Ghidra VA 02c94b30. */

undefined8 Shop_manager_Inapp_product_id_return(undefined8 param_1,int param_2)

{
  undefined8 *puVar1;
  
  if ((bRam000000000625c452 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e641e0);
    func_0x029f5a50(PTR_DAT_05e64248);
    func_0x029f5a50(PTR_DAT_05e64298);
    func_0x029f5a50(PTR_DAT_05e642a0);
    func_0x029f5a50(PTR_DAT_05e642c0);
    func_0x029f5a50(PTR_DAT_05e642d0);
    bRam000000000625c452 = 1;
  }
  if (param_2 < 3) {
    puVar1 = (undefined8 *)PTR_DAT_05e64298;
    if (((param_2 != 0) && (puVar1 = (undefined8 *)PTR_DAT_05e642c0, param_2 != 1)) &&
       (puVar1 = (undefined8 *)PTR_DAT_05e641e0, param_2 != 2)) {
      return 0;
    }
  }
  else {
    puVar1 = (undefined8 *)PTR_DAT_05e64248;
    if (((param_2 != 3) && (puVar1 = (undefined8 *)PTR_DAT_05e642a0, param_2 != 4)) &&
       (puVar1 = (undefined8 *)PTR_DAT_05e642d0, param_2 != 5)) {
      return 0;
    }
  }
  return *puVar1;
}

