/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7f8b8, Ghidra VA 02b7f8b8. */

void Gamemanager_Lose_StarGem(int param_1)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625b8c2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b8c2 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar3 = *(long *)(lVar2 + 0xb8);
  param_1 = *(int *)(lVar3 + 0xc4) - param_1;
  *(int *)(lVar3 + 0xc4) = param_1;
  if (param_1 < 0) {
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
      lVar3 = *(long *)(lVar2 + 0xb8);
    }
    *(undefined4 *)(lVar3 + 0xc4) = 0;
  }
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x28);
  if (lVar2 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02b7f95c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(lVar2 + 0x18))(*(undefined8 *)(lVar2 + 0x40),*(undefined8 *)(lVar2 + 0x28));
    return;
  }
  return;
}

