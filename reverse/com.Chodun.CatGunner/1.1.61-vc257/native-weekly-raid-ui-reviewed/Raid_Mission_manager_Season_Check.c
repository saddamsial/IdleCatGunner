/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b53fc0, Ghidra VA 02c53fc0. */

void Raid_Mission_manager_Season_Check(long param_1)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c17a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c17a = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar2 = Raid_manager_get_Season_Index_Now_0x6000923();
  puVar1 = PTR_DAT_05e5e068;
  if (*(int *)(param_1 + 0x28) != iVar2) {
    *(int *)(param_1 + 0x28) = iVar2;
    Array_Clear_0x6000d48(*(undefined8 *)(param_1 + 0x30),0,8,0);
    Array_Clear_0x6000d48(*(undefined8 *)(param_1 + 0x38),0,8,0);
    Array_Clear_0x6000d48(*(undefined8 *)(param_1 + 0x40),0,8,0);
    lVar3 = *(long *)puVar1;
    *(undefined1 *)(param_1 + 0x48) = 0;
    lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
    if (lVar3 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02c54094. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(lVar3 + 0x18))(*(undefined8 *)(lVar3 + 0x40),*(undefined8 *)(lVar3 + 0x28));
      return;
    }
  }
  return;
}

