/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5d080, Ghidra VA 02c5d080. */

void Fish_manager_add_OnInventoryChanged(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  bool bVar2;
  long *plVar3;
  long lVar4;
  long *plVar5;
  undefined8 uVar6;
  long lVar7;
  undefined1 auVar8 [16];
  
  if ((bRam000000000625c1f4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    bRam000000000625c1f4 = 1;
  }
  puVar1 = PTR_DAT_05e59288;
  lVar7 = *(long *)(param_1 + 0xa8);
  while ((plVar3 = (long *)Delegate_Combine_0x6000fb5(lVar7,param_2,0), plVar3 == (long *)0x0 ||
         (*plVar3 == *(long *)puVar1))) {
    lVar4 = func_0x02a2e558((long *)(param_1 + 0xa8),plVar3,lVar7);
    bVar2 = lVar4 == lVar7;
    lVar7 = lVar4;
    if (bVar2) {
      return;
    }
  }
  auVar8 = func_0x029f607c(plVar3);
  if ((bRam000000000625c1f5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    bRam000000000625c1f5 = 1;
  }
  puVar1 = PTR_DAT_05e59288;
  plVar3 = (long *)(auVar8._0_8_ + 0xa8);
  lVar7 = *plVar3;
  while ((plVar5 = (long *)Delegate_Remove_0x6000fb8(lVar7,auVar8._8_8_,0), plVar5 == (long *)0x0 ||
         (*plVar5 == *(long *)puVar1))) {
    lVar4 = func_0x02a2e558(plVar3,plVar5,lVar7);
    bVar2 = lVar4 == lVar7;
    lVar7 = lVar4;
    if (bVar2) {
      return;
    }
  }
  uVar6 = func_0x029f607c(plVar5);
  puVar1 = PTR_DAT_05e5dd38;
  if ((bRam000000000625c1f6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    bRam000000000625c1f6 = 1;
  }
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = uVar6;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),uVar6);
  return;
}

