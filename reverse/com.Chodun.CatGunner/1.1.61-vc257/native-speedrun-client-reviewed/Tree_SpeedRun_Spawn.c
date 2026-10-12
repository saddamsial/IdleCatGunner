/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bab994, Ghidra VA 02cab994. */

void Tree_SpeedRun_Spawn(long param_1,undefined8 *param_2,undefined8 *param_3,undefined8 param_4)

{
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if (*(long *)(param_1 + 0x20) != 0) {
    uStack_38 = param_2[1];
    uStack_40 = *param_2;
    uStack_28 = param_2[3];
    uStack_30 = param_2[2];
    uStack_58 = param_3[1];
    uStack_60 = *param_3;
    uStack_48 = param_3[3];
    uStack_50 = param_3[2];
    Enemy_Spawn_0x600097c(*(long *)(param_1 + 0x20),&uStack_40,&uStack_60,0);
    if (*(long *)(param_1 + 0x28) != 0) {
      SpriteRenderer_set_sprite_0x6000197(*(long *)(param_1 + 0x28),param_4,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

