/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7e994, Ghidra VA 02b7e994. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Gamemanager_Money_Txt_Spawn
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined8 param_4)

{
  undefined *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625b8cb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d528);
    func_0x029f5a50(PTR_DAT_05e594b0);
    bRam000000000625b8cb = 1;
  }
  uVar2 = Camera_get_main_0x60002b1(0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar2,0,0);
  if ((uVar3 & 1) == 0) {
    if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Gamemanager_CanSpawnText_0x6000088(param_1,param_2,param_3,_UNK_0116c060);
    if ((uVar3 & 1) != 0) {
      lVar4 = DamageTextManager_get_Instance_0x60000d4();
      uVar2 = String_Concat_0x6000298(*(undefined8 *)PTR_DAT_05e5d528,param_4,0);
      if (lVar4 != 0) {
        DamageTextManager_ShowDamageText_0x60000e0
                  (param_1,param_2,param_3,lVar4,*(undefined8 *)PTR_DAT_05e594b0,uVar2);
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

