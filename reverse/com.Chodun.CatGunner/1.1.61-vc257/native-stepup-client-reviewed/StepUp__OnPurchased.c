/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba343c, Ghidra VA 02ca343c. */

void StepUp__OnPurchased(long param_1,uint param_2)

{
  ulong uVar1;
  long lVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625c49d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c49d = 1;
  }
  if (param_2 < 5) {
    lVar2 = *(long *)(param_1 + 0x38);
    if (lVar2 == 0) {
LAB_02ca3510:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined1 *)(lVar2 + (ulong)param_2 + 0x20) = 1;
    StepUp__Popup_Reload(param_1);
    StepUp__Hud_Reload(param_1);
    uVar3 = *(undefined8 *)(param_1 + 0x20);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar1 = Object_op_Inequality_0x6000ded(uVar3,0,0);
    if ((uVar1 & 1) != 0) {
      if ((*(long *)(param_1 + 0x20) == 0) ||
         (lVar2 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x20),0), lVar2 == 0))
      goto LAB_02ca3510;
      uVar1 = GameObject_get_activeInHierarchy_0x6000d00(lVar2,0);
      if ((uVar1 & 1) != 0) {
        StepUp__Banner_Reload(param_1);
        return;
      }
    }
  }
  return;
}

