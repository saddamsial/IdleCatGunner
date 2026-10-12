/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b69d0c, Ghidra VA 02c69d0c. */

void Safe_manager_UI_Reload(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c297 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c297 = 1;
  }
  uVar4 = *(undefined8 *)(param_1 + 0x38);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0x38) == 0) goto LAB_02c69ddc;
    Safe_HUD_Reload();
  }
  uVar4 = *(undefined8 *)(param_1 + 0x30);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar2 & 1) == 0) {
    return;
  }
  if ((*(long *)(param_1 + 0x30) != 0) &&
     (lVar3 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar3 != 0)) {
    uVar2 = GameObject_get_activeInHierarchy_0x6000d00(lVar3,0);
    if ((uVar2 & 1) == 0) {
      return;
    }
    if (*(long *)(param_1 + 0x30) != 0) {
      Safe_UI_Reload();
      return;
    }
  }
LAB_02c69ddc:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

