/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa5b08, Ghidra VA 02ba5b08. */

undefined8 Mission_manager_Mission_Explain_str_return(undefined8 param_1,int param_2)

{
  int iVar1;
  undefined8 *puVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625ba51 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5e770);
    func_0x029f5a50(PTR_DAT_05e5e778);
    func_0x029f5a50(PTR_DAT_05e5e780);
    func_0x029f5a50(PTR_DAT_05e5e788);
    bRam000000000625ba51 = 1;
  }
  if (param_2 < 2) {
    if (param_2 == 0) {
      iVar1 = *(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4);
      puVar2 = (undefined8 *)PTR_DAT_05e5e780;
    }
    else {
      if (param_2 != 1) {
        return 0;
      }
      iVar1 = *(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4);
      puVar2 = (undefined8 *)PTR_DAT_05e5e778;
    }
  }
  else if (param_2 == 2) {
    iVar1 = *(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4);
    puVar2 = (undefined8 *)PTR_DAT_05e5e788;
  }
  else {
    if (param_2 != 3) {
      return 0;
    }
    iVar1 = *(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4);
    puVar2 = (undefined8 *)PTR_DAT_05e5e770;
  }
  if (iVar1 == 0) {
    func_0x029f5bd0();
  }
  uVar3 = LocalizationManager_GetTranslation_0x60011b3(*puVar2,1,0,1,0,0,0,1,0);
  return uVar3;
}

