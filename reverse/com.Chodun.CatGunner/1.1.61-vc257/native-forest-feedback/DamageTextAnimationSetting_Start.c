/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a82d58, Ghidra VA 02b82d58. */

void DamageTextAnimationSetting_Start(long param_1)

{
  long lVar1;
  
  lVar1 = DamageTextMeshManager_get_Instance_0x60000f4();
  if ((*(long *)(param_1 + 0x20) != 0) && (lVar1 != 0)) {
    DamageTextMeshManager_Init_0x60000f8
              (lVar1,*(undefined8 *)(param_1 + 0x28),
               *(undefined4 *)(*(long *)(param_1 + 0x20) + 0x18),*(undefined4 *)(param_1 + 0x30));
    lVar1 = DamageTextManager_get_Instance_0x60000d4();
    if (lVar1 != 0) {
      DamageTextManager_Init(lVar1,*(undefined8 *)(param_1 + 0x20));
      lVar1 = DamageTextSpriteManager_get_Instance_0x6000105();
      if ((*(long *)(param_1 + 0x20) != 0) && (lVar1 != 0)) {
        DamageTextSpriteManager_Init_0x6000107
                  (lVar1,*(undefined4 *)(*(long *)(param_1 + 0x20) + 0x18));
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

