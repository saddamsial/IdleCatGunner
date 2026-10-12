/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a8787c, Ghidra VA 02b8787c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Joystick_OnDrag(undefined1 param_1 [16],float param_2,undefined4 param_3,long *param_4,
                    long param_5)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  long *plVar4;
  undefined4 uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  if ((bRam000000000625b906 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5cf00);
    bRam000000000625b906 = 1;
  }
  plVar4 = param_4 + 10;
  *plVar4 = 0;
  func_0x029f59f4(plVar4,0);
  if (param_4[9] != 0) {
    iVar2 = Canvas_get_renderMode_0x600005d(param_4[9],0);
    if (iVar2 == 1) {
      if (param_4[9] == 0) goto LAB_02b87b2c;
      lVar3 = Canvas_get_worldCamera_0x6000079(param_4[9],0);
      *plVar4 = lVar3;
      func_0x029f59f4(plVar4,lVar3);
    }
    puVar1 = PTR_DAT_05e5cf00;
    if (param_4[6] != 0) {
      lVar3 = param_4[10];
      uVar5 = Transform_get_position_0x6000f4d(param_4[6],0);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fVar6 = (float)RectTransformUtility_WorldToScreenPoint_0x6000051
                               (uVar5,param_2,param_3,lVar3,0);
      if (((param_4[6] != 0) &&
          (fVar11 = param_2, fVar7 = (float)RectTransform_get_sizeDelta_0x6000f2d(param_4[6],0),
          param_5 != 0)) && (param_4[9] != 0)) {
        fVar9 = *(float *)(param_5 + 0x108);
        fVar10 = *(float *)(param_5 + 0x104);
        fVar7 = fVar7 * 0.5;
        fVar11 = fVar11 * 0.5;
        fVar8 = (float)Canvas_get_scaleFactor_0x6000061(param_4[9],0);
        fVar6 = (fVar10 - fVar6) / (fVar7 * fVar8);
        fVar8 = (fVar9 - param_2) / (fVar11 * fVar8);
        *(float *)(param_4 + 0xb) = fVar6;
        *(float *)((long)param_4 + 0x5c) = fVar8;
        if ((int)param_4[5] == 2) {
          fVar6 = 0.0;
          *(undefined4 *)(param_4 + 0xb) = 0;
        }
        else if ((int)param_4[5] == 1) {
          fVar8 = 0.0;
          *(undefined4 *)((long)param_4 + 0x5c) = 0;
        }
        if (cRam000000000625b52c == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          fVar6 = *(float *)(param_4 + 0xb);
          fVar8 = *(float *)((long)param_4 + 0x5c);
          cRam000000000625b52c = '\x01';
        }
        puVar1 = PTR_DAT_05e59000;
        if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
          func_0x029f5bd0();
          fVar9 = fVar6 * fVar6;
          fVar10 = fVar8 * fVar8;
          fVar6 = *(float *)(param_4 + 0xb);
          fVar8 = *(float *)((long)param_4 + 0x5c);
          fVar9 = SQRT(fVar9 + fVar10);
          if (cRam000000000625b52c == '\0') {
            func_0x029f5a50(PTR_DAT_05e59000);
            cRam000000000625b52c = '\x01';
          }
        }
        else {
          fVar9 = SQRT(fVar6 * fVar6 + fVar8 * fVar8);
        }
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        fVar10 = SQRT(fVar6 * fVar6 + fVar8 * fVar8);
        if (fVar10 <= _UNK_0116c240) {
          if (cRam000000000625b271 == '\0') {
            func_0x029f5a50(PTR_DAT_05e59608);
            cRam000000000625b271 = '\x01';
          }
          fVar6 = **(float **)(*(long *)PTR_DAT_05e59608 + 0xb8);
          fVar8 = (*(float **)(*(long *)PTR_DAT_05e59608 + 0xb8))[1];
        }
        else {
          fVar6 = fVar6 / fVar10;
          fVar8 = fVar8 / fVar10;
        }
        (**(code **)(*param_4 + 0x1c8))
                  (fVar9,fVar6,fVar8,fVar7,fVar11,param_4,param_4[10],
                   *(undefined8 *)(*param_4 + 0x1d0));
        if (param_4[7] != 0) {
          RectTransform_set_anchoredPosition_0x6000f2c
                    (*(float *)(param_4 + 4) * fVar7 * *(float *)(param_4 + 0xb),
                     fVar11 * *(float *)((long)param_4 + 0x5c) * *(float *)(param_4 + 4),param_4[7],
                     0);
          return;
        }
      }
    }
  }
LAB_02b87b2c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

