/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b97ff8, Ghidra VA 02c97ff8. */

void Shop_manager_ApplyLuxuryUpgrade(void)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined2 *puVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar2 = PTR_DAT_05e5dd50;
  if ((bRam000000000625c44e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c44e = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  puVar5 = *(undefined2 **)(lVar3 + 0xb8);
  *puVar5 = 0x101;
  uVar7 = *(undefined8 *)(puVar5 + 4);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar4 & 1) != 0) {
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
    if (lVar3 == 0) goto LAB_02c981a0;
    Mission_manager_UI_Reload_0x600034f(lVar3,0);
  }
  if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Get_Dia_0x6000078(1000,0);
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar6 = *(long *)puVar1;
  uVar7 = *(undefined8 *)(*(long *)(lVar3 + 0xb8) + 8);
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0(lVar6);
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar4 & 1) != 0) {
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
    if (lVar3 == 0) {
LAB_02c981a0:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Mission_manager_Exp_Get(lVar3,300,0);
  }
  puVar2 = PTR_DAT_05e5d920;
  lVar3 = *(long *)PTR_DAT_05e5d920;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x50);
  if (lVar3 != 0) {
    (**(code **)(lVar3 + 0x18))(*(undefined8 *)(lVar3 + 0x40),*(undefined8 *)(lVar3 + 0x28));
  }
  SaveSystem_Save_0x600048a(0);
  return;
}

