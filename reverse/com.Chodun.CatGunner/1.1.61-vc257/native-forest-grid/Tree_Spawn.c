/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2babdac, Ghidra VA 02cabdac. */

void Tree_Spawn(undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4,
               undefined8 *param_5,undefined8 *param_6,undefined8 param_7)

{
  long lVar1;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if (*(long *)(param_4 + 0x20) != 0) {
    uStack_48 = param_5[1];
    uStack_50 = *param_5;
    uStack_38 = param_5[3];
    uStack_40 = param_5[2];
    uStack_68 = param_6[1];
    uStack_70 = *param_6;
    uStack_58 = param_6[3];
    uStack_60 = param_6[2];
    Enemy_Spawn(*(long *)(param_4 + 0x20),&uStack_50,&uStack_70,0);
    lVar1 = Component_get_transform_0x6000c82(param_4,0);
    if (lVar1 != 0) {
      Transform_set_localPosition_0x6000f50(param_1,param_2,param_3,lVar1,0);
      if (*(long *)(param_4 + 0x28) != 0) {
        SpriteRenderer_set_sprite_0x6000197(*(long *)(param_4 + 0x28),param_7,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

