/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b882c0, Ghidra VA 02c882c0. */

void Rebirth_manager_Today_str_return(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 uStack_18;
  
  puVar2 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625c388 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59760);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5d3e0);
    bRam000000000625c388 = 1;
  }
  puVar1 = PTR_DAT_05e59760;
  uStack_18 = 0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar2 = PTR_DAT_05e597d0;
  uStack_18 = Time_manager_get_Now_0x6000579(0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  puVar1 = PTR_DAT_05e5d3e0;
  uVar3 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  DateTime_ToString_0x6000631(&uStack_18,*(undefined8 *)puVar1,uVar3,0);
  return;
}

