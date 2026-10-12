/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b70278, Ghidra VA 02c70278. */

void Gun_Info_UI_onClick_TakeOut(long param_1)

{
  undefined *puVar1;
  int iVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625c2c0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62648);
    bRam000000000625c2c0 = 1;
  }
  if ((*(int *)(param_1 + 0x88) == 3) &&
     (uVar3 = Gun_Info_UI_Is_Still_Valid(param_1), puVar1 = PTR_DAT_05e62648, (uVar3 & 1) != 0)) {
    uVar4 = **(undefined8 **)(*(long *)PTR_DAT_05e62648 + 0xb8);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Equality_0x6000dec(uVar4,0,0);
    if ((uVar3 & 1) == 0) {
      if (**(long **)(*(long *)puVar1 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      iVar2 = Safe_manager_Take_Out_0x6000abe
                        (**(long **)(*(long *)puVar1 + 0xb8),*(undefined4 *)(param_1 + 0x90),0);
      if (iVar2 == -1) {
        return;
      }
    }
  }
  Gun_Info_UI_Close(param_1);
  return;
}

