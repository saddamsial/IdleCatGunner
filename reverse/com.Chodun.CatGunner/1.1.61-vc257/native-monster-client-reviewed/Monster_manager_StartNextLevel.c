/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4daf0, Ghidra VA 02c4daf0. */

void Monster_manager_StartNextLevel(long param_1)

{
  undefined8 uVar1;
  long lVar2;
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
  undefined8 uStack_18;
  
  uStack_18 = 0;
  lVar2 = *(long *)(param_1 + 0xd8);
  if (lVar2 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d45(param_1,lVar2,0);
  }
  *(undefined8 *)(param_1 + 0xd0) = 0;
  Monster_manager_WaveBaseHealth_return(&uStack_40,param_1,*(undefined4 *)(param_1 + 0x20));
  *(undefined8 *)(param_1 + 0x68) = uStack_38;
  *(undefined8 *)(param_1 + 0x60) = uStack_40;
  *(undefined8 *)(param_1 + 0x78) = uStack_28;
  *(undefined8 *)(param_1 + 0x70) = uStack_30;
  Managed_WriteBarrier(param_1 + 0x60,0);
  if (*(long *)(param_1 + 0xb0) != 0) {
    Monster_Game_Slider_Wave_Reload
              (*(long *)(param_1 + 0xb0),*(undefined4 *)(param_1 + 0x20),
               *(undefined4 *)(param_1 + 0x24));
    if (*(long *)(param_1 + 0xb0) != 0) {
      Monster_Game_Slider_Value_Reload(0);
      if (*(long *)(param_1 + 0xf8) != 0) {
        uStack_18 = ParticleSystem_get_main_0x6000017(*(long *)(param_1 + 0xf8),0);
        Monster_manager_MonsterColor_return(param_1);
        MinMaxGradient_op_Implicit_0x6000065(&uStack_78,0);
        uStack_a8 = uStack_70;
        uStack_b0 = uStack_78;
        uStack_98 = uStack_60;
        uStack_a0 = uStack_68;
        uStack_88 = uStack_50;
        uStack_90 = uStack_58;
        uStack_80 = uStack_48;
        MainModule_set_startColor_0x6000029(&uStack_18,&uStack_b0,0);
        uVar1 = Monster_manager_Level_Coroutine(param_1);
        *(undefined8 *)(param_1 + 0xd8) = uVar1;
        Managed_WriteBarrier((long *)(param_1 + 0xd8),uVar1);
        MonoBehaviour_StartCoroutine_0x6000d43(param_1,*(undefined8 *)(param_1 + 0xd8),0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

