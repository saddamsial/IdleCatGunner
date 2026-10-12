/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6e578, Ghidra VA 02c6e578. */

void StarUpgrade_manager_Open_Popup(long param_1,undefined4 param_2,uint param_3)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c2b0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63b38);
    bRam000000000625c2b0 = 1;
  }
  uVar3 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar3,0,0);
  puVar1 = PTR_DAT_05e63b38;
  if ((uVar2 & 1) != 0) {
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)puVar1,0);
    return;
  }
  if (*(long *)(param_1 + 0x28) != 0) {
    StarUpgrade_popup_Open(*(long *)(param_1 + 0x28),param_2,param_3 & 1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

