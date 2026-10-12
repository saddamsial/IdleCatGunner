/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5276c, Ghidra VA 02c5276c. */

ulong Raid_Mission_manager_remove_OnChanged(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  bool bVar3;
  int iVar4;
  long *plVar5;
  ulong uVar6;
  long lVar7;
  uint uVar8;
  ulong uVar9;
  
  puVar2 = PTR_DAT_05e5e068;
  if ((bRam000000000625c16d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5e068);
    bRam000000000625c16d = 1;
  }
  puVar1 = PTR_DAT_05e59288;
  uVar9 = *(ulong *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
  while ((plVar5 = (long *)Delegate_Remove_0x6000fb8(uVar9,param_1,0), plVar5 == (long *)0x0 ||
         (*plVar5 == *(long *)puVar1))) {
    uVar6 = func_0x02a2e558(*(long *)(*(long *)puVar2 + 0xb8) + 8,plVar5,uVar9);
    bVar3 = uVar6 == uVar9;
    uVar9 = uVar6;
    if (bVar3) {
      return uVar6;
    }
  }
  lVar7 = func_0x029f607c(plVar5);
  uVar8 = 0;
  uVar9 = 1;
  do {
    iVar4 = Raid_Mission_manager_State_return(lVar7,uVar8);
    if (iVar4 == 2) {
      if (*(char *)(lVar7 + 0x48) != '\0') {
        return uVar9;
      }
    }
    else if (iVar4 == 1) {
      return uVar9;
    }
    bVar3 = uVar8 < 7;
    uVar8 = uVar8 + 1;
    uVar9 = (ulong)bVar3;
  } while (uVar8 != 8);
  return uVar9;
}

