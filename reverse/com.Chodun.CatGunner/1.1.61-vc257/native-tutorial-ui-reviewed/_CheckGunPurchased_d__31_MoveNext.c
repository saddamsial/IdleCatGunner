/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baff2c, Ghidra VA 02caff2c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _CheckGunPurchased_d__31_MoveNext(long param_1)

{
  uint uVar1;
  ulong uVar2;
  long lVar3;
  uint uVar4;
  long lVar5;
  undefined8 uVar6;
  
  if ((bRam000000000625c541 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c541 = 1;
  }
  if (1 < *(uint *)(param_1 + 0x10)) {
    return 0;
  }
  lVar5 = *(long *)(param_1 + 0x20);
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  if (lVar5 != 0) {
    if (*(int *)(lVar5 + 0x60) != 3) {
      return 0;
    }
    uVar6 = *(undefined8 *)(lVar5 + 0x58);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar2 & 1) == 0) {
      uVar1 = 0;
    }
    else {
      if (*(long *)(lVar5 + 0x58) == 0) goto LAB_02cb00c4;
      uVar1 = GameObject_get_activeInHierarchy_0x6000d00(*(long *)(lVar5 + 0x58),0);
    }
    if (*(long *)(lVar5 + 0x38) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(lVar5 + 0x38),uVar1 & 1,0);
      if ((**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) &&
         (lVar3 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) + 0x40), lVar3 != 0)) {
        uVar1 = *(uint *)(lVar3 + 0x18);
        if (0 < (int)uVar1) {
          uVar4 = 0;
          do {
            if (uVar1 == uVar4) {
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            if (*(int *)(lVar3 + (long)(int)uVar4 * 4 + 0x20) != -1) {
              if (*(long *)(lVar5 + 0x38) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(lVar5 + 0x38),0,0);
                Tutorial_manager_SetStep(lVar5,4);
                return 0;
              }
              goto LAB_02cb00c4;
            }
            uVar4 = uVar4 + 1;
          } while ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar4);
        }
        uVar6 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(_UNK_0116c060,uVar6,0);
        *(undefined8 *)(param_1 + 0x18) = uVar6;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar6);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
    }
  }
LAB_02cb00c4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

