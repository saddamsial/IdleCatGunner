/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7fe18, Ghidra VA 02b7fe18. */

void Gamemanager_Damage_Collider_0x6000086
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined8 param_4,
               undefined8 *param_5,uint param_6)

{
  undefined *puVar1;
  byte bVar2;
  undefined8 uVar3;
  long lVar4;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625b8c7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b8c7 = 1;
  }
  uStack_68 = param_5[1];
  uStack_70 = *param_5;
  uStack_58 = param_5[3];
  uStack_60 = param_5[2];
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  bVar2 = Gamemanager_Damage_Tag(param_4,&uStack_70);
  *(byte *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x170) = bVar2 & 1;
  if ((bVar2 & 1) != 0) {
    uVar3 = InfVal_InfVal_change_0x60000a8(param_5,0);
    lVar4 = *(long *)puVar1;
    if ((param_6 & 1) != 0) {
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0(lVar4);
      }
      Gamemanager_Critical_Txt_Spawn(param_1,param_2,param_3,uVar3);
      return;
    }
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0(lVar4);
    }
    Gamemanager_Damage_Txt_Spawn(param_1,param_2,param_3,uVar3);
    return;
  }
  return;
}

