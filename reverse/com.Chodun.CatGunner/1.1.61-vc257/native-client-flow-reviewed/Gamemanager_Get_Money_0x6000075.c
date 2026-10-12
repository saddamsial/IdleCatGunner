/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7e82c, Ghidra VA 02b7e82c. */

void Gamemanager_Get_Money_0x6000075
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined8 *param_4)

{
  undefined *puVar1;
  undefined8 uVar2;
  long lVar3;
  long lVar4;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625b8b6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b8b6 = 1;
  }
  uStack_58 = param_4[1];
  uStack_60 = *param_4;
  uStack_48 = param_4[3];
  uStack_50 = param_4[2];
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uStack_98 = uStack_58;
  uStack_a0 = uStack_60;
  uStack_88 = uStack_48;
  uStack_90 = uStack_50;
  Gamemanager_MoneyValue_return(&uStack_80,&uStack_a0);
  param_4[1] = uStack_78;
  *param_4 = uStack_80;
  param_4[3] = uStack_68;
  param_4[2] = uStack_70;
  InfVal_op_Addition_0x6000072(&uStack_c0,*(long *)(*(long *)puVar1 + 0xb8) + 0x30,param_4,0);
  lVar3 = *(long *)puVar1;
  lVar4 = *(long *)(lVar3 + 0xb8);
  *(undefined8 *)(lVar4 + 0x38) = uStack_b8;
  *(undefined8 *)(lVar4 + 0x30) = uStack_c0;
  *(undefined8 *)(lVar4 + 0x48) = uStack_a8;
  *(undefined8 *)(lVar4 + 0x40) = uStack_b0;
  Managed_WriteBarrier(*(long *)(lVar3 + 0xb8) + 0x30,0);
  InfVal_op_Addition_0x6000072(&uStack_e0,*(long *)(*(long *)puVar1 + 0xb8) + 0x50,param_4,0);
  lVar3 = *(long *)puVar1;
  lVar4 = *(long *)(lVar3 + 0xb8);
  *(undefined8 *)(lVar4 + 0x58) = uStack_d8;
  *(undefined8 *)(lVar4 + 0x50) = uStack_e0;
  *(undefined8 *)(lVar4 + 0x68) = uStack_c8;
  *(undefined8 *)(lVar4 + 0x60) = uStack_d0;
  Managed_WriteBarrier(*(long *)(lVar3 + 0xb8) + 0x50,0);
  lVar3 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
  if (lVar3 != 0) {
    (**(code **)(lVar3 + 0x18))(*(undefined8 *)(lVar3 + 0x40),*(undefined8 *)(lVar3 + 0x28));
  }
  uVar2 = InfVal_InfVal_change_0x60000a8(param_4,0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  Gamemanager_Money_Txt_Spawn_0x600008a(param_1,param_2,param_3,uVar2);
  return;
}

