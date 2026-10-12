/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b560ec, Ghidra VA 02c560ec. */

void Raid_Boss_Reload(long param_1,undefined8 *param_2)

{
  long lVar1;
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
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  undefined8 uStack_20;
  undefined8 uStack_18;
  
  uStack_28 = param_2[1];
  uStack_30 = *param_2;
  uStack_18 = param_2[3];
  uStack_20 = param_2[2];
  lVar1 = *(long *)(param_1 + 0x20);
  InfVal_op_Implicit_0x600003f(&uStack_50,0,0);
  if (lVar1 != 0) {
    uStack_68 = uStack_28;
    uStack_70 = uStack_30;
    uStack_58 = uStack_18;
    uStack_60 = uStack_20;
    uStack_88 = uStack_48;
    uStack_90 = uStack_50;
    uStack_78 = uStack_38;
    uStack_80 = uStack_40;
    Enemy_Spawn_0x600097c(lVar1,&uStack_70,&uStack_90,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

