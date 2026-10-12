/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6007c, Ghidra VA 02c6007c. */

void Fish_DeleteZone_SetHighlight(long param_1,ulong param_2)

{
  undefined *puVar1;
  ulong uVar2;
  long *plVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined8 uVar8;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c216 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c216 = 1;
  }
  uVar8 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar8,0,0);
  if ((uVar2 & 1) != 0) {
    plVar3 = *(long **)(param_1 + 0x28);
    if ((param_2 & 1) == 0) {
      puVar4 = (undefined4 *)(param_1 + 0x30);
      puVar5 = (undefined4 *)(param_1 + 0x34);
      puVar6 = (undefined4 *)(param_1 + 0x38);
      puVar7 = (undefined4 *)(param_1 + 0x3c);
    }
    else {
      puVar4 = (undefined4 *)(param_1 + 0x40);
      puVar5 = (undefined4 *)(param_1 + 0x44);
      puVar6 = (undefined4 *)(param_1 + 0x48);
      puVar7 = (undefined4 *)(param_1 + 0x4c);
    }
    if (plVar3 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02c60148. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*plVar3 + 0x2a8))
                (*puVar4,*puVar5,*puVar6,*puVar7,plVar3,*(undefined8 *)(*plVar3 + 0x2b0));
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

