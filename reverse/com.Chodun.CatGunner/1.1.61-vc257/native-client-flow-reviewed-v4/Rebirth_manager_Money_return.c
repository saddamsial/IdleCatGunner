/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b87564, Ghidra VA 02c87564. */

void Rebirth_manager_Money_return(undefined8 *param_1)

{
  undefined *puVar1;
  long lVar2;
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
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5dd60;
  if ((bRam000000000625c383 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd60);
    bRam000000000625c383 = 1;
  }
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if ((**(long **)(*(long *)puVar1 + 0xb8) != 0) &&
     (lVar2 = *(long *)(**(long **)(*(long *)puVar1 + 0xb8) + 0x20), lVar2 != 0)) {
    if (*(uint *)(lVar2 + 0x18) < 3) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(long *)(lVar2 + 0x30) != 0) {
      Rebirth_Upgrade_Info_Value_return_0x6000c9a(&uStack_80);
      uStack_38 = uStack_78;
      uStack_40 = uStack_80;
      uStack_28 = uStack_68;
      uStack_30 = uStack_70;
      InfVal_op_Implicit_0x600003f(&uStack_a0,100,0);
      uStack_58 = uStack_98;
      uStack_60 = uStack_a0;
      uStack_48 = uStack_88;
      uStack_50 = uStack_90;
      InfVal_op_Addition_0x6000072(&uStack_c0,&uStack_40,&uStack_60,0);
      param_1[1] = uStack_b8;
      *param_1 = uStack_c0;
      param_1[3] = uStack_a8;
      param_1[2] = uStack_b0;
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

