/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b66714, Ghidra VA 02c66714. */

void Bullet_HitSingle(undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4,
                     undefined8 param_5)

{
  char cVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c24e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c24e = 1;
  }
  uStack_58 = *(undefined8 *)(param_4 + 0x30);
  uStack_60 = *(undefined8 *)(param_4 + 0x28);
  uStack_48 = *(undefined8 *)(param_4 + 0x40);
  uStack_50 = *(undefined8 *)(param_4 + 0x38);
  uVar3 = *(undefined8 *)(param_4 + 0x48);
  cVar1 = *(char *)(param_4 + 0x24);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uStack_78 = uStack_58;
  uStack_80 = uStack_60;
  uStack_68 = uStack_48;
  uStack_70 = uStack_50;
  Gamemanager_Damage_Collider_0x6000085
            (param_1,param_2,param_3,param_5,&uStack_80,uVar3,cVar1 != '\0',0);
  Bullet_SpawnFX(param_1,param_2,param_3,param_4);
  Bullet_DieAndWait(param_4);
  return;
}

