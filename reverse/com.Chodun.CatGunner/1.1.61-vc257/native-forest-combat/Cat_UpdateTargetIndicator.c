/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b415f0, Ghidra VA 02c415f0. */

void Cat_UpdateTargetIndicator(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0ae & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0ae = 1;
  }
  uVar5 = *(undefined8 *)(param_1 + 0x110);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar2 & 1) == 0) {
    return;
  }
  uVar5 = *(undefined8 *)(param_1 + 0x1e0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  lVar3 = *(long *)(param_1 + 0x110);
  if ((uVar2 & 1) == 0) {
    if (lVar3 != 0) {
      uVar2 = GameObject_get_activeSelf_0x6000cff(lVar3,0);
      if ((uVar2 & 1) == 0) {
        return;
      }
      lVar3 = *(long *)(param_1 + 0x110);
      if (lVar3 != 0) {
        uVar5 = 0;
LAB_02c416fc:
        GameObject_SetActive_0x6000cfe(lVar3,uVar5,0);
        return;
      }
    }
  }
  else if (lVar3 != 0) {
    lVar3 = GameObject_get_transform_0x6000cfb(lVar3,0);
    if (((*(long *)(param_1 + 0x1e0) != 0) &&
        (lVar4 = Component_get_transform_0x6000c82(*(long *)(param_1 + 0x1e0),0), lVar4 != 0)) &&
       (Transform_get_position_0x6000f4d(lVar4,0), lVar3 != 0)) {
      Transform_set_position_0x6000f4e(lVar3,0);
      if (*(long *)(param_1 + 0x110) != 0) {
        uVar2 = GameObject_get_activeSelf_0x6000cff(*(long *)(param_1 + 0x110),0);
        if ((uVar2 & 1) != 0) {
          return;
        }
        lVar3 = *(long *)(param_1 + 0x110);
        if (lVar3 != 0) {
          uVar5 = 1;
          goto LAB_02c416fc;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

