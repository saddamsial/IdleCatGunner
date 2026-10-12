/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba1270, Ghidra VA 02ca1270. */

void StarGem_Pig__Add(long param_1,int param_2)

{
  int iVar1;
  undefined *puVar2;
  int iVar3;
  long lVar4;
  
  if ((bRam000000000625c483 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c483 = 1;
  }
  if ((0 < param_2) &&
     ((*(int *)(param_1 + 0x20) < 3 ||
      (iVar1 = *(int *)(param_1 + 0x28), iVar3 = StarGem_Pig__get_PurchaseMax_Now(param_1),
      iVar1 < iVar3)))) {
    iVar1 = *(int *)(param_1 + 0x24);
    iVar3 = StarGem_Pig__get_Capacity_Now(param_1);
    param_2 = iVar1 + param_2;
    if (iVar3 <= param_2) {
      param_2 = iVar3;
    }
    *(int *)(param_1 + 0x24) = param_2;
    puVar2 = PTR_DAT_05e5e3e0;
    if (param_2 != iVar1) {
      lVar4 = *(long *)PTR_DAT_05e5e3e0;
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)puVar2;
      }
      lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x18);
      if (lVar4 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02ca1328. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        (**(code **)(lVar4 + 0x18))(*(undefined8 *)(lVar4 + 0x40),*(undefined8 *)(lVar4 + 0x28));
        return;
      }
    }
  }
  return;
}

