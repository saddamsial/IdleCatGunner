/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa4768, Ghidra VA 02ba4768. */

undefined8 Mission_manager_Mission_Name_str_return(undefined8 param_1,int param_2)

{
  int iVar1;
  undefined8 *puVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625ba50 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5e708);
    func_0x029f5a50(PTR_DAT_05e5e710);
    func_0x029f5a50(PTR_DAT_05e5e718);
    func_0x029f5a50(PTR_DAT_05e5e720);
    bRam000000000625ba50 = 1;
  }
  if (param_2 < 2) {
    if (param_2 == 0) {
      iVar1 = *(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4);
      puVar2 = (undefined8 *)PTR_DAT_05e5e710;
    }
    else {
      if (param_2 != 1) {
        return 0;
      }
      iVar1 = *(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4);
      puVar2 = (undefined8 *)PTR_DAT_05e5e708;
    }
  }
  else if (param_2 == 2) {
    iVar1 = *(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4);
    puVar2 = (undefined8 *)PTR_DAT_05e5e718;
  }
  else {
    if (param_2 != 3) {
      return 0;
    }
    iVar1 = *(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4);
    puVar2 = (undefined8 *)PTR_DAT_05e5e720;
  }
  if (iVar1 == 0) {
    func_0x029f5bd0();
  }
  uVar3 = LocalizationManager_GetTranslation_0x60011b3(*puVar2,1,0,1,0,0,0,1,0);
  return uVar3;
}

