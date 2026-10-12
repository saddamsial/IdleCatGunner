/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b09dd8, Ghidra VA 02c09dd8. */

void OfflineProgressSimulator_GetPrice(undefined8 *param_1,uint param_2)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625be8a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625be8a = 1;
  }
  lVar2 = *(long *)puVar1;
  if (9999 < (int)param_2) {
    param_2 = 10000;
  }
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  param_2 = param_2 & ((int)param_2 >> 0x1f ^ 0xffffffffU);
  if (((**(long **)(lVar2 + 0xb8) == 0) ||
      (lVar3 = *(long *)(**(long **)(lVar2 + 0xb8) + 0x30), lVar3 == 0)) ||
     (*(int *)(lVar3 + 0x18) <= (int)param_2)) {
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Upgrade_manager_CalcPrice_0x6000f8c(&uStack_50,(ulong)param_2,0);
  }
  else {
    lVar3 = lVar3 + (ulong)param_2 * 0x20;
    uStack_48 = *(undefined8 *)(lVar3 + 0x28);
    uStack_50 = *(undefined8 *)(lVar3 + 0x20);
    uStack_38 = *(undefined8 *)(lVar3 + 0x38);
    uStack_40 = *(undefined8 *)(lVar3 + 0x30);
  }
  param_1[1] = uStack_48;
  *param_1 = uStack_50;
  param_1[3] = uStack_38;
  param_1[2] = uStack_40;
  return;
}

