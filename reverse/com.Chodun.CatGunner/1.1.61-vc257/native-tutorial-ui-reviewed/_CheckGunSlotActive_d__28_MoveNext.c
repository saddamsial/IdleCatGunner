/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb0114, Ghidra VA 02cb0114. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _CheckGunSlotActive_d__28_MoveNext(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  ulong uVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  undefined8 uVar8;
  long lVar9;
  
  if ((bRam000000000625c542 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c542 = 1;
  }
  if (1 < *(uint *)(param_1 + 0x10)) {
    return 0;
  }
  lVar6 = *(long *)(param_1 + 0x20);
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  if (lVar6 != 0) {
    if (*(int *)(lVar6 + 0x60) != 2) {
      return 0;
    }
    if (*(long *)(lVar6 + 0x50) != 0) {
      lVar7 = *(long *)(lVar6 + 0x30);
      uVar3 = GameObject_get_activeInHierarchy_0x6000d00(*(long *)(lVar6 + 0x50),0);
      if (lVar7 != 0) {
        GameObject_SetActive_0x6000cfe(lVar7,uVar3 & 1,0);
        puVar2 = PTR_DAT_05e5dd40;
        puVar1 = PTR_DAT_05e591c0;
        uVar8 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
        if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar4 = Object_op_Inequality_0x6000ded(uVar8,0,0);
        if ((uVar4 & 1) != 0) {
          if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02cb02f8;
          lVar7 = *(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x98);
          if ((lVar7 != 0) && (0 < (int)*(ulong *)(lVar7 + 0x18))) {
            uVar4 = 0;
            uVar5 = *(ulong *)(lVar7 + 0x18) & 0xffffffff;
            do {
              if (uVar5 <= uVar4) {
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              lVar9 = *(long *)(lVar7 + 0x20 + uVar4 * 8);
              if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar5 = Object_op_Inequality_0x6000ded(lVar9,0,0);
              if ((uVar5 & 1) != 0) {
                if ((lVar9 == 0) ||
                   (lVar9 = Component_get_gameObject_0x6000c83(lVar9,0), lVar9 == 0))
                goto LAB_02cb02f8;
                uVar5 = GameObject_get_activeInHierarchy_0x6000d00(lVar9,0);
                if ((uVar5 & 1) != 0) {
                  if (*(long *)(lVar6 + 0x30) != 0) {
                    GameObject_SetActive_0x6000cfe(*(long *)(lVar6 + 0x30),0,0);
                    Tutorial_manager_SetStep(lVar6,3);
                    return 0;
                  }
                  goto LAB_02cb02f8;
                }
              }
              uVar5 = (ulong)*(uint *)(lVar7 + 0x18);
              uVar4 = uVar4 + 1;
            } while ((long)uVar4 < (long)(int)*(uint *)(lVar7 + 0x18));
          }
        }
        uVar8 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(_UNK_0116c060,uVar8,0);
        *(undefined8 *)(param_1 + 0x18) = uVar8;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar8);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
    }
  }
LAB_02cb02f8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

