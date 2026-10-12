/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b04cf0, Ghidra VA 02c04cf0. */

void Mission_UI_Update(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 uVar4;
  long *plVar5;
  long lVar6;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625be67 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e61f40);
    bRam000000000625be67 = 1;
  }
  uStack_30 = 0;
  uStack_28 = 0;
  plVar5 = (long *)(param_1 + 0x20);
  lVar6 = *plVar5;
  uStack_38 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(lVar6,0,0);
  puVar1 = PTR_DAT_05e5dd50;
  if ((uVar3 & 1) != 0) {
    lVar6 = *(long *)PTR_DAT_05e5dd50;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar1;
    }
    *plVar5 = *(long *)(*(long *)(lVar6 + 0xb8) + 8);
    Managed_WriteBarrier(plVar5);
  }
  puVar2 = PTR_DAT_05e5d3c0;
  puVar1 = PTR_DAT_05e597d0;
  if (*plVar5 != 0) {
    Mission_manager_Mission_Reload_0x6000348(*plVar5,0);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    puVar2 = PTR_DAT_05e5a180;
    uStack_28 = Time_manager_get_Now_0x6000579(0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    puVar1 = PTR_DAT_05e61f40;
    uStack_38 = DateTime_get_Date_0x6000610(&uStack_28,0);
    uVar4 = DateTime_AddDays_0x60005fb(0x3ff0000000000000,&uStack_38,0);
    uStack_30 = DateTime_op_Subtraction_0x600063a(uVar4,uStack_28,0);
    plVar5 = *(long **)(param_1 + 0x30);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = TimeSpan_ToString_0x6000a8d(&uStack_30,*(undefined8 *)puVar1,0);
    if (plVar5 != (long *)0x0) {
      (**(code **)(*plVar5 + 0x558))(plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

