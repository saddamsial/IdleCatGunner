/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b044f8, Ghidra VA 02c044f8. */

void Mission_Reward_Item_Dia_Spawn_Play(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long *plVar4;
  long lVar5;
  undefined8 uVar6;
  
  puVar2 = PTR_DAT_05e5e520;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625be5f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e520);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5bfa8);
    bRam000000000625be5f = 1;
  }
  uVar6 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar6,0,0);
  if ((uVar3 & 1) != 0) {
    return;
  }
  uVar6 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar3 & 1) == 0) {
    plVar4 = (long *)Component_get_transform_0x6000c82(param_1,0);
    if (plVar4 == (long *)0x0) goto LAB_02c045bc;
LAB_02c045d4:
    if (*plVar4 != *(long *)PTR_DAT_05e5bfa8) {
      plVar4 = (long *)0x0;
    }
  }
  else {
    if (*(long *)(param_1 + 0x28) == 0) goto LAB_02c0464c;
    plVar4 = (long *)GameObject_get_transform_0x6000cfb(*(long *)(param_1 + 0x28),0);
    if (plVar4 != (long *)0x0) goto LAB_02c045d4;
LAB_02c045bc:
    plVar4 = (long *)0x0;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(plVar4,0,0);
  if ((uVar3 & 1) != 0) {
    return;
  }
  lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
  if (lVar5 != 0) {
    Dia_Attraction_Dia_Spawn_0x600059a(lVar5,plVar4,8,0);
    return;
  }
LAB_02c0464c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

