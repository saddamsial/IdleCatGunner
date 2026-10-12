/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba6f08, Ghidra VA 02ca6f08. */

void WeeklyShop_Btn_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c4da & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c4da = 1;
  }
  uVar5 = *(undefined8 *)(param_1 + 0x40);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Equality_0x6000dec(uVar5,0,0);
  puVar2 = PTR_DAT_05e5dd40;
  if ((uVar4 & 1) != 0) {
    return;
  }
  uVar5 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar4 & 1) == 0) {
    uVar3 = 0;
  }
  else {
    if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02ca7004;
    uVar3 = Gun_manager_Has_Degree_Or_Higher_0x6000a82(**(long **)(*(long *)puVar2 + 0xb8),3,0);
  }
  if (*(long *)(param_1 + 0x40) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),uVar3 & 1,0);
    return;
  }
LAB_02ca7004:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

