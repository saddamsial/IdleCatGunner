/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba1940, Ghidra VA 02ca1940. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void StarGem_Pig__LoadFromSaveData(long param_1,long param_2)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined4 uVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c486 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c486 = 1;
  }
  puVar2 = PTR_DAT_05e5e3e0;
  if ((param_2 == 0) || (iVar1 = *(int *)(param_2 + 0x3f0), iVar1 < 1)) {
    *(undefined4 *)(param_1 + 0x28) = 0;
    uVar4 = 0xffffffff;
    *(undefined8 *)(param_1 + 0x20) = _UNK_0116fdf0;
  }
  else {
    if (2 < iVar1) {
      iVar1 = 3;
    }
    *(int *)(param_1 + 0x20) = iVar1;
    uVar5 = NEON_smax(*(undefined8 *)(param_2 + 0x3f4),0,4);
    *(undefined8 *)(param_1 + 0x24) = uVar5;
    uVar4 = *(undefined4 *)(param_2 + 0x3fc);
  }
  *(undefined4 *)(param_1 + 0x2c) = uVar4;
  StarGem_Pig__Season_Check(param_1);
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x18);
  if (lVar3 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02ca1a08. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(lVar3 + 0x18))(*(undefined8 *)(lVar3 + 0x40),*(undefined8 *)(lVar3 + 0x28));
    return;
  }
  return;
}

