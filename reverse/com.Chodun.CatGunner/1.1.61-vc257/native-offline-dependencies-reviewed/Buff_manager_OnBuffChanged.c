/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3773c, Ghidra VA 02c3773c. */

void Buff_manager_OnBuffChanged(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c078 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c078 = 1;
  }
  puVar3 = PTR_DAT_05e5d5b0;
  puVar1 = PTR_DAT_05e591c0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_InvalidateMoneyCache_0x6000071(0);
  uVar7 = *(undefined8 *)(*(long *)(*(long *)puVar3 + 0xb8) + 8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar4 & 1) != 0) {
    lVar5 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 8);
    if (lVar5 == 0) goto LAB_02c37888;
    Cat_manager_Balance_Reload_0x6000779(lVar5,0);
  }
  puVar2 = PTR_DAT_05e5d4e8;
  lVar5 = *(long *)PTR_DAT_05e5d4e8;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  lVar6 = *(long *)puVar1;
  uVar7 = **(undefined8 **)(lVar5 + 0xb8);
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0(lVar6);
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar4 & 1) == 0) {
    return;
  }
  lVar5 = *(long *)puVar2;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  if (**(long **)(lVar5 + 0xb8) != 0) {
    Upgrade_manager_UI_Reload_0x6000f8e(**(long **)(lVar5 + 0xb8),0);
    return;
  }
LAB_02c37888:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

