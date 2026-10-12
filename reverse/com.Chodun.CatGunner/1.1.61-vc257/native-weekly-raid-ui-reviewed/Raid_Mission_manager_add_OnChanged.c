/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5254c, Ghidra VA 02c5254c. */

void Raid_Mission_manager_add_OnChanged(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  bool bVar3;
  uint uVar4;
  long *plVar5;
  long lVar6;
  long lVar7;
  ulong uVar8;
  undefined8 uVar9;
  
  puVar1 = PTR_DAT_05e5e068;
  if ((bRam000000000625c16c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5e068);
    bRam000000000625c16c = 1;
  }
  puVar2 = PTR_DAT_05e59288;
  lVar7 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
  while ((plVar5 = (long *)Delegate_Combine_0x6000fb5(lVar7,param_1,0), plVar5 == (long *)0x0 ||
         (*plVar5 == *(long *)puVar2))) {
    lVar6 = func_0x02a2e558(*(long *)(*(long *)puVar1 + 0xb8) + 8,plVar5,lVar7);
    bVar3 = lVar6 == lVar7;
    lVar7 = lVar6;
    if (bVar3) {
      return;
    }
  }
  lVar7 = func_0x029f607c(plVar5);
  puVar2 = PTR_DAT_05e5e068;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c167 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    bRam000000000625c167 = 1;
  }
  lVar6 = **(long **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar8 = Object_op_Equality_0x6000dec(lVar6,0,0);
  if ((uVar8 & 1) == 0) {
    uVar9 = *(undefined8 *)(lVar7 + 0x20);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar8 = Object_op_Inequality_0x6000ded(uVar9,0,0);
    if ((uVar8 & 1) != 0) {
      if (lVar6 != 0) {
        lVar7 = *(long *)(lVar7 + 0x20);
        uVar4 = Raid_Mission_manager_get_Has_Claimable(lVar6);
        if (lVar7 != 0) {
          GameObject_SetActive_0x6000cfe(lVar7,uVar4 & 1,0);
          return;
        }
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

