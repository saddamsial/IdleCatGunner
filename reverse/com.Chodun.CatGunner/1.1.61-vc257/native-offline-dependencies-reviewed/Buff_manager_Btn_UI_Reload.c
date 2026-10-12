/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b378dc, Ghidra VA 02c378dc. */

void Buff_manager_Btn_UI_Reload(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c07a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c07a = 1;
  }
  uVar4 = *(undefined8 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) != 0) {
    if (*(long *)(param_1 + 0x20) == 0) goto LAB_02c379f0;
    Buff_Menu_Btn_Reload();
  }
  uVar2 = Buff_manager_get_IsSuperBuff(param_1);
  uVar4 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) != 0) {
    if (*(long *)(param_1 + 0x28) == 0) goto LAB_02c379f0;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),uVar2 & 1,0);
  }
  uVar4 = *(undefined8 *)(param_1 + 0x30);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) == 0) {
    return;
  }
  if (*(long *)(param_1 + 0x30) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),(uVar2 ^ 0xffffffff) & 1,0);
    return;
  }
LAB_02c379f0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

