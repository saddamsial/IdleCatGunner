/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2c70c, Ghidra VA 02c2c70c. */

void Adventure_manager_add_OnCoreChanged(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  bool bVar3;
  long lVar4;
  long *plVar5;
  long lVar6;
  undefined8 uVar7;
  undefined8 *puVar8;
  
  puVar2 = PTR_DAT_05e5dd28;
  if ((bRam000000000625bff5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625bff5 = 1;
  }
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  puVar1 = PTR_DAT_05e59288;
  lVar4 = **(long **)(lVar4 + 0xb8);
  do {
    plVar5 = (long *)Delegate_Combine_0x6000fb5(lVar4,param_1,0);
    if (plVar5 != (long *)0x0) {
      if (*plVar5 != *(long *)puVar1) {
        uVar7 = func_0x029f607c(plVar5);
        puVar2 = PTR_DAT_05e5dd28;
        if ((bRam000000000625bff6 & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05e59288);
          func_0x029f5a50(PTR_DAT_05e5dd28);
          bRam000000000625bff6 = 1;
        }
        lVar4 = *(long *)puVar2;
        if (*(int *)(lVar4 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar4 = *(long *)puVar2;
        }
        puVar1 = PTR_DAT_05e59288;
        lVar4 = **(long **)(lVar4 + 0xb8);
        do {
          plVar5 = (long *)Delegate_Remove_0x6000fb8(lVar4,uVar7,0);
          if (plVar5 != (long *)0x0) {
            if (*plVar5 != *(long *)puVar1) {
              uVar7 = func_0x029f607c(plVar5);
              puVar2 = PTR_DAT_05e5dd28;
              if ((bRam000000000625bff7 & 1) == 0) {
                func_0x029f5a50(PTR_DAT_05e5dd28);
                bRam000000000625bff7 = 1;
              }
              lVar4 = *(long *)puVar2;
              if (*(int *)(lVar4 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar4 = *(long *)puVar2;
              }
              puVar8 = (undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x10);
              *puVar8 = uVar7;
              Managed_WriteBarrier(puVar8,uVar7);
              return;
            }
          }
          lVar6 = *(long *)puVar2;
          if (*(int *)(lVar6 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar6 = *(long *)puVar2;
          }
          lVar6 = func_0x02a2e558(*(undefined8 *)(lVar6 + 0xb8),plVar5,lVar4);
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
    lVar6 = func_0x02a2e558(*(undefined8 *)(lVar6 + 0xb8),plVar5,lVar4);
    bVar3 = lVar6 != lVar4;
    lVar4 = lVar6;
  } while (bVar3);
  return;
}

