/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5d11c, Ghidra VA 02c5d11c. */

void Fish_manager_remove_OnInventoryChanged(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  bool bVar2;
  long *plVar3;
  long lVar4;
  undefined8 uVar5;
  long lVar6;
  
  if ((bRam000000000625c1f5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    bRam000000000625c1f5 = 1;
  }
  puVar1 = PTR_DAT_05e59288;
  lVar6 = *(long *)(param_1 + 0xa8);
  while ((plVar3 = (long *)Delegate_Remove_0x6000fb8(lVar6,param_2,0), plVar3 == (long *)0x0 ||
         (*plVar3 == *(long *)puVar1))) {
    lVar4 = func_0x02a2e558((long *)(param_1 + 0xa8),plVar3,lVar6);
    bVar2 = lVar4 == lVar6;
    lVar6 = lVar4;
    if (bVar2) {
      return;
    }
  }
  uVar5 = func_0x029f607c(plVar3);
  puVar1 = PTR_DAT_05e5dd38;
  if ((bRam000000000625c1f6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    bRam000000000625c1f6 = 1;
  }
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = uVar5;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),uVar5);
  return;
}

