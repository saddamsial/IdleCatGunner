/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b81918, Ghidra VA 02c81918. */

undefined8
_PressScaleAnim_d__53_MoveNext
          (undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,long param_4)

{
  long lVar1;
  long lVar2;
  undefined4 uVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  
  lVar2 = *(long *)(param_4 + 0x20);
  if (*(int *)(param_4 + 0x10) == 1) {
    fVar7 = *(float *)(param_4 + 0x44);
    *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
  }
  else {
    if (*(int *)(param_4 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
    if ((lVar2 == 0) || (lVar1 = Component_get_transform_0x6000c82(lVar2,0), lVar1 == 0))
    goto LAB_02c81aa8;
    uVar3 = Transform_get_localScale_0x6000f5d(lVar1,0);
    fVar7 = 0.0;
    *(undefined4 *)(param_4 + 0x38) = uVar3;
    *(undefined4 *)(param_4 + 0x3c) = param_2;
    *(undefined4 *)(param_4 + 0x40) = param_3;
    *(undefined4 *)(param_4 + 0x44) = 0;
  }
  if (fVar7 < *(float *)(param_4 + 0x28)) {
    fVar4 = (float)Time_get_unscaledDeltaTime_0x6000ee8(0);
    *(float *)(param_4 + 0x44) = fVar7 + fVar4;
    if (lVar2 != 0) {
      fVar8 = *(float *)(param_4 + 0x28);
      lVar2 = Component_get_transform_0x6000c82(lVar2,0);
      if (lVar2 != 0) {
        fVar8 = (fVar7 + fVar4) / fVar8;
        fVar7 = 1.0;
        if (fVar8 <= 1.0) {
          fVar7 = fVar8;
        }
        fVar4 = 0.0;
        if (0.0 <= fVar8) {
          fVar4 = fVar7;
        }
        fVar7 = 0.0;
        if (0.0 <= fVar4) {
          fVar7 = fVar4;
        }
        fVar4 = fVar7 * fVar7 * 3.0 - fVar7 * fVar7 * (fVar7 + fVar7);
        fVar4 = fVar4 + (1.0 - fVar4) * 0.0;
        fVar7 = 1.0;
        if (fVar4 <= 1.0) {
          fVar7 = fVar4;
        }
        fVar5 = (float)*(undefined8 *)(param_4 + 0x38);
        fVar6 = (float)((ulong)*(undefined8 *)(param_4 + 0x38) >> 0x20);
        fVar8 = 0.0;
        if (0.0 <= fVar4) {
          fVar8 = fVar7;
        }
        fVar6 = fVar6 + ((float)((ulong)*(undefined8 *)(param_4 + 0x2c) >> 0x20) - fVar6) * fVar8;
        Transform_set_localScale_0x6000f5e
                  (CONCAT44(fVar6,fVar5 + ((float)*(undefined8 *)(param_4 + 0x2c) - fVar5) * fVar8),
                   fVar6,*(float *)(param_4 + 0x40) +
                         fVar8 * (*(float *)(param_4 + 0x34) - *(float *)(param_4 + 0x40)),lVar2,0);
        *(undefined8 *)(param_4 + 0x18) = 0;
        Managed_WriteBarrier((undefined8 *)(param_4 + 0x18),0);
        *(undefined4 *)(param_4 + 0x10) = 1;
        return 1;
      }
    }
  }
  else if ((lVar2 != 0) && (lVar1 = Component_get_transform_0x6000c82(lVar2,0), lVar1 != 0)) {
    Transform_set_localScale_0x6000f5e
              (*(undefined4 *)(param_4 + 0x2c),*(undefined4 *)(param_4 + 0x30),
               *(undefined4 *)(param_4 + 0x34),lVar1,0);
    *(undefined8 *)(lVar2 + 0xd0) = 0;
    Managed_WriteBarrier((undefined8 *)(lVar2 + 0xd0),0);
    return 0;
  }
LAB_02c81aa8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

