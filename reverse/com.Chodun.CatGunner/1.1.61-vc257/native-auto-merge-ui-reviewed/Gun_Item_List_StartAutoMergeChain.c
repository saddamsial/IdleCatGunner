/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b75d6c, Ghidra VA 02c75d6c. */

void Gun_Item_List_StartAutoMergeChain(long param_1)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625c2f3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2f3 = 1;
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar2 == 0) {
LAB_02c75e70:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar3 = GameObject_get_activeInHierarchy_0x6000d00(lVar2,0);
    puVar1 = PTR_DAT_05e5dd40;
    if ((uVar3 & 1) != 0) {
      uVar4 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Equality_0x6000dec(uVar4,0,0);
      if ((uVar3 & 1) == 0) {
        if (**(long **)(*(long *)puVar1 + 0xb8) == 0) goto LAB_02c75e70;
        uVar3 = Gun_manager_get_AutoMerge_Active_0x6000a62(**(long **)(*(long *)puVar1 + 0xb8),0);
        if ((uVar3 & 1) != 0) {
          uVar4 = Gun_Item_List_AutoMergeRoutine(param_1);
          uVar4 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar4,0);
          *(undefined8 *)(param_1 + 0x48) = uVar4;
          Managed_WriteBarrier((long *)(param_1 + 0x48));
          return;
        }
      }
    }
  }
  return;
}

