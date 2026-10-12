/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7f278, Ghidra VA 02b7f278. */

void Gamemanager_Lose_Dia(int param_1,undefined4 param_2)

{
  undefined *puVar1;
  int iVar2;
  undefined4 uVar3;
  long lVar4;
  long lVar5;
  float fVar6;
  undefined1 auVar7 [16];
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625b8be & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5d548);
    bRam000000000625b8be = 1;
  }
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  iVar2 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x90),
                     *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x98),0);
  auVar7 = ObscuredInt_op_Implicit_0x6000411(iVar2 - param_1,0);
  lVar4 = *(long *)puVar1;
  *(undefined1 (*) [16])(*(long *)(lVar4 + 0xb8) + 0x90) = auVar7;
  lVar4 = *(long *)(lVar4 + 0xb8);
  iVar2 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(lVar4 + 0xb0),*(undefined8 *)(lVar4 + 0xb8),0);
  auVar7 = ObscuredInt_op_Implicit_0x6000411(iVar2 + param_1 * 3,0);
  lVar4 = *(long *)puVar1;
  *(undefined1 (*) [16])(*(long *)(lVar4 + 0xb8) + 0xb0) = auVar7;
  lVar5 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x10);
  if (lVar5 != 0) {
    (**(code **)(lVar5 + 0x18))(*(undefined8 *)(lVar5 + 0x40),*(undefined8 *)(lVar5 + 0x28));
    lVar4 = *(long *)puVar1;
  }
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  uVar3 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x90),
                     *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x98),0);
  if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  AppsFlyerInit_SendLog_UseGem_0x600022a(param_2,param_1,*(undefined8 *)PTR_DAT_05e5d548,uVar3,0);
  fVar6 = (float)Time_get_realtimeSinceStartup_0x6000ef0(0);
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  if (fVar6 - *(float *)(*(long *)(lVar4 + 0xb8) + 0x158) < 5.0) {
    return;
  }
  uVar3 = Time_get_realtimeSinceStartup_0x6000ef0(0);
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  *(undefined4 *)(*(long *)(lVar4 + 0xb8) + 0x158) = uVar3;
  SaveSystem_Save_0x600048a(0);
  return;
}

