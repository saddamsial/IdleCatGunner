/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9b2f0, Ghidra VA 02b9b2f0. */

void BounceBtn_Size_reload(undefined1 param_1 [16],undefined4 param_2,float param_3,long param_4)

{
  long lVar1;
  undefined4 uVar2;
  float fVar3;
  
  if (*(char *)(param_4 + 0x4c) != '\0') {
    return;
  }
  lVar1 = Component_get_transform_0x6000c82(param_4,0);
  if (lVar1 != 0) {
    uVar2 = Transform_get_localScale_0x6000f5d(lVar1,0);
    *(undefined4 *)(param_4 + 0x34) = uVar2;
    lVar1 = Component_get_transform_0x6000c82(param_4,0);
    if (lVar1 != 0) {
      Transform_get_localScale_0x6000f5d(lVar1,0);
      *(undefined4 *)(param_4 + 0x38) = param_2;
      lVar1 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar1 != 0) {
        Transform_get_localScale_0x6000f5d(lVar1,0);
        fVar3 = *(float *)(param_4 + 0x28);
        *(undefined1 *)(param_4 + 0x4c) = 1;
        *(float *)(param_4 + 0x3c) = param_3;
        *(float *)(param_4 + 0x40) = *(float *)(param_4 + 0x34) * fVar3;
        *(float *)(param_4 + 0x44) = fVar3 * *(float *)(param_4 + 0x38);
        *(float *)(param_4 + 0x48) = param_3 * fVar3;
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

