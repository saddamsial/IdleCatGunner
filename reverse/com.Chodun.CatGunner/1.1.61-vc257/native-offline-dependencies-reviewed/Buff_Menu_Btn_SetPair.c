/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38568, Ghidra VA 02c38568. */

void Buff_Menu_Btn_SetPair(long param_1,long param_2,uint param_3)

{
  undefined *puVar1;
  ulong uVar2;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c081 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c081 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(param_1,0,0);
  if ((uVar2 & 1) != 0) {
    if (param_1 == 0) goto LAB_02c38638;
    GameObject_SetActive_0x6000cfe(param_1,param_3 & 1,0);
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(param_2,0,0);
  if ((uVar2 & 1) == 0) {
    return;
  }
  if (param_2 != 0) {
    GameObject_SetActive_0x6000cfe(param_2,(param_3 ^ 0xffffffff) & 1,0);
    return;
  }
LAB_02c38638:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

