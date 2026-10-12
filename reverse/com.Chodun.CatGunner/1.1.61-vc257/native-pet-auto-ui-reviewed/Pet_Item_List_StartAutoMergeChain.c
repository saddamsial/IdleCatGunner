/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b82428, Ghidra VA 02c82428. */

void Pet_Item_List_StartAutoMergeChain(long param_1)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625c366 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c366 = 1;
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar2 == 0) {
LAB_02c82550:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar3 = GameObject_get_activeInHierarchy_0x6000d00(lVar2,0);
    puVar1 = PTR_DAT_05e5d4d0;
    if ((uVar3 & 1) != 0) {
      lVar2 = *(long *)PTR_DAT_05e5d4d0;
      if (*(int *)(lVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar2 = *(long *)puVar1;
      }
      uVar4 = *(undefined8 *)(*(long *)(lVar2 + 0xb8) + 0x28);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)PTR_DAT_05e591c0);
      }
      uVar3 = Object_op_Equality_0x6000dec(uVar4,0,0);
      if ((uVar3 & 1) == 0) {
        lVar2 = *(long *)puVar1;
        if (*(int *)(lVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar2 = *(long *)puVar1;
        }
        lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x28);
        if (lVar2 == 0) goto LAB_02c82550;
        uVar3 = Pet_manager_get_AutoMerge_Active(lVar2,0);
        if ((uVar3 & 1) != 0) {
          uVar4 = Pet_Item_List_AutoMergeRoutine_0x6000c55(param_1);
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

