/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7fba8, Ghidra VA 02b7fba8. */

void Gamemanager_Damage_Collider_0x6000085
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined8 param_4,
               undefined8 *param_5,undefined8 param_6,uint param_7)

{
  int iVar1;
  undefined *puVar2;
  byte bVar3;
  long lVar4;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625b8c6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b8c6 = 1;
  }
  uStack_68 = param_5[1];
  uStack_70 = *param_5;
  uStack_58 = param_5[3];
  uStack_60 = param_5[2];
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  bVar3 = Gamemanager_Damage_Tag(param_4,&uStack_70);
  lVar4 = *(long *)puVar2;
  *(byte *)(*(long *)(lVar4 + 0xb8) + 0x170) = bVar3 & 1;
  if ((bVar3 & 1) != 0) {
    iVar1 = *(int *)(lVar4 + 0xe4);
    if ((param_7 & 1) != 0) {
      if (iVar1 == 0) {
        func_0x029f5bd0();
      }
      Gamemanager_Critical_Txt_Spawn(param_1,param_2,param_3,param_6);
      return;
    }
    if (iVar1 == 0) {
      func_0x029f5bd0();
    }
    Gamemanager_Damage_Txt_Spawn(param_1,param_2,param_3,param_6);
    return;
  }
  return;
}

