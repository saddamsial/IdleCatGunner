/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b36ba0, Ghidra VA 02c36ba0. */

undefined8 _FillExp_d__20_MoveNext(long param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined8 uVar5;
  undefined4 uVar6;
  long lVar7;
  long lVar8;
  
  lVar7 = *(long *)(param_1 + 0x28);
  if (*(int *)(param_1 + 0x10) == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    *(int *)(param_1 + 0x34) = *(int *)(param_1 + 0x48);
    *(int *)(param_1 + 0x3c) = *(int *)(param_1 + 0x3c) - *(int *)(param_1 + 0x44);
    if (*(int *)(param_1 + 0x40) <= *(int *)(param_1 + 0x48)) {
      *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 1;
      *(undefined4 *)(param_1 + 0x34) = 0;
      if (lVar7 == 0) goto LAB_02c36d7c;
      Adventure_Reward_popup_OnLevelUp();
      lVar8 = *(long *)(lVar7 + 0x48);
      if (*(int *)(param_1 + 0x38) <= *(int *)(param_1 + 0x30)) {
        if (lVar8 == 0) goto LAB_02c36d7c;
        SlicedFilledImage_set_fillAmount_0x60005d0(0x3f800000,lVar8,0);
        uVar1 = *(undefined4 *)(param_1 + 0x30);
        uVar6 = 0;
        goto LAB_02c36d64;
      }
      if (lVar8 == 0) goto LAB_02c36d7c;
      SlicedFilledImage_set_fillAmount_0x60005d0(0,lVar8,0);
      Adventure_Reward_popup_UpdateSliderText(lVar7,*(undefined4 *)(param_1 + 0x30),0);
    }
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    *(undefined4 *)(param_1 + 0x38) = 0xf;
    *(undefined4 *)(param_1 + 0x3c) = *(undefined4 *)(param_1 + 0x20);
    if (lVar7 == 0) goto LAB_02c36d7c;
    uVar5 = Adventure_Reward_popup_UpdateSliderText
                      (lVar7,*(undefined4 *)(param_1 + 0x30),*(undefined4 *)(param_1 + 0x34));
    iVar2 = *(int *)(param_1 + 0x34);
    lVar8 = *(long *)(lVar7 + 0x48);
    iVar3 = Adventure_Reward_popup_Need(uVar5,*(undefined4 *)(param_1 + 0x30));
    if (lVar8 == 0) goto LAB_02c36d7c;
    SlicedFilledImage_set_fillAmount_0x60005d0((float)iVar2 / (float)iVar3,lVar8,0);
  }
  if ((*(int *)(param_1 + 0x3c) < 1) || (*(int *)(param_1 + 0x38) <= *(int *)(param_1 + 0x30))) {
    if (*(int *)(param_1 + 0x38) <= *(int *)(param_1 + 0x30)) {
      return 0;
    }
    if (lVar7 != 0) {
      lVar8 = *(long *)(lVar7 + 0x48);
      iVar2 = *(int *)(param_1 + 0x34);
      iVar3 = Adventure_Reward_popup_Need();
      if (lVar8 != 0) {
        SlicedFilledImage_set_fillAmount_0x60005d0((float)iVar2 / (float)iVar3,lVar8,0);
        uVar1 = *(undefined4 *)(param_1 + 0x30);
        uVar6 = *(undefined4 *)(param_1 + 0x34);
LAB_02c36d64:
        Adventure_Reward_popup_UpdateSliderText(lVar7,uVar1,uVar6);
        return 0;
      }
    }
  }
  else if (lVar7 != 0) {
    iVar4 = Adventure_Reward_popup_Need();
    iVar3 = *(int *)(param_1 + 0x34);
    iVar2 = *(int *)(param_1 + 0x3c);
    if (iVar4 - iVar3 <= *(int *)(param_1 + 0x3c)) {
      iVar2 = iVar4 - iVar3;
    }
    *(int *)(param_1 + 0x40) = iVar4;
    *(int *)(param_1 + 0x44) = iVar2;
    *(int *)(param_1 + 0x48) = iVar2 + iVar3;
    uVar5 = Adventure_Reward_popup_LerpFill
                      ((float)iVar3 / (float)iVar4,(float)(iVar2 + iVar3) / (float)iVar4,lVar7,
                       *(undefined4 *)(param_1 + 0x30));
    uVar5 = MonoBehaviour_StartCoroutine_0x6000d43(lVar7,uVar5,0);
    *(undefined8 *)(param_1 + 0x18) = uVar5;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar5);
    *(undefined4 *)(param_1 + 0x10) = 1;
    return 1;
  }
LAB_02c36d7c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

