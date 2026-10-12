/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9f408, Ghidra VA 02b9f408. */

void DailyCheck_NewUser_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 uStack_28;
  
  puVar2 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625b9f9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625b9f9 = 1;
  }
  puVar1 = PTR_DAT_05e597d0;
  uStack_28 = 0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uStack_28 = Time_manager_get_Today_0x600057a(0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = DateTime_AddDays_0x60005fb(0xbff0000000000000,&uStack_28,0);
  *(undefined8 *)(param_1 + 0x28) = uVar3;
  *(undefined8 *)(param_1 + 0x30) = 0;
  uStack_28 = Time_manager_get_Today_0x600057a(0);
  uVar3 = DateTime_AddDays_0x60005fb(0xbff0000000000000,&uStack_28,0);
  *(undefined8 *)(param_1 + 0x78) = uVar3;
  uVar3 = DailyCheck_Show_WhenReady(param_1);
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar3,0);
  return;
}

