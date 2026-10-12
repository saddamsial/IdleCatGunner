/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b506c4, Ghidra VA 02c506c4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _Level_Coroutine_d__39_MoveNext(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  long lVar5;
  undefined4 uVar6;
  
  if ((bRam000000000625c154 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e63538);
    func_0x029f5a50(PTR_DAT_05e5dd58);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c154 = 1;
  }
  puVar2 = PTR_DAT_05e5dd58;
  lVar5 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) - 1U < 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar5 == 0) goto LAB_02c50918;
    iVar1 = *(int *)(param_1 + 0x28);
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    if ((lVar5 == 0) || (lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10), lVar3 == 0))
    goto LAB_02c50918;
    if (*(uint *)(lVar3 + 0x18) <= *(uint *)(lVar5 + 0x24)) goto LAB_02c5091c;
    iVar1 = *(int *)(lVar3 + (long)(int)*(uint *)(lVar5 + 0x24) * 4 + 0x20);
    *(int *)(param_1 + 0x28) = iVar1;
    *(undefined4 *)(param_1 + 0x2c) = 0;
  }
  puVar2 = PTR_DAT_05e5d338;
  lVar3 = *(long *)PTR_DAT_05e5d338;
  if (iVar1 <= *(int *)(lVar5 + 0xd0)) {
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    if (**(char **)(lVar3 + 0xb8) != '\0') {
      Monster_manager_LevelClear(lVar5);
    }
    return 0;
  }
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  if (**(char **)(lVar3 + 0xb8) == '\0') {
    return 0;
  }
  iVar1 = *(int *)(lVar5 + 0xd4);
  if (*(int *)(param_1 + 0x2c) < *(int *)(param_1 + 0x28)) {
    if (0 < iVar1) goto LAB_02c50828;
    *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + 1;
  }
  else {
    if (iVar1 < 1) {
      uVar4 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
      WaitForSeconds__ctor_0x6000e26(_UNK_0116c174,uVar4,0);
      *(undefined8 *)(param_1 + 0x18) = uVar4;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar4);
      *(undefined4 *)(param_1 + 0x10) = 2;
      return 1;
    }
LAB_02c50828:
    *(int *)(lVar5 + 0xd4) = iVar1 + -1;
  }
  Monster_manager_Monster_Spawn(lVar5);
  puVar2 = PTR_DAT_05e5dd58;
  if (*(long *)(lVar5 + 0x178) == 0) {
LAB_02c50918:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar6 = _UNK_0116c280;
  if (2 < *(int *)(*(long *)(lVar5 + 0x178) + 0x18)) {
    lVar3 = *(long *)PTR_DAT_05e5dd58;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x18);
    if (lVar3 == 0) goto LAB_02c50918;
    if (*(uint *)(lVar3 + 0x18) <= *(uint *)(lVar5 + 0x24)) {
LAB_02c5091c:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    uVar6 = *(undefined4 *)(lVar3 + (long)(int)*(uint *)(lVar5 + 0x24) * 4 + 0x20);
  }
  uVar4 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
  WaitForSeconds__ctor_0x6000e26(uVar6,uVar4,0);
  *(undefined8 *)(param_1 + 0x18) = uVar4;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar4);
  *(undefined4 *)(param_1 + 0x10) = 1;
  return 1;
}

