/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b51d80, Ghidra VA 02c51d80. */

void Raid_manager_Raid_Damage_return(undefined8 *param_1,uint param_2)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
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
  
  puVar1 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c1c1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1c1 = 1;
  }
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  if ((**(long **)(*(long *)puVar1 + 0xb8) != 0) &&
     (lVar3 = *(long *)(**(long **)(*(long *)puVar1 + 0xb8) + 0x20), lVar3 != 0)) {
    if (*(uint *)(lVar3 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar3 = *(long *)(lVar3 + (long)(int)param_2 * 8 + 0x20);
    if (lVar3 != 0) {
      uStack_48 = *(undefined8 *)(lVar3 + 0x28);
      uStack_50 = *(undefined8 *)(lVar3 + 0x20);
      uStack_38 = *(undefined8 *)(lVar3 + 0x38);
      uStack_40 = *(undefined8 *)(lVar3 + 0x30);
      if (*(int *)(*(long *)PTR_DAT_05e5e070 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Raid_manager_Is_Weak_Gun(param_2);
      if ((uVar2 & 1) != 0) {
        InfVal_op_Implicit_0x600003f(&uStack_90,10,0);
        uStack_68 = uStack_88;
        uStack_70 = uStack_90;
        uStack_58 = uStack_78;
        uStack_60 = uStack_80;
        InfVal_op_Multiply_0x6000074(&uStack_b0,&uStack_50,&uStack_70,0);
        uStack_50 = uStack_b0;
        uStack_48 = uStack_a8;
        uStack_40 = uStack_a0;
        uStack_38 = uStack_98;
      }
      param_1[1] = uStack_48;
      *param_1 = uStack_50;
      param_1[3] = uStack_38;
      param_1[2] = uStack_40;
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

