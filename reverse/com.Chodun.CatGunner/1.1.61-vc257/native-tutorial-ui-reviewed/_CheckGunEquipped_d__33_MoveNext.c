/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bafda8, Ghidra VA 02cafda8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _CheckGunEquipped_d__33_MoveNext(long param_1)

{
  undefined8 uVar1;
  long lVar2;
  int *piVar3;
  int iVar4;
  long lVar5;
  
  if ((bRam000000000625c540 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c540 = 1;
  }
  if (1 < *(uint *)(param_1 + 0x10)) {
    return 0;
  }
  lVar5 = *(long *)(param_1 + 0x20);
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  if (lVar5 != 0) {
    if (*(int *)(lVar5 + 0x60) != 4) {
      return 0;
    }
    if ((**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) &&
       (lVar2 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) + 0x28), lVar2 != 0)) {
      iVar4 = *(int *)(lVar2 + 0x18);
      if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (1 < iVar4) {
        iVar4 = iVar4 + -1;
        piVar3 = (int *)(lVar2 + 0x24);
        do {
          if (*piVar3 != -1) goto LAB_02cafe5c;
          iVar4 = iVar4 + -1;
          piVar3 = piVar3 + 1;
        } while (iVar4 != 0);
      }
      if (*(int *)(lVar2 + 0x20) == 0) {
        uVar1 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(_UNK_0116c060,uVar1,0);
        *(undefined8 *)(param_1 + 0x18) = uVar1;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar1);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
LAB_02cafe5c:
      if ((*(long *)(lVar5 + 0x40) != 0) &&
         (lVar2 = Component_get_gameObject_0x6000c83(*(long *)(lVar5 + 0x40),0), lVar2 != 0)) {
        GameObject_SetActive_0x6000cfe(lVar2,0,0);
        Tutorial_manager_SetStep(lVar5,5);
        return 0;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

