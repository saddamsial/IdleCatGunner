/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a83238, Ghidra VA 02b83238. */

void DamageTextAnimationSetting_OnDestroy(void)

{
  long lVar1;
  
  lVar1 = DamageTextManager_get_Instance_0x60000d4();
  if (lVar1 != 0) {
    *(undefined8 *)(lVar1 + 0x10) = 0;
    Managed_WriteBarrier((undefined8 *)(lVar1 + 0x10),0);
    *(undefined8 *)(lVar1 + 0x18) = 0;
    Managed_WriteBarrier((undefined8 *)(lVar1 + 0x18),0);
    lVar1 = DamageTextMeshManager_get_Instance_0x60000f4();
    if (lVar1 != 0) {
      DamageTextMeshManager_Destroy_0x60000fa();
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

