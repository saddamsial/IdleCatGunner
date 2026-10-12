/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5fcf0, Ghidra VA 02c5fcf0. */

void Fish_DeletePopup_Close(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c214 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c214 = 1;
  }
  *(undefined8 *)(param_1 + 0x40) = 0;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x40),0);
  lVar3 = Component_get_gameObject_0x6000c83(param_1,0);
  puVar2 = PTR_DAT_05e5dd38;
  puVar1 = PTR_DAT_05e591c0;
  if (lVar3 != 0) {
    GameObject_SetActive_0x6000cfe(lVar3,0,0);
    uVar5 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar5,0,0);
    if ((uVar4 & 1) == 0) {
      return;
    }
    if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
      uVar5 = *(undefined8 *)(**(long **)(*(long *)puVar2 + 0xb8) + 0xa0);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Object_op_Inequality_0x6000ded(uVar5,0,0);
      if ((uVar4 & 1) == 0) {
        return;
      }
      if ((**(long **)(*(long *)puVar2 + 0xb8) != 0) &&
         (*(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0xa0) != 0)) {
        Fish_Tank_ClearPendingDelete();
        if ((**(long **)(*(long *)puVar2 + 0xb8) != 0) &&
           (*(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0xa0) != 0)) {
          Fish_Tank_StartAutoMergeChain();
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

