/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4ba34, Ghidra VA 02c4ba34. */

void Ore_Spawn(undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4,int param_5,
              undefined8 param_6)

{
  undefined4 uVar1;
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
  
  lVar2 = *(long *)(param_4 + 0x38);
  uVar1 = 3;
  if (param_5 != 0) {
    uVar1 = 5;
  }
  InfVal_op_Implicit_0x600003f(&uStack_60,uVar1,0);
  InfVal_op_Implicit_0x600003f(&uStack_80,0,0);
  if (lVar2 != 0) {
    uStack_98 = uStack_58;
    uStack_a0 = uStack_60;
    uStack_88 = uStack_48;
    uStack_90 = uStack_50;
    uStack_b8 = uStack_78;
    uStack_c0 = uStack_80;
    uStack_a8 = uStack_68;
    uStack_b0 = uStack_70;
    Enemy_Spawn_0x600097c(lVar2,&uStack_a0,&uStack_c0,0);
    uVar1 = 10;
    if (param_5 == 0) {
      uVar1 = 1;
    }
    *(undefined4 *)(param_4 + 0x20) = uVar1;
    if (*(long *)(param_4 + 0x28) != 0) {
      SpriteRenderer_set_sprite_0x6000197(*(long *)(param_4 + 0x28),param_6,0);
      lVar2 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar2 != 0) {
        Transform_set_position_0x6000f4e(param_1,param_2,param_3,lVar2,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

