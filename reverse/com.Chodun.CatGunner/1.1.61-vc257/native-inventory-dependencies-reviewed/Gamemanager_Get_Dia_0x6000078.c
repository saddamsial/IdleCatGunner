/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7ed10, Ghidra VA 02b7ed10. */

void Gamemanager_Get_Dia_0x6000078(int param_1)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  float fVar4;
  undefined4 uVar5;
  undefined1 auVar6 [16];
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625b8b9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b8b9 = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  iVar2 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(*(long *)(lVar3 + 0xb8) + 0x90),
                     *(undefined8 *)(*(long *)(lVar3 + 0xb8) + 0x98),0);
  auVar6 = ObscuredInt_op_Implicit_0x6000411(iVar2 + param_1,0);
  lVar3 = *(long *)puVar1;
  *(undefined1 (*) [16])(*(long *)(lVar3 + 0xb8) + 0x90) = auVar6;
  lVar3 = *(long *)(lVar3 + 0xb8);
  iVar2 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(lVar3 + 0xa0),*(undefined8 *)(lVar3 + 0xa8),0);
  auVar6 = ObscuredInt_op_Implicit_0x6000411(iVar2 + param_1 * 3,0);
  lVar3 = *(long *)puVar1;
  *(undefined1 (*) [16])(*(long *)(lVar3 + 0xb8) + 0xa0) = auVar6;
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
  if (lVar3 != 0) {
    (**(code **)(lVar3 + 0x18))(*(undefined8 *)(lVar3 + 0x40),*(undefined8 *)(lVar3 + 0x28));
  }
  fVar4 = (float)Time_get_realtimeSinceStartup_0x6000ef0(0);
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  if (fVar4 - *(float *)(*(long *)(lVar3 + 0xb8) + 0x158) < 5.0) {
    return;
  }
  uVar5 = Time_get_realtimeSinceStartup_0x6000ef0(0);
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  *(undefined4 *)(*(long *)(lVar3 + 0xb8) + 0x158) = uVar5;
  SaveSystem_Save_0x600048a(0);
  return;
}

