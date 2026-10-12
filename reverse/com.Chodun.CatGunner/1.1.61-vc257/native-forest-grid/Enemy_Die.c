/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5cdbc, Ghidra VA 02c5cdbc. */

void Enemy_Die(undefined1 param_1 [16],undefined1 param_2 [16],undefined4 param_3,long param_4)

{
  undefined *puVar1;
  long lVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined8 uVar5;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c1f2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c1f2 = 1;
  }
  puVar1 = PTR_DAT_05e5d338;
  if (*(char *)(param_4 + 0x24) == '\0') {
    lVar2 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    if (**(char **)(lVar2 + 0xb8) != '\0') {
      *(undefined1 *)(param_4 + 0x24) = 1;
      if (*(char *)(param_4 + 0x98) == '\0') {
        uStack_48 = *(undefined8 *)(param_4 + 0x70);
        uStack_50 = *(undefined8 *)(param_4 + 0x68);
        uStack_38 = *(undefined8 *)(param_4 + 0x80);
        uVar5 = *(undefined8 *)(param_4 + 0x78);
        uStack_40 = uVar5;
        lVar2 = Component_get_transform_0x6000c82(param_4,0);
        uVar4 = (undefined4)uVar5;
        if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        uVar3 = Transform_get_position_0x6000f4d(lVar2,0);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uStack_68 = uStack_48;
        uStack_70 = uStack_50;
        uStack_58 = uStack_38;
        uStack_60 = uStack_40;
        Gamemanager_Get_Money_0x6000075(uVar3,uVar4,param_3,&uStack_70,0);
      }
      Enemy_Die_Reload(param_4);
    }
  }
  return;
}

