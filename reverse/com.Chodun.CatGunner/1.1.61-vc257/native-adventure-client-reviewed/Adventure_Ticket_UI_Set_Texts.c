/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2f804, Ghidra VA 02c2f804. */

void Adventure_Ticket_UI_Set_Texts(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  long *plVar2;
  ulong uVar3;
  undefined8 uVar4;
  ulong uVar5;
  
  if ((bRam000000000625c020 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c020 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if ((param_1 != 0) && (0 < (int)*(ulong *)(param_1 + 0x18))) {
    uVar5 = 0;
    uVar3 = *(ulong *)(param_1 + 0x18) & 0xffffffff;
    do {
      if (uVar3 <= uVar5) {
LAB_02c2f8dc:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      uVar4 = *(undefined8 *)(param_1 + 0x20 + uVar5 * 8);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
      if ((uVar3 & 1) != 0) {
        if (*(uint *)(param_1 + 0x18) <= uVar5) goto LAB_02c2f8dc;
        plVar2 = *(long **)(param_1 + 0x20 + uVar5 * 8);
        if (plVar2 == (long *)0x0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        (**(code **)(*plVar2 + 0x558))(plVar2,param_2,*(undefined8 *)(*plVar2 + 0x560));
      }
      uVar3 = (ulong)*(uint *)(param_1 + 0x18);
      uVar5 = uVar5 + 1;
    } while ((long)uVar5 < (long)(int)*(uint *)(param_1 + 0x18));
  }
  return;
}

