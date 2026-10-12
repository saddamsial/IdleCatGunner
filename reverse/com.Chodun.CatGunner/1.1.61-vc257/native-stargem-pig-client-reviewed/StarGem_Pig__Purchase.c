/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba1340, Ghidra VA 02ca1340. */

void StarGem_Pig__Purchase(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  undefined8 uVar6;
  
  if ((bRam000000000625c484 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c484 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  StarGem_Pig__Season_Check(param_1);
  uVar3 = StarGem_Pig__get_Is_Purchasable(param_1);
  puVar2 = PTR_DAT_05e5d920;
  if ((uVar3 & 1) == 0) {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    puVar2 = PTR_DAT_05e5dd70;
    uVar6 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar3 & 1) != 0) {
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02ca1578;
      Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)puVar2 + 0xb8),5,0,0);
    }
    puVar1 = PTR_DAT_05e5e3e0;
    lVar4 = *(long *)PTR_DAT_05e5e3e0;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar1;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x18);
    if (lVar4 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02ca1564. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(lVar4 + 0x18))(*(undefined8 *)(lVar4 + 0x40),*(undefined8 *)(lVar4 + 0x28));
      return;
    }
  }
  else {
    if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if (cRam000000000625b960 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5d920);
      cRam000000000625b960 = '\x01';
    }
    lVar4 = *(long *)puVar2;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar5 = *(long *)puVar1;
    uVar6 = **(undefined8 **)(lVar4 + 0xb8);
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0(lVar5);
    }
    uVar3 = Object_op_Equality_0x6000dec(uVar6,0,0);
    if ((uVar3 & 1) == 0) {
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      if (cRam000000000625b960 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5d920);
        cRam000000000625b960 = '\x01';
      }
      lVar4 = *(long *)puVar2;
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)puVar2;
      }
      if (**(long **)(lVar4 + 0xb8) != 0) {
        Shop_manager_Purchase_StarGemPig_0x6000dc7
                  (**(long **)(lVar4 + 0xb8),*(undefined4 *)(param_1 + 0x20),param_2,0);
        return;
      }
LAB_02ca1578:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

