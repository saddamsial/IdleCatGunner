/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5e45c, Ghidra VA 02c5e45c. */

void Fish_Tank_StartAutoMergeChain(long param_1)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625c23b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c23b = 1;
  }
  if (*(long *)(param_1 + 0x58) == 0) {
    lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar2 == 0) {
LAB_02c5e564:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar3 = GameObject_get_activeInHierarchy_0x6000d00(lVar2,0);
    puVar1 = PTR_DAT_05e5dd38;
    if ((uVar3 & 1) != 0) {
      uVar4 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd38 + 0xb8);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Equality_0x6000dec(uVar4,0,0);
      if ((uVar3 & 1) == 0) {
        lVar2 = **(long **)(*(long *)puVar1 + 0xb8);
        if (lVar2 == 0) goto LAB_02c5e564;
        uVar3 = Fish_manager_get_is_AutoMergeAble();
        if (((uVar3 & 1) != 0) && (*(char *)(lVar2 + 0xb0) != '\0')) {
          uVar4 = Fish_Tank_AutoMergeRoutine(param_1);
          uVar4 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar4,0);
          *(undefined8 *)(param_1 + 0x58) = uVar4;
          Managed_WriteBarrier((long *)(param_1 + 0x58));
          return;
        }
      }
    }
  }
  return;
}

