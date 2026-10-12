/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5eeb0, Ghidra VA 02c5eeb0. */

void Fish_manager_ReloadFishUI(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c20a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c20a = 1;
  }
  uVar3 = *(undefined8 *)(param_1 + 0x48);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0x48) == 0) goto LAB_02c5ef6c;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),1,0);
  }
  uVar3 = *(undefined8 *)(param_1 + 0xa0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0xa0) == 0) {
LAB_02c5ef6c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Fish_Tank_ReloadAll();
  }
  Fish_manager_Gacha_Btn_UI_Reload(param_1);
  Fish_manager_UpdateStatTexts(param_1);
  return;
}

