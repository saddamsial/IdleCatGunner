/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6fc9c, Ghidra VA 02c6fc9c. */

void Gun_Info_UI_Buttons_Reload(long param_1)

{
  int iVar1;
  undefined *puVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  ulong uVar7;
  undefined8 uVar8;
  uint uVar9;
  
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c2be & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2be = 1;
  }
  uVar3 = Gun_Info_UI_Is_Paused_Now_0x6000aff(param_1);
  uVar4 = Gun_Info_UI_Can_Toggle_Pause(param_1);
  uVar5 = Gun_Info_UI_get_Content_Open_0x6000afe();
  uVar8 = *(undefined8 *)(param_1 + 0x80);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar8,0,0);
  if ((uVar4 & 1) == 0) {
    uVar5 = 0;
    uVar9 = 0;
  }
  else {
    uVar9 = (uVar3 | uVar5) ^ 1;
    uVar5 = (uVar3 ^ 1) & (uVar5 | uVar6 ^ 1);
  }
  iVar1 = *(int *)(param_1 + 0x88);
  uVar8 = *(undefined8 *)(param_1 + 0x60);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar7 = Object_op_Inequality_0x6000ded(uVar8,0,0);
  if ((uVar7 & 1) != 0) {
    if (*(long *)(param_1 + 0x60) == 0) goto LAB_02c6feb8;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x60),uVar3 & 1,0);
  }
  uVar8 = *(undefined8 *)(param_1 + 0x68);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar7 = Object_op_Inequality_0x6000ded(uVar8,0,0);
  if ((uVar7 & 1) != 0) {
    if (*(long *)(param_1 + 0x68) == 0) goto LAB_02c6feb8;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),iVar1 == 3,0);
  }
  uVar8 = *(undefined8 *)(param_1 + 0x70);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar7 = Object_op_Inequality_0x6000ded(uVar8,0,0);
  if ((uVar7 & 1) != 0) {
    if (*(long *)(param_1 + 0x70) == 0) goto LAB_02c6feb8;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x70),uVar3 & uVar4 & 1,0);
  }
  uVar8 = *(undefined8 *)(param_1 + 0x78);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar7 = Object_op_Inequality_0x6000ded(uVar8,0,0);
  if ((uVar7 & 1) != 0) {
    if (*(long *)(param_1 + 0x78) == 0) goto LAB_02c6feb8;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x78),uVar5 & 1,0);
  }
  uVar8 = *(undefined8 *)(param_1 + 0x80);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar7 = Object_op_Inequality_0x6000ded(uVar8,0,0);
  if ((uVar7 & 1) == 0) {
    return;
  }
  if (*(long *)(param_1 + 0x80) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x80),uVar6 & uVar9 & 1,0);
    return;
  }
LAB_02c6feb8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

