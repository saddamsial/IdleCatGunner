/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba226c, Ghidra VA 02ca226c. */

undefined8 StarGem_Pig_UI__Price_str_return(int param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e5d920;
  if ((bRam000000000625c491 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e648b8);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c491 = 1;
  }
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  if (cRam000000000625b960 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5d920);
    cRam000000000625b960 = '\x01';
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  uVar5 = **(undefined8 **)(lVar3 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  uVar5 = 0;
  if ((uVar4 & 1) != 0) {
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if (cRam000000000625b960 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5d920);
      cRam000000000625b960 = '\x01';
    }
    puVar1 = PTR_DAT_05e5e3e0;
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    lVar3 = **(long **)(lVar3 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar5 = StarGem_Pig__Product_id_return(param_1);
    if (lVar3 == 0) goto LAB_02ca2444;
    uVar5 = Shop_manager_Localized_Price_return_0x6000dbd(lVar3,uVar5,0);
  }
  uVar4 = String_IsNullOrEmpty_0x6000277(uVar5,0);
  puVar2 = PTR_DAT_05e648b8;
  if ((uVar4 & 1) != 0) {
    if (2 < param_1) {
      param_1 = 3;
    }
    lVar3 = *(long *)PTR_DAT_05e648b8;
    if (param_1 < 2) {
      param_1 = 1;
    }
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    lVar3 = **(long **)(lVar3 + 0xb8);
    if (lVar3 == 0) {
LAB_02ca2444:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar3 + 0x18) <= param_1 - 1U) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    uVar5 = *(undefined8 *)(lVar3 + (ulong)(param_1 - 1U) * 8 + 0x20);
  }
  return uVar5;
}

