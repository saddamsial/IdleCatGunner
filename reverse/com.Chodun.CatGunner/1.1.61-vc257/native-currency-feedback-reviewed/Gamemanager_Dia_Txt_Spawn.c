/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7eed4, Ghidra VA 02b7eed4. */

void Gamemanager_Dia_Txt_Spawn
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  long lVar4;
  undefined4 uStack_34;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625b8cc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d530);
    func_0x029f5a50(PTR_DAT_05e5d538);
    bRam000000000625b8cc = 1;
  }
  uVar2 = Camera_get_main_0x60002b1(0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar2,0,0);
  puVar1 = PTR_DAT_05e5d530;
  if ((uVar3 & 1) != 0) {
    lVar4 = DamageTextManager_get_Instance_0x60000d4();
    uStack_34 = param_4;
    uVar2 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_34);
    uVar2 = String_Format_0x600029c(*(undefined8 *)puVar1,uVar2,0);
    if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    DamageTextManager_ShowDamageText_0x60000e0
              (param_1,param_2,param_3,lVar4,*(undefined8 *)PTR_DAT_05e5d538,uVar2);
  }
  return;
}

