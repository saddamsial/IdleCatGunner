/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b94dc8, Ghidra VA 02c94dc8. */

undefined8 Shop_manager_Inapp_vip_product_id_return(undefined8 param_1,int param_2)

{
  undefined8 uVar1;
  undefined8 *puVar2;
  
  if ((bRam000000000625c453 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64208);
    func_0x029f5a50(PTR_DAT_05e5e170);
    bRam000000000625c453 = 1;
  }
  puVar2 = (undefined8 *)PTR_DAT_05e64208;
  if ((param_2 == 1) || (puVar2 = (undefined8 *)PTR_DAT_05e5e170, param_2 == 0)) {
    uVar1 = *puVar2;
  }
  else {
    uVar1 = 0;
  }
  return uVar1;
}

