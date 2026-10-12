/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba0830, Ghidra VA 02ca0830. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void StarGem_Pig__Season_Check(long param_1)

{
  undefined8 uVar1;
  undefined *puVar2;
  int iVar3;
  long lVar4;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c482 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c482 = 1;
  }
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar3 = Raid_manager_get_Season_Index_Now_0x6000923(0);
  puVar2 = PTR_DAT_05e5e3e0;
  uVar1 = _UNK_0116fdf0;
  if (*(int *)(param_1 + 0x2c) != iVar3) {
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(int *)(param_1 + 0x2c) = iVar3;
    lVar4 = *(long *)puVar2;
    *(undefined8 *)(param_1 + 0x20) = uVar1;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0(lVar4);
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x18);
    if (lVar4 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02ca08e4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(lVar4 + 0x18))(*(undefined8 *)(lVar4 + 0x40),*(undefined8 *)(lVar4 + 0x28));
      return;
    }
  }
  return;
}

