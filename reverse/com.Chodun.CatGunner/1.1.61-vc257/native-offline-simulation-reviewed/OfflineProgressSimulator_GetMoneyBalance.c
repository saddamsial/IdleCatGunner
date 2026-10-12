/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b09360, Ghidra VA 02c09360. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void OfflineProgressSimulator_GetMoneyBalance(undefined8 *param_1,uint param_2)

{
  undefined *puVar1;
  long lVar2;
  double dVar3;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625be89 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59000);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625be89 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (9999 < (int)param_2) {
    param_2 = 10000;
  }
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  param_2 = param_2 & ((int)param_2 >> 0x1f ^ 0xffffffffU);
  if (((**(long **)(lVar2 + 0xb8) == 0) ||
      (lVar2 = *(long *)(**(long **)(lVar2 + 0xb8) + 0x40), lVar2 == 0)) ||
     (*(int *)(lVar2 + 0x18) <= (int)param_2)) {
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    dVar3 = (double)Math_Pow_0x60008ae(_UNK_0116fff8,(double)(int)param_2,0);
    InfVal_op_Implicit_0x600004c(&uStack_70,dVar3 * 100.0,0);
    uStack_48 = uStack_68;
    uStack_50 = uStack_70;
    uStack_38 = uStack_58;
    uStack_40 = uStack_60;
    InfVal_ToPrecision_0x6000089(&uStack_90,&uStack_50,3,0);
  }
  else {
    lVar2 = lVar2 + (ulong)param_2 * 0x20;
    uStack_88 = *(undefined8 *)(lVar2 + 0x28);
    uStack_90 = *(undefined8 *)(lVar2 + 0x20);
    uStack_78 = *(undefined8 *)(lVar2 + 0x38);
    uStack_80 = *(undefined8 *)(lVar2 + 0x30);
  }
  param_1[1] = uStack_88;
  *param_1 = uStack_90;
  param_1[3] = uStack_78;
  param_1[2] = uStack_80;
  return;
}

