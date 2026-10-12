/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17eb0, Ghidra VA 02c17eb0. */

void Polling_manager_Object_Spawn_Pos_0x60004a6
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,float param_4)

{
  long lVar1;
  long lVar2;
  long lVar3;
  
  lVar1 = Polling_manager_Object_Polling();
  if ((lVar1 != 0) && (lVar2 = GameObject_get_transform_0x6000cfb(lVar1,0), lVar2 != 0)) {
    Transform_set_position_0x6000f4e(param_1,param_2,param_3,lVar2,0);
    lVar2 = GameObject_get_transform_0x6000cfb(lVar1,0);
    if (cRam000000000625b279 == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b279 = '\x01';
    }
    if (lVar2 != 0) {
      lVar3 = *(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      Transform_set_localScale_0x6000f5e
                (*(float *)(lVar3 + 0xc) * param_4,*(float *)(lVar3 + 0x10) * param_4,
                 *(float *)(lVar3 + 0x14) * param_4,lVar2,0);
      GameObject_SetActive_0x6000cfe(lVar1,1,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

