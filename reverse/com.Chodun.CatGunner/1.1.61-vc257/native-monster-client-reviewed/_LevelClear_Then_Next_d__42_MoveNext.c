/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b50570, Ghidra VA 02c50570. */

bool _LevelClear_Then_Next_d__42_MoveNext(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  long lVar5;
  
  if ((bRam000000000625c153 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c153 = 1;
  }
  puVar2 = PTR_DAT_05e5a710;
  iVar1 = *(int *)(param_1 + 0x10);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    uVar4 = func_0x029f5cec(*(undefined8 *)puVar2);
    WaitForSeconds__ctor_0x6000e26(0x40000000,uVar4,0);
    *(undefined8 *)(param_1 + 0x18) = uVar4;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar4);
    *(undefined4 *)(param_1 + 0x10) = 1;
  }
  else if (iVar1 == 1) {
    lVar5 = *(long *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar5 == 0) {
LAB_02c50674:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    *(undefined8 *)(lVar5 + 0xe0) = 0;
    Managed_WriteBarrier((undefined8 *)(lVar5 + 0xe0),0);
    puVar2 = PTR_DAT_05e5d338;
    lVar3 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    if (**(char **)(lVar3 + 0xb8) != '\0') {
      if (*(long *)(lVar5 + 0x100) == 0) goto LAB_02c50674;
      GameObject_SetActive_0x6000cfe(*(long *)(lVar5 + 0x100),0,0);
      Monster_manager_StartNextLevel(lVar5);
    }
  }
  return iVar1 == 0;
}

