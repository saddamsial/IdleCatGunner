/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6b564, Ghidra VA 02c6b564. */

void Safe_HUD_SetHover(long param_1,byte param_2)

{
  byte bVar1;
  long lVar2;
  ulong uVar3;
  undefined8 uVar4;
  long *plVar5;
  undefined4 uVar6;
  float fVar7;
  
  bVar1 = Safe_HUD_get_Is_Unlocked();
  bVar1 = bVar1 & param_2 & 1;
  if (*(byte *)(param_1 + 0x50) == bVar1) {
    return;
  }
  *(byte *)(param_1 + 0x50) = bVar1;
  if (bVar1 == 0) {
    uVar4 = *(undefined8 *)(param_1 + 0x38);
    fVar7 = *(float *)(param_1 + 0x40);
  }
  else {
    VibrationHelper_VibrateShort_0x60004aa(0x1e,0);
    fVar7 = *(float *)(param_1 + 0x30);
    uVar4 = CONCAT44((float)((ulong)*(undefined8 *)(param_1 + 0x38) >> 0x20) * fVar7,
                     (float)*(undefined8 *)(param_1 + 0x38) * fVar7);
    fVar7 = *(float *)(param_1 + 0x40) * fVar7;
  }
  plVar5 = (long *)(param_1 + 0x48);
  if (*plVar5 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,*plVar5,0);
  }
  lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar2 != 0) {
    uVar3 = GameObject_get_activeInHierarchy_0x6000d00(lVar2,0);
    uVar6 = (undefined4)((ulong)uVar4 >> 0x20);
    if ((uVar3 & 1) == 0) {
      lVar2 = Component_get_transform_0x6000c82(param_1,0);
      if (lVar2 == 0) goto LAB_02c6b688;
      Transform_set_localScale_0x6000f5e(uVar4,uVar6,fVar7,lVar2,0);
      lVar2 = 0;
    }
    else {
      uVar4 = Safe_HUD_ScaleTo(uVar4,uVar6,fVar7,*(undefined4 *)(param_1 + 0x34),param_1);
      lVar2 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar4,0);
    }
    *plVar5 = lVar2;
    Managed_WriteBarrier(plVar5);
    return;
  }
LAB_02c6b688:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

