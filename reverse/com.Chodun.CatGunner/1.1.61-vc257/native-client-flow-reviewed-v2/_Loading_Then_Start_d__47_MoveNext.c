/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bae2dc, Ghidra VA 02cae2dc. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 _Loading_Then_Start_d__47_MoveNext(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined4 uVar4;
  
  if ((bRam000000000625c52b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c52b = 1;
  }
  iVar1 = *(int *)(param_1 + 0x10);
  lVar3 = *(long *)(param_1 + 0x20);
  if (iVar1 < 2) {
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if (lVar3 != 0) {
        if (*(long *)(lVar3 + 0xc0) != 0) {
          MonoBehaviour_StopCoroutine_0x6000d45(lVar3,*(long *)(lVar3 + 0xc0),0);
        }
        uVar4 = 0x3f800000;
        if (*(int *)(lVar3 + 0x30) <= *(int *)(lVar3 + 0x2c) + *(int *)(lVar3 + 0x28) * 10) {
          uVar4 = 0x40000000;
        }
        uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(uVar4,uVar2,0);
        *(undefined8 *)(param_1 + 0x18) = uVar2;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
    }
    else {
      if (iVar1 != 1) {
        return 0;
      }
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if ((lVar3 != 0) && (*(long *)(lVar3 + 0xa8) != 0)) {
        GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0xa8),1,0);
        uVar4 = 0x3f400000;
        if (*(int *)(lVar3 + 0x30) <= *(int *)(lVar3 + 0x2c) + *(int *)(lVar3 + 0x28) * 10) {
          uVar4 = 0x3fc00000;
        }
        uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(uVar4,uVar2,0);
        *(undefined8 *)(param_1 + 0x18) = uVar2;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
        uVar4 = 2;
LAB_02cae4d4:
        *(undefined4 *)(param_1 + 0x10) = uVar4;
        return 1;
      }
    }
  }
  else if (iVar1 == 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar3 != 0) {
      Tree_manager_Game_Start(lVar3);
      uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
      WaitForSeconds__ctor_0x6000e26(_UNK_0116c060,uVar2,0);
      *(undefined8 *)(param_1 + 0x18) = uVar2;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
      uVar4 = 3;
      goto LAB_02cae4d4;
    }
  }
  else {
    if (iVar1 != 3) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if ((lVar3 != 0) && (*(long *)(lVar3 + 0x58) != 0)) {
      GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0x58),0,0);
      if (*(long *)(lVar3 + 0x60) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0x60),0,0);
        if (*(long *)(lVar3 + 0xa8) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0xa8),0,0);
          return 0;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

