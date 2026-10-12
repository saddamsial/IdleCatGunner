/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b09bd0, Ghidra VA 02c09bd0. */

undefined4
OfflineProgressSimulator_BuyAllAffordable(int *param_1,int *param_2,int *param_3,undefined8 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  undefined4 uVar6;
  int *piVar7;
  ulong uVar8;
  undefined4 uVar9;
  
  if ((bRam000000000625be83 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62040);
    bRam000000000625be83 = 1;
  }
  puVar5 = PTR_DAT_05e62040;
  uVar6 = 0;
  do {
    uVar9 = uVar6;
    iVar3 = *param_1;
    iVar4 = *param_2;
    iVar2 = -(uint)(9999 < iVar3);
    iVar1 = 0x7fffffff;
    if (iVar3 < 10000) {
      iVar1 = iVar3;
    }
    if (iVar4 < 10000 && iVar4 < iVar1) {
      iVar2 = 1;
      iVar1 = iVar4;
    }
    iVar3 = 2;
    if (iVar1 <= *param_3) {
      iVar3 = iVar2;
    }
    if (*param_3 < 10000) {
      iVar2 = iVar3;
    }
    if (iVar2 == 2) {
      piVar7 = param_3;
      if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
    }
    else if (iVar2 == 1) {
      piVar7 = param_2;
      if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
    }
    else {
      if (iVar2 != 0) {
        return uVar9;
      }
      piVar7 = param_1;
      if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
    }
    uVar8 = OfflineProgressSimulator_TryBuy(piVar7,param_4);
    uVar6 = 1;
  } while ((uVar8 & 1) != 0);
  return uVar9;
}

