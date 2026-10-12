/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b561a8, Ghidra VA 02c561a8. */

void Raid_manager_Boss_Destroyed(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c1b9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c1b9 = 1;
  }
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  puVar3 = PTR_DAT_05e5e3e0;
  puVar2 = PTR_DAT_05e591c0;
  if (**(char **)(lVar4 + 0xb8) != '\0') {
    lVar4 = *(long *)PTR_DAT_05e5e3e0;
    iVar1 = *(int *)(lVar4 + 0xe4);
    *(int *)(param_1 + 0xb0) = *(int *)(param_1 + 0xb0) + 1;
    if (iVar1 == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar3;
    }
    uVar6 = **(undefined8 **)(lVar4 + 0xb8);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar2);
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar5 & 1) != 0) {
      lVar4 = *(long *)puVar3;
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)puVar3;
      }
      if (**(long **)(lVar4 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      StarGem_Pig_OnBossBarCleared_0x6000df6(**(long **)(lVar4 + 0xb8),0);
    }
    Raid_manager_Boss_Reload(param_1);
    return;
  }
  return;
}

