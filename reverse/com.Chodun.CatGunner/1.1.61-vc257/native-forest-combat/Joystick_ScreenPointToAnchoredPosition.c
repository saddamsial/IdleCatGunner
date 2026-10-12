/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a87c28, Ghidra VA 02b87c28. */

float Joystick_ScreenPointToAnchoredPosition(undefined4 param_1,undefined4 param_2,long param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  float fVar3;
  ulong uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  undefined8 uStack_78;
  
  if ((bRam000000000625b907 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5cf00);
    bRam000000000625b907 = 1;
  }
  puVar2 = PTR_DAT_05e5cf00;
  uStack_78 = 0;
  if (cRam000000000625b271 == '\0') {
    func_0x029f5a50(PTR_DAT_05e59608);
    cRam000000000625b271 = '\x01';
  }
  puVar1 = PTR_DAT_05e59608;
  uVar6 = *(undefined8 *)(param_3 + 0x40);
  uVar5 = *(undefined8 *)(param_3 + 0x50);
  uStack_78 = **(undefined8 **)(*(long *)PTR_DAT_05e59608 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = RectTransformUtility_ScreenPointToLocalPointInRectangle_0x600004f
                    (param_1,param_2,uVar6,uVar5,&uStack_78,0);
  if ((uVar4 & 1) == 0) {
    if (cRam000000000625b271 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59608);
      cRam000000000625b271 = '\x01';
    }
    return **(float **)(*(long *)puVar1 + 0xb8);
  }
  if (*(long *)(param_3 + 0x40) != 0) {
    fVar7 = (float)RectTransform_get_pivot_0x6000f2f(*(long *)(param_3 + 0x40),0);
    if (*(long *)(param_3 + 0x40) != 0) {
      fVar8 = (float)RectTransform_get_sizeDelta_0x6000f2d(*(long *)(param_3 + 0x40),0);
      if (*(long *)(param_3 + 0x30) != 0) {
        fVar3 = (float)uStack_78;
        fVar9 = (float)RectTransform_get_anchorMax_0x6000f29(*(long *)(param_3 + 0x30),0);
        if (*(long *)(param_3 + 0x40) != 0) {
          fVar10 = (float)RectTransform_get_sizeDelta_0x6000f2d(*(long *)(param_3 + 0x40),0);
          return fVar7 * fVar8 + (fVar3 - fVar9 * fVar10);
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

