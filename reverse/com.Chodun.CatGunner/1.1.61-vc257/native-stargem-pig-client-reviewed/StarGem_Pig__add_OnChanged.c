/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba0528, Ghidra VA 02ca0528. */

void StarGem_Pig__add_OnChanged(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  bool bVar3;
  long lVar4;
  long *plVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar2 = PTR_DAT_05e5e3e0;
  if ((bRam000000000625c478 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c478 = 1;
  }
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  puVar1 = PTR_DAT_05e59288;
  lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x18);
  do {
    plVar5 = (long *)Delegate_Combine_0x6000fb5(lVar4,param_1,0);
    if (plVar5 != (long *)0x0) {
      if (*plVar5 != *(long *)puVar1) {
        uVar7 = func_0x029f607c(plVar5);
        puVar2 = PTR_DAT_05e5e3e0;
        if ((bRam000000000625c479 & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05e59288);
          func_0x029f5a50(PTR_DAT_05e5e3e0);
          bRam000000000625c479 = 1;
        }
        lVar4 = *(long *)puVar2;
        if (*(int *)(lVar4 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar4 = *(long *)puVar2;
        }
        puVar1 = PTR_DAT_05e59288;
        lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x18);
        do {
          plVar5 = (long *)Delegate_Remove_0x6000fb8(lVar4,uVar7,0);
          if (plVar5 != (long *)0x0) {
            if (*plVar5 != *(long *)puVar1) {
              uVar7 = func_0x029f607c(plVar5);
              puVar2 = PTR_DAT_05e5e3e0;
              if ((bRam000000000625c47a & 1) == 0) {
                func_0x029f5a50(PTR_DAT_05e5e3e0);
                bRam000000000625c47a = 1;
              }
              lVar4 = *(long *)puVar2;
              if (*(int *)(lVar4 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar4 = *(long *)puVar2;
              }
              **(undefined8 **)(lVar4 + 0xb8) = uVar7;
              Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar2 + 0xb8),uVar7);
              return;
            }
          }
          lVar6 = *(long *)puVar2;
          if (*(int *)(lVar6 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar6 = *(long *)puVar2;
          }
          lVar6 = func_0x02a2e558(*(long *)(lVar6 + 0xb8) + 0x18,plVar5,lVar4);
          bVar3 = lVar6 != lVar4;
          lVar4 = lVar6;
        } while (bVar3);
        return;
      }
    }
    lVar6 = *(long *)puVar2;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar2;
    }
    lVar6 = func_0x02a2e558(*(long *)(lVar6 + 0xb8) + 0x18,plVar5,lVar4);
    bVar3 = lVar6 != lVar4;
    lVar4 = lVar6;
  } while (bVar3);
  return;
}

