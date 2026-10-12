/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b953ac, Ghidra VA 02c953ac. */

undefined8 Shop_manager_Core_product_id_return(undefined8 param_1,int param_2)

{
  undefined8 *puVar1;
  
  if ((bRam000000000625c42a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64200);
    func_0x029f5a50(PTR_DAT_05e64238);
    func_0x029f5a50(PTR_DAT_05e64260);
    func_0x029f5a50(PTR_DAT_05e64270);
    func_0x029f5a50(PTR_DAT_05e64278);
    func_0x029f5a50(PTR_DAT_05e642a8);
    func_0x029f5a50(PTR_DAT_05e642b0);
    bRam000000000625c42a = 1;
  }
  if (param_2 < 3) {
    puVar1 = (undefined8 *)PTR_DAT_05e64260;
    if (((param_2 != 0) && (puVar1 = (undefined8 *)PTR_DAT_05e64200, param_2 != 1)) &&
       (puVar1 = (undefined8 *)PTR_DAT_05e64278, param_2 != 2)) {
      return 0;
    }
  }
  else if (param_2 < 5) {
    puVar1 = (undefined8 *)PTR_DAT_05e64238;
    if ((param_2 != 3) && (puVar1 = (undefined8 *)PTR_DAT_05e642a8, param_2 != 4)) {
      return 0;
    }
  }
  else {
    puVar1 = (undefined8 *)PTR_DAT_05e642b0;
    if ((param_2 != 5) && (puVar1 = (undefined8 *)PTR_DAT_05e64270, param_2 != 6)) {
      return 0;
    }
  }
  return *puVar1;
}

