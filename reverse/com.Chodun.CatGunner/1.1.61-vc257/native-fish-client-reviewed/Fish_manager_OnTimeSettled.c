/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5d50c, Ghidra VA 02c5d50c. */

void Fish_manager_OnTimeSettled(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c1fa & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c1fa = 1;
  }
  uVar3 = *(undefined8 *)(param_1 + 0x48);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0x48) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar2 = GameObject_get_activeInHierarchy_0x6000d00(*(long *)(param_1 + 0x48),0);
    if ((uVar2 & 1) != 0) {
      Fish_manager_Gacha_Btn_UI_Reload(param_1);
      return;
    }
  }
  Fish_manager_FreeGacha_Reload(param_1);
  return;
}

