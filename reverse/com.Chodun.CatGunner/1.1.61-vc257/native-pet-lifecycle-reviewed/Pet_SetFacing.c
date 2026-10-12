/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7a9d8, Ghidra VA 02c7a9d8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Pet_SetFacing(float param_1,long param_2)

{
  undefined4 uVar1;
  long lVar2;
  undefined4 uVar3;
  
  if (ABS(param_1) < _UNK_0116c094) {
    return;
  }
  lVar2 = *(long *)(param_2 + 0x30);
  if (lVar2 != 0) {
    if (*(uint *)(lVar2 + 0x18) <= *(uint *)(param_2 + 0x20)) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar2 = *(long *)(lVar2 + (long)(int)*(uint *)(param_2 + 0x20) * 8 + 0x20);
    if ((lVar2 != 0) && (lVar2 = GameObject_get_transform_0x6000cfb(lVar2,0), lVar2 != 0)) {
      uVar3 = Transform_get_localEulerAngles_0x6000f53(lVar2,0);
      uVar1 = 0;
      if (param_1 <= 0.0) {
        uVar1 = 0x43340000;
      }
      Transform_set_localEulerAngles_0x6000f54(uVar3,uVar1,lVar2,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

