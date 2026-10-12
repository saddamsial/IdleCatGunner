/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5808c, Ghidra VA 02c5808c. */

undefined4 Raid_manager_GunNum_By_Index(uint param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  
  if ((bRam000000000625c1aa & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62648);
    bRam000000000625c1aa = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if (-1 < (int)param_1) {
    lVar4 = **(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Equality_0x6000dec(lVar4,0,0);
    if ((uVar2 & 1) == 0) {
      if (param_1 < 3) {
        if ((lVar4 == 0) || (lVar3 = *(long *)(lVar4 + 0x28), lVar3 == 0)) goto LAB_02c581ec;
        if ((int)param_1 < *(int *)(lVar3 + 0x18)) {
          lVar3 = lVar3 + (ulong)param_1 * 4;
          goto LAB_02c58178;
        }
      }
      else {
        if ((lVar4 == 0) || (lVar3 = *(long *)(lVar4 + 0x40), lVar3 == 0)) {
LAB_02c581ec:
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        param_1 = param_1 - 3;
        if ((int)param_1 < (int)*(uint *)(lVar3 + 0x18)) {
          if (*(uint *)(lVar3 + 0x18) <= param_1) {
LAB_02c581f0:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar3 = lVar3 + (ulong)param_1 * 4;
LAB_02c58178:
          return *(undefined4 *)(lVar3 + 0x20);
        }
        lVar3 = **(long **)(*(long *)PTR_DAT_05e62648 + 0xb8);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar2 = Object_op_Equality_0x6000dec(lVar3,0,0);
        if ((uVar2 & 1) == 0) {
          if (((*(long *)(lVar4 + 0x40) == 0) || (lVar3 == 0)) ||
             (lVar3 = *(long *)(lVar3 + 0x20), lVar3 == 0)) goto LAB_02c581ec;
          param_1 = param_1 - *(int *)(*(long *)(lVar4 + 0x40) + 0x18);
          if ((int)param_1 < (int)*(uint *)(lVar3 + 0x18)) {
            if (*(uint *)(lVar3 + 0x18) <= param_1) goto LAB_02c581f0;
            lVar3 = lVar3 + (long)(int)param_1 * 4;
            goto LAB_02c58178;
          }
        }
      }
    }
  }
  return 0xffffffff;
}

