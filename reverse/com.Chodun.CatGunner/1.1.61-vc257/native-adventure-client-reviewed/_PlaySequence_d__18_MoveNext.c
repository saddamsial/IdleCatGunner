/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3702c, Ghidra VA 02c3702c. */

undefined4 _PlaySequence_d__18_MoveNext(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined4 uVar4;
  
  if ((bRam000000000625c072 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c072 = 1;
  }
  iVar1 = *(int *)(param_1 + 0x10);
  lVar3 = *(long *)(param_1 + 0x20);
  if (iVar1 < 4) {
    if (1 < iVar1) {
      if (iVar1 == 2) {
        *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
        if ((lVar3 == 0) || (*(long *)(lVar3 + 0x28) == 0)) goto LAB_02c37358;
        GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0x28),1,0);
        uVar4 = *(undefined4 *)(lVar3 + 0x88);
        uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(uVar4,uVar2,0);
        *(undefined8 *)(param_1 + 0x18) = uVar2;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
        uVar4 = 3;
      }
      else {
        if (iVar1 != 3) {
          return 0;
        }
        *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
        if ((lVar3 == 0) || (*(long *)(lVar3 + 0x30) == 0)) goto LAB_02c37358;
        GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0x30),1,0);
        uVar4 = *(undefined4 *)(lVar3 + 0x88);
        uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(uVar4,uVar2,0);
        *(undefined8 *)(param_1 + 0x18) = uVar2;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
        uVar4 = 4;
      }
LAB_02c37340:
      *(undefined4 *)(param_1 + 0x10) = uVar4;
      return 1;
    }
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if (lVar3 != 0) {
        uVar2 = Adventure_Reward_popup_BounceIn(lVar3);
        uVar2 = MonoBehaviour_StartCoroutine_0x6000d43(lVar3,uVar2,0);
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
      if ((lVar3 != 0) && (*(long *)(lVar3 + 0x20) != 0)) {
        GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0x20),1,0);
        uVar4 = *(undefined4 *)(lVar3 + 0x88);
        uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(uVar4,uVar2,0);
        *(undefined8 *)(param_1 + 0x18) = uVar2;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
        uVar4 = 2;
        goto LAB_02c37340;
      }
    }
  }
  else {
    if (iVar1 < 6) {
      if (iVar1 == 4) {
        *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
        if ((lVar3 == 0) || (*(long *)(lVar3 + 0x38) == 0)) goto LAB_02c37358;
        GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0x38),1,0);
        uVar4 = *(undefined4 *)(lVar3 + 0x88);
        uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(uVar4,uVar2,0);
        *(undefined8 *)(param_1 + 0x18) = uVar2;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
        uVar4 = 5;
      }
      else {
        if (iVar1 != 5) {
          return 0;
        }
        *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
        if (lVar3 == 0) goto LAB_02c37358;
        uVar2 = Adventure_Reward_popup_FillExp
                          (lVar3,*(undefined4 *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x2c),
                           *(undefined4 *)(param_1 + 0x30));
        uVar2 = MonoBehaviour_StartCoroutine_0x6000d43(lVar3,uVar2,0);
        *(undefined8 *)(param_1 + 0x18) = uVar2;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
        uVar4 = 6;
      }
      goto LAB_02c37340;
    }
    if (iVar1 == 6) {
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if (lVar3 != 0) {
        uVar4 = *(undefined4 *)(lVar3 + 0x90);
        uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(uVar4,uVar2,0);
        *(undefined8 *)(param_1 + 0x18) = uVar2;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
        uVar4 = 7;
        goto LAB_02c37340;
      }
    }
    else {
      if (iVar1 != 7) {
        return 0;
      }
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if ((lVar3 != 0) && (*(long *)(lVar3 + 0x40) != 0)) {
        GameObject_SetActive_0x6000cfe(*(long *)(lVar3 + 0x40),1,0);
        *(undefined8 *)(lVar3 + 0x98) = 0;
        Managed_WriteBarrier((undefined8 *)(lVar3 + 0x98),0);
        return 0;
      }
    }
  }
LAB_02c37358:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

