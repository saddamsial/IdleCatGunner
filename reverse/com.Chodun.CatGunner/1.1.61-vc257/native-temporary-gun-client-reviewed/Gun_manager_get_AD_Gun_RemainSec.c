/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6a6d8, Ghidra VA 02c6a6d8. */

undefined1  [16] Gun_manager_get_AD_Gun_RemainSec(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined1 auVar4 [16];
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if ((bRam000000000625c27f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    bRam000000000625c27f = 1;
  }
  puVar2 = PTR_DAT_05e5a180;
  puVar1 = PTR_DAT_05e597d0;
  uStack_28 = 0;
  if (*(int *)(param_1 + 0xc0) == -1) {
    auVar4 = ZEXT816(0);
  }
  else {
    uStack_30 = 0;
    DateTime__ctor_0x60005ee(&uStack_30,*(undefined8 *)(param_1 + 200),1,0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = DateTime_get_UtcNow_0x6000652(0);
    uStack_28 = DateTime_op_Subtraction_0x600063a(uStack_30,uVar3,0);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar2);
    }
    auVar4 = TimeSpan_get_TotalSeconds_0x6000a76(&uStack_28,0);
  }
  return auVar4;
}

