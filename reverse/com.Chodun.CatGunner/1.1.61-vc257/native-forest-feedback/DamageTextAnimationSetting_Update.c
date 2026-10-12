/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a83144, Ghidra VA 02b83144. */

void DamageTextAnimationSetting_Update(void)

{
  long lVar1;
  
  lVar1 = DamageTextManager_get_Instance_0x60000d4();
  if (lVar1 != 0) {
    DamageTextManager_Update_0x60000dc();
    lVar1 = DamageTextMeshManager_get_Instance_0x60000f4();
    if (lVar1 != 0) {
      DamageTextMeshManager_UpdateMesh_0x60000fd();
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

