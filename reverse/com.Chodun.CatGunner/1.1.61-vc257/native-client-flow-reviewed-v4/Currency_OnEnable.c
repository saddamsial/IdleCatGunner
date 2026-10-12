/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b26654, Ghidra VA 02c26654. */

void Currency_OnEnable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  ulong uVar6;
  
  puVar4 = PTR_DAT_05e62d18;
  puVar3 = PTR_DAT_05e5d338;
  puVar2 = PTR_DAT_05e59288;
  if ((bRam000000000625bfab & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e62d18);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625bfab = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar2);
  Action__ctor_0x60003a5(uVar5,param_1,*(undefined8 *)puVar4,0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_add_OnMoneyChanged_0x600004a(uVar5,0);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar2);
  Action__ctor_0x60003a5(uVar5,param_1,*(undefined8 *)puVar4,0);
  Gamemanager_add_OnDiaChanged_0x600004c(uVar5,0);
  uVar5 = *(undefined8 *)(*(long *)(*(long *)puVar3 + 0xb8) + 200);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar6 & 1) != 0) {
    Currency_OnValueChanged(param_1);
    return;
  }
  return;
}

