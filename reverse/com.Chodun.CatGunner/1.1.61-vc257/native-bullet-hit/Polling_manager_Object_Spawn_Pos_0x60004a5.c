/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17e4c, Ghidra VA 02c17e4c. */

void Polling_manager_Object_Spawn_Pos_0x60004a5
               (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  long lVar1;
  long lVar2;
  
  lVar1 = Polling_manager_Object_Polling();
  if ((lVar1 != 0) && (lVar2 = GameObject_get_transform_0x6000cfb(lVar1,0), lVar2 != 0)) {
    Transform_set_position_0x6000f4e(param_1,param_2,param_3,lVar2,0);
    GameObject_SetActive_0x6000cfe(lVar1,1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

