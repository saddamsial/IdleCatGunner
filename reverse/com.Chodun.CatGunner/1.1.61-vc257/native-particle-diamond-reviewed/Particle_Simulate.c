/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48b8cf0, Ghidra VA 049b8cf0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Particle_Simulate(float param_1,long param_2)

{
  int iVar1;
  undefined1 *puVar2;
  byte bVar3;
  uint uVar4;
  undefined8 *puVar5;
  float fVar6;
  undefined *puVar7;
  char cVar8;
  bool bVar9;
  bool bVar10;
  bool bVar11;
  int iVar12;
  ulong uVar13;
  long *plVar14;
  ulong uVar15;
  long lVar16;
  long lVar17;
  float *pfVar18;
  int iVar19;
  long lVar20;
  float fVar21;
  undefined4 uVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float extraout_s0;
  float extraout_s0_00;
  float fVar26;
  float extraout_s0_01;
  undefined4 extraout_s0_02;
  float extraout_s0_03;
  float fVar27;
  float fVar28;
  float fVar29;
  float fVar30;
  float fVar31;
  undefined4 uVar32;
  float fVar33;
  float fVar34;
  undefined8 uVar35;
  undefined8 uVar36;
  float fVar37;
  float fVar38;
  float fVar39;
  undefined8 uVar40;
  undefined8 uVar41;
  float fVar42;
  undefined8 uVar43;
  float fStack_1b8;
  float fStack_1b4;
  long lStack_1b0;
  undefined8 uStack_1a8;
  long lStack_1a0;
  undefined8 uStack_198;
  long lStack_190;
  undefined8 uStack_188;
  undefined8 uStack_180;
  undefined8 uStack_178;
  undefined8 uStack_170;
  undefined8 uStack_168;
  undefined8 uStack_160;
  undefined8 uStack_158;
  undefined8 uStack_150;
  undefined1 uStack_148;
  char cStack_147;
  undefined1 auStack_140 [32];
  undefined1 auStack_120 [32];
  undefined1 auStack_100 [32];
  undefined1 auStack_e0 [32];
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  
  if ((bRam000000000626282a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e85eb0);
    func_0x029f5a50(PTR_DAT_05e85ec0);
    func_0x029f5a50(PTR_DAT_05e85ec8);
    func_0x029f5a50(PTR_DAT_05e85ed0);
    func_0x029f5a50(PTR_DAT_05e85ed8);
    func_0x029f5a50(PTR_DAT_05e85ee0);
    func_0x029f5a50(PTR_DAT_05e85ee8);
    func_0x029f5a50(PTR_DAT_05e85ef0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5bfa8);
    bRam000000000626282a = 1;
  }
  uStack_b8 = 0;
  uStack_c0 = 0;
  uStack_a8 = 0;
  uStack_b0 = 0;
  func_0x05afb2a0(&uStack_148,0,0x88);
  fVar6 = _UNK_0116c1e4;
  fVar28 = *(float *)(param_2 + 0x60) + param_1;
  fVar21 = *(float *)(param_2 + 0x78);
  uStack_150 = 0;
  lStack_190 = 0;
  uStack_188 = 0;
  fVar37 = ABS(fVar21);
  lStack_1a0 = 0;
  uStack_198 = 0;
  lStack_1b0 = 0;
  uStack_1a8 = 0;
  fVar29 = 0.0;
  if ((uint)fVar37 < 0x7f800001) {
    fVar29 = fVar37 * _UNK_0116c1e4;
  }
  lVar16 = *(long *)(param_2 + 0x10);
  if (fVar29 <= 9.536743e-07) {
    fVar29 = 9.536743e-07;
  }
  uStack_168 = 0;
  uStack_170 = 0;
  uStack_158 = 0;
  uStack_160 = 0;
  uStack_178 = 0;
  uStack_180 = 0;
  if (fVar29 <= fVar37) {
    fVar21 = fVar28 / fVar21 + 0.0;
  }
  *(float *)(param_2 + 0x60) = fVar28;
  *(float *)(param_2 + 100) = fVar21;
  if (lVar16 == 0) goto LAB_049ba7f8;
  fVar29 = *(float *)(param_2 + 0xc4);
  uVar43 = *(undefined8 *)(param_2 + 0x30);
  uStack_b8 = *(undefined8 *)(lVar16 + 0x5b0);
  uVar35 = *(undefined8 *)(lVar16 + 0x5a8);
  uStack_a8 = *(undefined8 *)(lVar16 + 0x5c0);
  uStack_b0 = *(undefined8 *)(lVar16 + 0x5b8);
  uStack_c0 = uVar35;
  fVar21 = (float)MinMaxCurve_Evaluate_0x6000057(fVar21,fVar29,&uStack_c0,0);
  fVar28 = (float)uVar35;
  lVar16 = *(long *)(param_2 + 0x10);
  *(ulong *)(param_2 + 0x40) =
       CONCAT44((float)((ulong)uVar43 >> 0x20) * fVar21,(float)uVar43 * fVar21);
  if (lVar16 == 0) goto LAB_049ba7f8;
  if (*(int *)(lVar16 + 0x128) == 1) {
    if (*(long *)(param_2 + 0x18) == 0) goto LAB_049ba7f8;
    fVar21 = *(float *)(param_2 + 0xdc);
    fVar28 = *(float *)(param_2 + 0xe0);
    fVar29 = (float)Transform_InverseTransformPoint_0x6000f79
                              (*(undefined4 *)(param_2 + 0xd8),*(long *)(param_2 + 0x18),0);
    uVar35 = *(undefined8 *)(param_2 + 0x20);
    *(ulong *)(param_2 + 0x20) =
         CONCAT44((float)((ulong)uVar35 >> 0x20) + fVar21,(float)uVar35 + fVar29);
    if (*(long *)(param_2 + 0x18) == 0) goto LAB_049ba7f8;
    Transform_get_rotation_0x6000f59(*(long *)(param_2 + 0x18),0);
    fVar30 = (float)uVar35;
    Quaternion_Inverse_0x6000a49(0);
    fVar21 = (float)Quaternion_Internal_ToEulerRad_0x6000a4c(0);
    fVar29 = _UNK_0116c074;
    fVar30 = fVar30 * _UNK_0116c074;
    fVar28 = fVar28 * _UNK_0116c074;
    fVar21 = (float)Quaternion_Internal_MakePositive_0x6000a59(fVar21 * _UNK_0116c074,0);
    fVar42 = *(float *)(param_2 + 0xec);
    fVar31 = *(float *)(param_2 + 0xe8);
    Quaternion_Inverse_0x6000a49
              (*(undefined4 *)(param_2 + 0xe4),fVar31,fVar42,*(undefined4 *)(param_2 + 0xf0),0);
    fVar37 = (float)Quaternion_Internal_ToEulerRad_0x6000a4c(0);
    fVar31 = fVar31 * fVar29;
    fVar42 = fVar42 * fVar29;
    fVar29 = (float)Quaternion_Internal_MakePositive_0x6000a59(fVar37 * fVar29,0);
    uVar32 = *(undefined4 *)(param_2 + 0x24);
    *(float *)(param_2 + 0xf4) = fVar21 - fVar29;
    *(float *)(param_2 + 0xf8) = fVar30 - fVar31;
    *(float *)(param_2 + 0xfc) = fVar28 - fVar42;
    uVar22 = Particle_RotatePointAroundCenter
                       (*(undefined4 *)(param_2 + 0x20),uVar32,fVar21 - fVar29);
    fVar29 = *(float *)(param_2 + 0x34);
    *(undefined4 *)(param_2 + 0x20) = uVar22;
    *(undefined4 *)(param_2 + 0x24) = uVar32;
    fVar28 = *(float *)(param_2 + 0xf4);
    uVar32 = *(undefined4 *)(param_2 + 0xf8);
    uVar22 = Particle_RotatePointAroundCenter(*(undefined4 *)(param_2 + 0x30));
    *(undefined4 *)(param_2 + 0x30) = uVar22;
    *(float *)(param_2 + 0x34) = fVar29;
    if (*(long *)(param_2 + 0x18) == 0) goto LAB_049ba7f8;
    uVar22 = Transform_get_position_0x6000f4d(*(long *)(param_2 + 0x18),0);
    *(undefined4 *)(param_2 + 0xd8) = uVar22;
    *(float *)(param_2 + 0xdc) = fVar29;
    *(float *)(param_2 + 0xe0) = fVar28;
    if (*(long *)(param_2 + 0x18) == 0) goto LAB_049ba7f8;
    uVar22 = Transform_get_rotation_0x6000f59(*(long *)(param_2 + 0x18),0);
    lVar16 = *(long *)(param_2 + 0x10);
    *(undefined4 *)(param_2 + 0xe4) = uVar22;
    *(float *)(param_2 + 0xe8) = fVar29;
    *(float *)(param_2 + 0xec) = fVar28;
    *(undefined4 *)(param_2 + 0xf0) = uVar32;
    if (lVar16 == 0) goto LAB_049ba7f8;
  }
  if (*(char *)(lVar16 + 0x627) != '\0') {
    iVar12 = *(int *)(lVar16 + 0x628);
    uVar35 = *(undefined8 *)(param_2 + 0x40);
    func_0x05afb2b0(&uStack_148,lVar16 + 0x630,0x88);
    fVar29 = *(float *)(param_2 + 0xc0);
    if (iVar12 == 1) {
      uVar22 = SeparatedMinMaxCurve_Evaluate_0x6000108();
      if (*(long *)(param_2 + 0x18) == 0) goto LAB_049ba7f8;
      fVar21 = fVar29;
      Transform_get_rotation_0x6000f59(*(long *)(param_2 + 0x18),0);
      Quaternion_Inverse_0x6000a49(0);
      fVar37 = (float)Quaternion_Internal_ToEulerRad_0x6000a4c(0);
      fVar21 = fVar21 * _UNK_0116c074;
      fVar28 = fVar28 * _UNK_0116c074;
      uVar32 = Quaternion_Internal_MakePositive_0x6000a59(fVar37 * _UNK_0116c074,fVar21,fVar28,0);
      fVar21 = (float)Particle_RotatePointAroundCenter(uVar22,fVar29,uVar32,fVar21,fVar28);
    }
    else {
      fVar21 = (float)SeparatedMinMaxCurve_EvaluateXY_0x600010a
                                (*(undefined4 *)(param_2 + 100),&uStack_148);
    }
    *(ulong *)(param_2 + 0x40) =
         CONCAT44((float)((ulong)uVar35 >> 0x20) + fVar29,(float)uVar35 + fVar21);
  }
  lVar16 = *(long *)(param_2 + 0x10);
  if (lVar16 == 0) goto LAB_049ba7f8;
  if (*(char *)(lVar16 + 0x625) != '\0') {
    uStack_b8 = *(undefined8 *)(lVar16 + 0x5d8);
    uVar35 = *(undefined8 *)(lVar16 + 0x5d0);
    uStack_a8 = *(undefined8 *)(lVar16 + 0x5e8);
    uStack_b0 = *(undefined8 *)(lVar16 + 0x5e0);
    fVar21 = *(float *)(param_2 + 0xb4);
    uVar43 = *(undefined8 *)(param_2 + 0x38);
    uStack_c0 = uVar35;
    fVar29 = (float)MinMaxCurve_Evaluate_0x6000057
                              (*(undefined4 *)(param_2 + 100),fVar21,&uStack_c0,0);
    fVar28 = (float)uVar35;
    if (*(long *)(param_2 + 0x18) == 0) goto LAB_049ba7f8;
    Transform_get_rotation_0x6000f59(*(long *)(param_2 + 0x18),0);
    Quaternion_Inverse_0x6000a49(0);
    fVar37 = (float)Quaternion_Internal_ToEulerRad_0x6000a4c(0);
    fVar21 = fVar21 * _UNK_0116c074;
    fVar28 = fVar28 * _UNK_0116c074;
    uVar22 = Quaternion_Internal_MakePositive_0x6000a59(fVar37 * _UNK_0116c074,fVar21,fVar28,0);
    fVar21 = (float)Particle_RotatePointAroundCenter(0,fVar29,uVar22,fVar21,fVar28);
    lVar16 = *(long *)(param_2 + 0x10);
    *(ulong *)(param_2 + 0x38) =
         CONCAT44((float)((ulong)uVar43 >> 0x20) + fVar29 * param_1,(float)uVar43 + fVar21 * param_1
                 );
    fVar29 = param_1;
    if (lVar16 == 0) goto LAB_049ba7f8;
  }
  if (*(char *)(lVar16 + 0x624) == '\0') {
    uVar35 = *(undefined8 *)(param_2 + 0x40);
  }
  else {
    if (*(int *)(lVar16 + 0x128) == 0) {
      if (*(long *)(lVar16 + 0x3208) == 0) goto LAB_049ba7f8;
      fVar21 = *(float *)(lVar16 + 0x3210) + *(float *)(param_2 + 0x28);
      fVar29 = *(float *)(param_2 + 0x2c) + *(float *)(lVar16 + 0x3214);
    }
    else {
      if (*(long *)(param_2 + 0x18) == 0) goto LAB_049ba7f8;
      fVar21 = (float)Transform_get_localPosition_0x6000f4f(*(long *)(param_2 + 0x18),0);
      lVar16 = *(long *)(param_2 + 0x10);
      if ((lVar16 == 0) || (*(long *)(lVar16 + 0x3208) == 0)) goto LAB_049ba7f8;
      fVar21 = *(float *)(param_2 + 0x28) + fVar21 + *(float *)(lVar16 + 0x3210);
      fVar29 = fVar29 + *(float *)(param_2 + 0x2c) + *(float *)(lVar16 + 0x3214);
    }
    fVar29 = (float)Noise_GetNoise_0x600012a(fVar21,fVar29);
    lVar16 = *(long *)(param_2 + 0x10);
    if (lVar16 == 0) goto LAB_049ba7f8;
    func_0x05afb270(fVar29 * _UNK_0116c1ac,&fStack_1b4,&fStack_1b8);
    uVar35 = CONCAT44((float)((ulong)*(undefined8 *)(param_2 + 0x40) >> 0x20) +
                      fStack_1b4 * *(float *)(lVar16 + 0x321c),
                      (float)*(undefined8 *)(param_2 + 0x40) +
                      fStack_1b8 * *(float *)(lVar16 + 0x321c));
    *(undefined8 *)(param_2 + 0x40) = uVar35;
  }
  fVar29 = (float)uVar35 + (float)*(undefined8 *)(param_2 + 0x38);
  fVar21 = (float)((ulong)uVar35 >> 0x20) + (float)((ulong)*(undefined8 *)(param_2 + 0x38) >> 0x20);
  *(ulong *)(param_2 + 0x40) = CONCAT44(fVar21,fVar29);
  uVar35 = *(undefined8 *)(param_2 + 0x20);
  fVar21 = fVar21 * param_1 * 100.0 + (float)((ulong)uVar35 >> 0x20);
  uVar13 = CONCAT44(fVar21,fVar29 * param_1 * 100.0 + (float)uVar35);
  *(ulong *)(param_2 + 0x20) = uVar13;
  fVar29 = param_1;
  if (*(char *)(lVar16 + 0x626) != '\0') {
    uStack_b8 = *(undefined8 *)(lVar16 + 0x6c0);
    uStack_c0 = *(undefined8 *)(lVar16 + 0x6b8);
    uStack_a8 = *(undefined8 *)(lVar16 + 0x6d0);
    uStack_b0 = *(undefined8 *)(lVar16 + 0x6c8);
    MinMaxCurve_Evaluate_0x6000057
              (*(undefined4 *)(param_2 + 100),*(undefined4 *)(param_2 + 0xb8),&uStack_c0,0);
    uVar35 = 0;
    fVar29 = 0.0;
    uVar13 = (ulong)(uint)fVar21;
    uVar22 = Particle_RotatePointAroundCenter();
    lVar16 = *(long *)(param_2 + 0x10);
    *(undefined4 *)(param_2 + 0x20) = uVar22;
    *(int *)(param_2 + 0x24) = (int)uVar13;
    if (lVar16 == 0) goto LAB_049ba7f8;
  }
  fVar21 = (float)uVar13;
  fVar28 = (float)uVar35;
  if (*(char *)(lVar16 + 0x5f0) == '\0') {
LAB_049b9480:
    uVar35 = *(undefined8 *)(param_2 + 0x20);
    fVar28 = (float)uVar35;
    *(undefined8 *)(param_2 + 0x28) = uVar35;
    fVar37 = (float)((ulong)uVar35 >> 0x20);
  }
  else {
    uVar35 = *(undefined8 *)(lVar16 + 0x5f8);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar13 = Object_op_Implicit_0x6000da6(uVar35,0);
    puVar7 = PTR_DAT_05e5bfa8;
    if ((uVar13 & 1) == 0) goto LAB_049b9480;
    lVar16 = *(long *)(param_2 + 0x10);
    if ((lVar16 == 0) || (plVar14 = *(long **)(lVar16 + 0x5f8), plVar14 == (long *)0x0))
    goto LAB_049ba7f8;
    if (*plVar14 == *(long *)PTR_DAT_05e5bfa8) {
      lVar16 = *(long *)(param_2 + 0x18);
      Transform_get_position_0x6000f4d(plVar14,0);
      if (lVar16 == 0) goto LAB_049ba7f8;
      fVar30 = (float)Transform_InverseTransformPoint_0x6000f79(lVar16,0);
      fVar29 = fVar21;
    }
    else {
      Transform_get_position_0x6000f4d(plVar14,0);
      fVar37 = (float)ParticleImage_WorldToViewportPoint(lVar16);
      lVar16 = *(long *)(param_2 + 0x10);
      if (lVar16 == 0) goto LAB_049ba7f8;
      *(undefined4 *)(lVar16 + 0x620) = 0;
      fVar31 = fVar21;
      lVar16 = Graphic_get_canvas_0x60000f7(lVar16,0);
      if (lVar16 == 0) goto LAB_049ba7f8;
      iVar12 = Canvas_get_renderMode_0x600005d(lVar16,0);
      lVar16 = *(long *)(param_2 + 0x10);
      if (iVar12 == 1) {
        if ((lVar16 == 0) || (*(long *)(lVar16 + 0xe8) == 0)) goto LAB_049ba7f8;
        RectTransform_get_rect_0x6000f26(*(long *)(lVar16 + 0xe8),0);
        if ((*(long *)(param_2 + 0x10) == 0) || (*(long *)(param_2 + 0x18) == 0)) goto LAB_049ba7f8;
        lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8);
        Transform_get_position_0x6000f4d(*(long *)(param_2 + 0x18),0);
        if (lVar16 == 0) goto LAB_049ba7f8;
        fVar42 = (float)Transform_InverseTransformPoint_0x6000f79(lVar16,0);
        if ((*(long *)(param_2 + 0x10) == 0) ||
           (lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8), lVar16 == 0)) goto LAB_049ba7f8;
        fVar23 = (float)Transform_get_localPosition_0x6000f4f(lVar16,0);
        if (*(long *)(param_2 + 0x18) == 0) goto LAB_049ba7f8;
        fVar30 = (float)Transform_get_lossyScale_0x6000f83(*(long *)(param_2 + 0x18),0);
        if ((*(long *)(param_2 + 0x10) == 0) ||
           (lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8), lVar16 == 0)) goto LAB_049ba7f8;
        fVar24 = (float)Transform_get_localScale_0x6000f5d(lVar16,0);
        if ((*(long *)(param_2 + 0x10) == 0) ||
           (lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8), lVar16 == 0)) goto LAB_049ba7f8;
        RectTransform_get_rect_0x6000f26(lVar16,0);
        if ((*(long *)(param_2 + 0x10) == 0) || (*(long *)(param_2 + 0x18) == 0)) goto LAB_049ba7f8;
        lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8);
        Transform_get_position_0x6000f4d(*(long *)(param_2 + 0x18),0);
        if (lVar16 == 0) goto LAB_049ba7f8;
        Transform_InverseTransformPoint_0x6000f79(lVar16,0);
        if ((*(long *)(param_2 + 0x10) == 0) ||
           (lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8), lVar16 == 0)) goto LAB_049ba7f8;
        fVar25 = fVar31;
        Transform_get_localPosition_0x6000f4f(lVar16,0);
        if (*(long *)(param_2 + 0x18) == 0) goto LAB_049ba7f8;
        fVar38 = fVar25;
        Transform_get_lossyScale_0x6000f83(*(long *)(param_2 + 0x18),0);
        if ((*(long *)(param_2 + 0x10) == 0) ||
           (lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8), lVar16 == 0)) goto LAB_049ba7f8;
        fVar29 = (fVar21 + -0.5) * fVar29;
        fVar21 = fVar29 + 0.0;
        Transform_get_localScale_0x6000f5d(lVar16,0);
        fVar30 = ((((fVar37 + -0.5) * fVar28 + 0.0) - fVar42) + fVar23) / fVar30;
        fVar38 = ((fVar21 - fVar31) + fVar25) / fVar38;
      }
      else {
        if ((lVar16 == 0) || (*(long *)(lVar16 + 0xe8) == 0)) goto LAB_049ba7f8;
        RectTransform_get_rect_0x6000f26(*(long *)(lVar16 + 0xe8),0);
        if ((*(long *)(param_2 + 0x10) == 0) || (*(long *)(param_2 + 0x18) == 0)) goto LAB_049ba7f8;
        lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8);
        Transform_get_position_0x6000f4d(*(long *)(param_2 + 0x18),0);
        if (lVar16 == 0) goto LAB_049ba7f8;
        fVar42 = (float)Transform_InverseTransformPoint_0x6000f79(lVar16,0);
        if (*(long *)(param_2 + 0x18) == 0) goto LAB_049ba7f8;
        fVar30 = (float)Transform_get_lossyScale_0x6000f83(*(long *)(param_2 + 0x18),0);
        if ((*(long *)(param_2 + 0x10) == 0) ||
           (lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8), lVar16 == 0)) goto LAB_049ba7f8;
        fVar24 = (float)Transform_get_localScale_0x6000f5d(lVar16,0);
        if ((*(long *)(param_2 + 0x10) == 0) ||
           (lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8), lVar16 == 0)) goto LAB_049ba7f8;
        RectTransform_get_rect_0x6000f26(lVar16,0);
        if ((*(long *)(param_2 + 0x10) == 0) || (*(long *)(param_2 + 0x18) == 0)) goto LAB_049ba7f8;
        lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8);
        Transform_get_position_0x6000f4d(*(long *)(param_2 + 0x18),0);
        if (lVar16 == 0) goto LAB_049ba7f8;
        Transform_InverseTransformPoint_0x6000f79(lVar16,0);
        if (*(long *)(param_2 + 0x18) == 0) goto LAB_049ba7f8;
        fVar38 = fVar31;
        Transform_get_lossyScale_0x6000f83(*(long *)(param_2 + 0x18),0);
        if ((*(long *)(param_2 + 0x10) == 0) ||
           (lVar16 = *(long *)(*(long *)(param_2 + 0x10) + 0xe8), lVar16 == 0)) goto LAB_049ba7f8;
        fVar29 = (fVar21 + -0.5) * fVar29;
        fVar21 = fVar29 + 0.0;
        Transform_get_localScale_0x6000f5d(lVar16,0);
        fVar30 = (((fVar37 + -0.5) * fVar28 + 0.0) - fVar42) / fVar30;
        fVar38 = (fVar21 - fVar31) / fVar38;
      }
      fVar30 = fVar30 * fVar24;
      fVar21 = fVar38 * fVar29;
    }
    lVar16 = *(long *)(param_2 + 0x10);
    if (lVar16 == 0) goto LAB_049ba7f8;
    if (*(int *)(lVar16 + 0x620) == 0) {
      uStack_b8 = *(undefined8 *)(lVar16 + 0x608);
      uStack_c0 = *(undefined8 *)(lVar16 + 0x600);
      fVar28 = *(float *)(param_2 + 0x20);
      fVar37 = *(float *)(param_2 + 0x24);
      uStack_a8 = *(undefined8 *)(lVar16 + 0x618);
      uStack_b0 = *(undefined8 *)(lVar16 + 0x610);
      fVar29 = (float)MinMaxCurve_Evaluate_0x6000057
                                (*(undefined4 *)(param_2 + 100),*(undefined4 *)(param_2 + 0xb0),
                                 &uStack_c0,0);
      fVar28 = fVar28 + (fVar30 - fVar28) * fVar29;
      fVar37 = fVar37 + (fVar21 - fVar37) * fVar29;
    }
    else {
      plVar14 = *(long **)(lVar16 + 0x5f8);
      if ((plVar14 == (long *)0x0) || (*plVar14 != *(long *)puVar7)) goto LAB_049ba7f8;
      fVar28 = *(float *)(param_2 + 0x20);
      fVar37 = *(float *)(param_2 + 0x24);
      fVar23 = *(float *)(param_2 + 0xd0);
      fVar42 = (float)RectTransform_get_sizeDelta_0x6000f2d(plVar14,0);
      fVar24 = (float)RectTransform_get_sizeDelta_0x6000f2d(plVar14,0);
      fVar38 = *(float *)(param_2 + 0xd4);
      RectTransform_get_sizeDelta_0x6000f2d(plVar14,0);
      fVar31 = fVar29;
      RectTransform_get_sizeDelta_0x6000f2d(plVar14,0);
      lVar16 = *(long *)(param_2 + 0x10);
      if (lVar16 == 0) goto LAB_049ba7f8;
      uStack_a8 = *(undefined8 *)(lVar16 + 0x618);
      uStack_b0 = *(undefined8 *)(lVar16 + 0x610);
      uStack_b8 = *(undefined8 *)(lVar16 + 0x608);
      uStack_c0 = *(undefined8 *)(lVar16 + 0x600);
      fVar25 = (float)MinMaxCurve_Evaluate_0x6000057
                                (*(undefined4 *)(param_2 + 100),*(undefined4 *)(param_2 + 0xb0),
                                 &uStack_c0,0);
      fVar28 = fVar28 + ((fVar30 + fVar42 * -0.5 + fVar23 * (fVar24 * 0.5 - fVar42 * -0.5)) - fVar28
                        ) * fVar25;
      fVar37 = fVar37 + ((fVar21 + fVar29 * -0.5 + fVar38 * (fVar31 * 0.5 - fVar29 * -0.5)) - fVar37
                        ) * fVar25;
    }
    *(float *)(param_2 + 0x28) = fVar28;
    *(float *)(param_2 + 0x2c) = fVar37;
  }
  cVar8 = cRam000000000625b52c;
  fVar29 = *(float *)(param_2 + 0x104);
  fVar28 = fVar28 - *(float *)(param_2 + 0x100);
  fVar37 = fVar37 - fVar29;
  *(undefined8 *)(param_2 + 0x100) = *(undefined8 *)(param_2 + 0x28);
  *(float *)(param_2 + 0x108) = fVar28;
  *(float *)(param_2 + 0x10c) = fVar37;
  if (cVar8 == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    fVar28 = *(float *)(param_2 + 0x108);
    fVar37 = *(float *)(param_2 + 0x10c);
    cRam000000000625b52c = '\x01';
  }
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  fVar28 = ((1.0 / param_1) * SQRT(fVar28 * fVar28 + fVar37 * fVar37)) / 100.0;
  lVar16 = *(long *)(param_2 + 0x10);
  fVar21 = 0.0;
  if ((uint)ABS(fVar28) < 0x7f800001) {
    fVar21 = fVar28;
  }
  if (lVar16 == 0) goto LAB_049ba7f8;
  uStack_150 = *(undefined8 *)(lVar16 + 0x2a8);
  uStack_178 = *(undefined8 *)(lVar16 + 0x280);
  uStack_180 = *(undefined8 *)(lVar16 + 0x278);
  uStack_168 = *(undefined8 *)(lVar16 + 0x290);
  uStack_170 = *(undefined8 *)(lVar16 + 0x288);
  uStack_158 = *(undefined8 *)(lVar16 + 0x2a0);
  uVar35 = *(undefined8 *)(lVar16 + 0x298);
  fVar37 = *(float *)(param_2 + 0xa8);
  uStack_160 = uVar35;
  fVar28 = (float)MinMaxGradient_Evaluate_0x6000064(*(undefined4 *)(param_2 + 100),&uStack_180,0);
  lVar16 = *(long *)(param_2 + 0x10);
  if (lVar16 == 0) goto LAB_049ba7f8;
  fVar30 = *(float *)(lVar16 + 0x2ec);
  fVar42 = *(float *)(lVar16 + 0x2e8);
  fVar24 = ABS(fVar30);
  fVar31 = ABS(fVar42);
  bVar9 = false;
  bVar10 = false;
  bVar11 = false;
  if ((uint)fVar24 < 0x7f800001) {
    bVar9 = false;
    bVar10 = false;
    bVar11 = true;
    if (!NAN(fVar31) && !NAN(fVar24)) {
      bVar9 = fVar31 < fVar24;
      bVar10 = fVar31 == fVar24;
      bVar11 = false;
    }
  }
  uVar40 = *(undefined8 *)(param_2 + 0x70);
  uVar43 = *(undefined8 *)(param_2 + 0x68);
  if (bVar10 || bVar9 != bVar11) {
    fVar31 = fVar24;
  }
  fVar31 = fVar31 * fVar6;
  fVar24 = (fVar21 - fVar42) / (fVar30 - fVar42) + 0.0;
  if (fVar31 <= 9.536743e-07) {
    fVar31 = 9.536743e-07;
  }
  uStack_178 = *(undefined8 *)(lVar16 + 0x2b8);
  uVar36 = *(undefined8 *)(lVar16 + 0x2b0);
  uStack_168 = *(undefined8 *)(lVar16 + 0x2c8);
  uVar41 = *(undefined8 *)(lVar16 + 0x2c0);
  uStack_158 = *(undefined8 *)(lVar16 + 0x2d8);
  uStack_160 = *(undefined8 *)(lVar16 + 0x2d0);
  uStack_150 = *(undefined8 *)(lVar16 + 0x2e0);
  if (fVar31 <= ABS(fVar30 - fVar42)) {
    fVar30 = fVar24;
  }
  uStack_180 = uVar36;
  uStack_170 = uVar41;
  fVar30 = (float)MinMaxGradient_Evaluate_0x6000063(fVar30,&uStack_180,0);
  *(ulong *)(param_2 + 0x90) =
       CONCAT44(fVar29 * (float)((ulong)uVar40 >> 0x20) * (float)uVar41,
                (float)uVar35 * (float)uVar40 * fVar24);
  *(ulong *)(param_2 + 0x88) =
       CONCAT44(fVar37 * (float)((ulong)uVar43 >> 0x20) * (float)uVar36,
                fVar28 * (float)uVar43 * fVar30);
  if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
  func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x2f0,0x88);
  fVar28 = *(float *)(param_2 + 0xa4);
  fVar29 = (float)SeparatedMinMaxCurve_Evaluate_0x6000108
                            (*(undefined4 *)(param_2 + 100),&uStack_148);
  lVar16 = *(long *)(param_2 + 0x10);
  if (lVar16 == 0) goto LAB_049ba7f8;
  func_0x05afb2b0(&uStack_148,lVar16 + 0x378,0x88);
  fVar37 = *(float *)(lVar16 + 0x404);
  fVar31 = *(float *)(lVar16 + 0x400);
  fVar38 = 0.0;
  fVar42 = ABS(fVar37);
  fVar30 = ABS(fVar31);
  bVar9 = false;
  bVar10 = false;
  bVar11 = false;
  if ((uint)fVar42 < 0x7f800001) {
    bVar9 = false;
    bVar10 = false;
    bVar11 = true;
    if (!NAN(fVar30) && !NAN(fVar42)) {
      bVar9 = fVar30 < fVar42;
      bVar10 = fVar30 == fVar42;
      bVar11 = false;
    }
  }
  if (bVar10 || bVar9 != bVar11) {
    fVar30 = fVar42;
  }
  fVar42 = fVar30 * fVar6;
  if (fVar30 * fVar6 <= 9.536743e-07) {
    fVar42 = 9.536743e-07;
  }
  fVar30 = *(float *)(param_2 + 0xa4);
  if (fVar42 <= ABS(fVar37 - fVar31)) {
    fVar37 = (fVar21 - fVar31) / (fVar37 - fVar31) + 0.0;
  }
  fVar37 = (float)SeparatedMinMaxCurve_Evaluate_0x6000108(fVar37,&uStack_148);
  cVar8 = cRam000000000625bae8;
  fVar31 = *(float *)(param_2 + 0x108);
  fVar23 = *(float *)(param_2 + 0x10c);
  *(undefined4 *)(param_2 + 0x118) = 0;
  *(float *)(param_2 + 0x110) = fVar31;
  *(float *)(param_2 + 0x114) = fVar23;
  *(float *)(param_2 + 0x84) = fVar24 * fVar42 * *(float *)(param_2 + 0x5c);
  *(ulong *)(param_2 + 0x7c) =
       CONCAT44((float)((ulong)*(undefined8 *)(param_2 + 0x54) >> 0x20) * fVar28 * fVar30,
                (float)*(undefined8 *)(param_2 + 0x54) * fVar29 * fVar37);
  if (cVar8 == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    fVar31 = *(float *)(param_2 + 0x110);
    fVar23 = *(float *)(param_2 + 0x114);
    fVar38 = *(float *)(param_2 + 0x118);
    cRam000000000625bae8 = '\x01';
  }
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  if (SQRT(fVar31 * fVar31 + fVar23 * fVar23 + fVar38 * fVar38) == 0.0) {
    fVar29 = *(float *)(param_2 + 0x40);
    *(undefined4 *)(param_2 + 0x118) = 0;
    *(float *)(param_2 + 0x110) = fVar29;
    uVar13 = (ulong)*(uint *)(param_2 + 0x44);
    *(uint *)(param_2 + 0x114) = *(uint *)(param_2 + 0x44);
  }
  else {
    fVar29 = *(float *)(param_2 + 0x110);
    uVar13 = *(ulong *)(param_2 + 0x114);
  }
  if (cRam000000000625b52e == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b52e = '\x01';
  }
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  cVar8 = cRam000000000625b26f;
  puVar7 = PTR_DAT_05e58bf8;
  fVar28 = _UNK_0116c240;
  fVar30 = (float)uVar13;
  fVar31 = (float)(uVar13 >> 0x20);
  fVar37 = SQRT(fVar31 * fVar31 + fVar29 * fVar29 + fVar30 * fVar30);
  if (fVar37 <= _UNK_0116c240) {
    if (cRam000000000625b26f == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
    fVar29 = *(float *)(*(undefined8 **)(*(long *)puVar7 + 0xb8) + 1);
    *(undefined8 *)(param_2 + 0x110) = **(undefined8 **)(*(long *)puVar7 + 0xb8);
    *(float *)(param_2 + 0x118) = fVar29;
  }
  else {
    fVar29 = fVar29 / fVar37;
    *(float *)(param_2 + 0x110) = fVar29;
    *(ulong *)(param_2 + 0x114) = CONCAT44(fVar31 / fVar37,fVar30 / fVar37);
    if (cVar8 == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
  }
  fVar37 = (float)uVar13;
  lVar16 = *(long *)(param_2 + 0x10);
  if (lVar16 == 0) goto LAB_049ba7f8;
  bVar3 = *(byte *)(lVar16 + 0x491);
  pfVar18 = *(float **)(*(long *)puVar7 + 0xb8);
  fVar31 = *pfVar18;
  fVar30 = pfVar18[1];
  fVar42 = pfVar18[2];
  func_0x05afb2b0(&uStack_148,lVar16 + 0x490,0x88);
  if ((bVar3 & 1) == 0) {
    iVar12 = MinMaxCurve_get_mode_0x600004f(auStack_140,0);
    if (iVar12 - 1U < 2) {
      if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
      func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
      fVar29 = *(float *)(param_2 + 0xac);
      fVar42 = (float)MinMaxCurve_Evaluate_0x6000057
                                (*(undefined4 *)(param_2 + 100),fVar29,auStack_140,0);
      fVar30 = 0.0;
      fVar31 = 0.0;
    }
    else if ((iVar12 == 3) || (iVar12 == 0)) {
      if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
      fVar42 = *(float *)(param_2 + 0x78);
      fVar38 = *(float *)(param_2 + 0x60);
      func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
      fVar24 = (float)MinMaxCurve_Evaluate_0x6000057
                                (*(undefined4 *)(param_2 + 100),*(undefined4 *)(param_2 + 0xac),
                                 auStack_140,0);
      fVar37 = ABS(fVar42);
      fVar30 = 0.0;
      fVar31 = 0.0;
      fVar29 = 0.0;
      if ((uint)fVar37 < 0x7f800001) {
        fVar29 = fVar37 * fVar6;
      }
      if (fVar29 <= fVar37) {
        fVar42 = (fVar38 / fVar42) * fVar24 + 0.0;
      }
    }
    lVar16 = *(long *)(param_2 + 0x10);
    if (lVar16 == 0) goto LAB_049ba7f8;
    if (*(char *)(lVar16 + 0x5c8) == '\0') {
      lVar16 = Component_get_transform_0x6000c82(lVar16,0);
      if (lVar16 == 0) goto LAB_049ba7f8;
      Transform_get_rotation_0x6000f59(lVar16,0);
      Quaternion_Inverse_0x6000a49(0);
      fVar24 = (float)Quaternion_Internal_ToEulerRad_0x6000a4c(0);
      fVar37 = fVar37 * _UNK_0116c074;
      Quaternion_Internal_MakePositive_0x6000a59(fVar24 * _UNK_0116c074,fVar29 * _UNK_0116c074,0);
      fVar42 = fVar42 + fVar37;
      fVar31 = fVar31 + 0.0;
      fVar30 = fVar30 + 0.0;
    }
  }
  else {
    iVar12 = MinMaxCurve_get_mode_0x600004f(auStack_120,0);
    if (iVar12 == 0) {
LAB_049b9c38:
      if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
      fVar31 = *(float *)(param_2 + 0x78);
      fVar42 = *(float *)(param_2 + 0x60);
      func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
      fVar30 = (float)MinMaxCurve_Evaluate_0x6000057
                                (*(undefined4 *)(param_2 + 0xac),*(undefined4 *)(param_2 + 0xac),
                                 auStack_120,0);
      fVar37 = ABS(fVar31);
      fVar29 = 0.0;
      if ((uint)fVar37 < 0x7f800001) {
        fVar29 = fVar37 * fVar6;
      }
      if (fVar29 <= fVar37) {
        fVar31 = (fVar42 / fVar31) * fVar30 + 0.0;
      }
    }
    else {
      if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
      func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
      iVar12 = MinMaxCurve_get_mode_0x600004f(auStack_120,0);
      if (iVar12 == 3) goto LAB_049b9c38;
      if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
      func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
      fVar31 = (float)MinMaxCurve_Evaluate_0x6000057
                                (*(undefined4 *)(param_2 + 100),*(undefined4 *)(param_2 + 0xac),
                                 auStack_120,0);
    }
    if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
    func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
    iVar12 = MinMaxCurve_get_mode_0x600004f(auStack_100,0);
    if (iVar12 == 0) {
LAB_049b9dd0:
      if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
      fVar30 = *(float *)(param_2 + 0x78);
      fVar24 = *(float *)(param_2 + 0x60);
      func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
      fVar42 = (float)MinMaxCurve_Evaluate_0x6000057
                                (*(undefined4 *)(param_2 + 0xac),*(undefined4 *)(param_2 + 0xac),
                                 auStack_100,0);
      fVar37 = ABS(fVar30);
      fVar29 = 0.0;
      if ((uint)fVar37 < 0x7f800001) {
        fVar29 = fVar37 * fVar6;
      }
      if (fVar29 <= fVar37) {
        fVar30 = (fVar24 / fVar30) * fVar42 + 0.0;
      }
    }
    else {
      if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
      func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
      iVar12 = MinMaxCurve_get_mode_0x600004f(auStack_100,0);
      if (iVar12 == 3) goto LAB_049b9dd0;
      if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
      func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
      fVar30 = (float)MinMaxCurve_Evaluate_0x6000057
                                (*(undefined4 *)(param_2 + 100),*(undefined4 *)(param_2 + 0xac),
                                 auStack_100,0);
    }
    if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
    func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
    iVar12 = MinMaxCurve_get_mode_0x600004f(auStack_e0,0);
    if (iVar12 == 0) {
LAB_049b9ecc:
      if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
      fVar42 = *(float *)(param_2 + 0x78);
      fVar38 = *(float *)(param_2 + 0x60);
      func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
      fVar24 = (float)MinMaxCurve_Evaluate_0x6000057
                                (*(undefined4 *)(param_2 + 0xac),*(undefined4 *)(param_2 + 0xac),
                                 auStack_e0,0);
      fVar37 = ABS(fVar42);
      fVar29 = 0.0;
      if ((uint)fVar37 < 0x7f800001) {
        fVar29 = fVar37 * fVar6;
      }
      if (fVar29 <= fVar37) {
        fVar42 = (fVar38 / fVar42) * fVar24 + 0.0;
      }
    }
    else {
      if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
      func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
      iVar12 = MinMaxCurve_get_mode_0x600004f(auStack_e0,0);
      if (iVar12 == 3) goto LAB_049b9ecc;
      if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
      func_0x05afb2b0(&uStack_148,*(long *)(param_2 + 0x10) + 0x490,0x88);
      fVar29 = *(float *)(param_2 + 0xac);
      fVar42 = (float)MinMaxCurve_Evaluate_0x6000057(*(undefined4 *)(param_2 + 100),auStack_e0,0);
    }
    lVar16 = *(long *)(param_2 + 0x10);
    if (lVar16 == 0) goto LAB_049ba7f8;
    if (*(char *)(lVar16 + 0x5c8) == '\0') {
      lVar16 = Component_get_transform_0x6000c82(lVar16,0);
      if (lVar16 == 0) goto LAB_049ba7f8;
      Transform_get_rotation_0x6000f59(lVar16,0);
      Quaternion_Inverse_0x6000a49(0);
      fVar24 = (float)Quaternion_Internal_ToEulerRad_0x6000a4c(0);
      fVar29 = fVar29 * _UNK_0116c074;
      fVar37 = fVar37 * _UNK_0116c074;
      fVar24 = (float)Quaternion_Internal_MakePositive_0x6000a59(fVar24 * _UNK_0116c074,0);
      fVar31 = fVar31 + fVar24;
      fVar30 = fVar30 + fVar29;
      fVar42 = fVar42 + fVar37;
    }
  }
  lVar16 = *(long *)(param_2 + 0x10);
  if (lVar16 == 0) goto LAB_049ba7f8;
  bVar3 = *(byte *)(lVar16 + 0x519);
  func_0x05afb2b0(&uStack_148,lVar16 + 0x518,0x88);
  fVar29 = *(float *)(lVar16 + 0x5a4);
  fVar38 = *(float *)(lVar16 + 0x5a0);
  fVar23 = ABS(fVar29);
  fVar37 = ABS(fVar38);
  fVar24 = 0.0;
  bVar9 = false;
  bVar10 = false;
  bVar11 = false;
  if ((uint)fVar23 < 0x7f800001) {
    bVar9 = false;
    bVar10 = false;
    bVar11 = true;
    if (!NAN(fVar37) && !NAN(fVar23)) {
      bVar9 = fVar37 < fVar23;
      bVar10 = fVar37 == fVar23;
      bVar11 = false;
    }
  }
  if (bVar10 || bVar9 != bVar11) {
    fVar37 = fVar23;
  }
  fVar23 = fVar37 * fVar6;
  if (fVar37 * fVar6 <= 9.536743e-07) {
    fVar23 = 9.536743e-07;
  }
  if (fVar23 <= ABS(fVar29 - fVar38)) {
    fVar29 = (fVar21 - fVar38) / (fVar29 - fVar38) + 0.0;
  }
  if ((bVar3 & 1) == 0) {
    puVar2 = auStack_140;
    if (cStack_147 != '\0') {
      puVar2 = auStack_e0;
    }
    lVar16 = MinMaxCurve_Evaluate_0x6000057(puVar2,0);
    fVar29 = 0.0;
    fVar23 = extraout_s0;
  }
  else {
    fVar24 = *(float *)(param_2 + 0xac);
    lVar16 = SeparatedMinMaxCurve_Evaluate_0x6000108(fVar29,&uStack_148);
    fVar29 = extraout_s0_00;
  }
  lVar17 = *(long *)(param_2 + 0x10);
  if (lVar17 == 0) goto LAB_049ba7f8;
  if (*(char *)(lVar17 + 0x5c8) == '\0') {
    *(undefined8 *)(param_2 + 0x98) = *(undefined8 *)(param_2 + 0x48);
    *(undefined4 *)(param_2 + 0xa0) = *(undefined4 *)(param_2 + 0x50);
    fVar21 = *(float *)(param_2 + 0x98);
    fVar37 = *(float *)(param_2 + 0x9c);
    fVar38 = *(float *)(param_2 + 0xa0);
  }
  else {
    if (cRam000000000625b61d == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b61d = '\x01';
    }
    lVar16 = *(long *)(*(long *)puVar7 + 0xb8);
    fVar33 = *(float *)(lVar16 + 0x1c);
    fVar39 = *(float *)(lVar16 + 0x20);
    Quaternion_FromToRotation_0x6000a48
              (*(undefined4 *)(lVar16 + 0x18),fVar33,fVar39,*(undefined4 *)(param_2 + 0x110),
               *(undefined4 *)(param_2 + 0x114),*(undefined4 *)(param_2 + 0x118),0);
    fVar21 = *(float *)(param_2 + 0x48);
    fVar37 = *(float *)(param_2 + 0x4c);
    fVar38 = *(float *)(param_2 + 0x50);
    fVar26 = (float)Quaternion_Internal_ToEulerRad_0x6000a4c(0);
    fVar25 = _UNK_0116c074;
    fVar39 = fVar39 * _UNK_0116c074;
    Quaternion_Internal_MakePositive_0x6000a59(fVar26 * _UNK_0116c074,fVar33 * _UNK_0116c074,0);
    fVar33 = 0.0;
    fVar39 = fVar39 * _UNK_0116c26c;
    Quaternion_Internal_FromEulerRad_0x6000a4b(0,0);
    fVar26 = (float)Quaternion_Internal_ToEulerRad_0x6000a4c(0);
    fVar33 = fVar33 * fVar25;
    fVar39 = fVar39 * fVar25;
    lVar16 = Quaternion_Internal_MakePositive_0x6000a59(fVar26 * fVar25,0);
    fVar21 = fVar21 + extraout_s0_01;
    fVar37 = fVar37 + fVar33;
    lVar17 = *(long *)(param_2 + 0x10);
    fVar38 = fVar38 + fVar39;
    *(float *)(param_2 + 0x98) = fVar21;
    *(float *)(param_2 + 0x9c) = fVar37;
    *(float *)(param_2 + 0xa0) = fVar38;
  }
  fVar37 = fVar30 + fVar24 + fVar37;
  *(float *)(param_2 + 0x98) = fVar31 + fVar29 + fVar21;
  *(float *)(param_2 + 0x9c) = fVar37;
  *(float *)(param_2 + 0xa0) = fVar42 + fVar23 + fVar38;
  if (lVar17 == 0) goto LAB_049ba7f8;
  if (*(char *)(lVar17 + 0x3140) != '\0') {
    if (*(long *)(param_2 + 0x140) == 0) goto LAB_049ba7f8;
    iVar12 = *(int *)(*(long *)(param_2 + 0x140) + 0x18);
    if (0 < iVar12) {
      func_0x03577f68(&lStack_190,iVar12 << 1,2,1,*(undefined8 *)PTR_DAT_05e85ee8);
      if (*(long *)(param_2 + 0x140) != 0) {
        func_0x034f0f08(&lStack_1a0,*(int *)(*(long *)(param_2 + 0x140) + 0x18) << 1,2,1,
                        *(undefined8 *)PTR_DAT_05e85ef0);
        if (*(long *)(param_2 + 0x140) != 0) {
          func_0x03510628(&lStack_1b0,*(int *)(*(long *)(param_2 + 0x140) + 0x18) * 6 + -6,2,1,
                          *(undefined8 *)PTR_DAT_05e85ee0);
          fVar29 = *(float *)(param_2 + 0x60);
          if (fVar29 < *(float *)(param_2 + 0x78)) {
            lVar16 = *(long *)(param_2 + 0x140);
            if (lVar16 == 0) goto LAB_049ba7f8;
            fVar37 = *(float *)(param_2 + 0x2c);
            func_0x0344c750(*(undefined4 *)(param_2 + 0x28),lVar16,*(int *)(lVar16 + 0x18) + -1,
                            *(undefined8 *)PTR_DAT_05e85ed8);
          }
          puVar7 = PTR_DAT_05e85ed0;
          lVar16 = *(long *)(param_2 + 0x140);
          if (lVar16 != 0) {
            if (1 < *(int *)(lVar16 + 0x18)) {
              func_0x0344c6f4(lVar16,0,*(undefined8 *)PTR_DAT_05e85ed0);
              if (*(long *)(param_2 + 0x140) == 0) goto LAB_049ba7f8;
              fVar21 = fVar29;
              fVar30 = (float)func_0x0344c6f4(*(long *)(param_2 + 0x140),1,*(undefined8 *)puVar7);
              if (*(long *)(param_2 + 0x140) == 0) goto LAB_049ba7f8;
              fVar31 = *(float *)(param_2 + 0x158);
              fVar42 = *(float *)(param_2 + 0x15c);
              fVar24 = *(float *)(param_2 + 0x60);
              func_0x0344c6f4(*(long *)(param_2 + 0x140),0,*(undefined8 *)puVar7);
              if ((*(long *)(param_2 + 0x10) == 0) || (*(long *)(param_2 + 0x140) == 0))
              goto LAB_049ba7f8;
              fVar23 = *(float *)(*(long *)(param_2 + 0x10) + 0x3168);
              fVar38 = fVar21;
              func_0x0344c6f4(*(long *)(param_2 + 0x140),1,*(undefined8 *)puVar7);
              if ((*(long *)(param_2 + 0x10) == 0) || (*(long *)(param_2 + 0x140) == 0))
              goto LAB_049ba7f8;
              fVar21 = fVar21 + fVar23;
              fVar38 = fVar38 + *(float *)(*(long *)(param_2 + 0x10) + 0x3168);
              fVar23 = ABS(fVar21);
              fVar25 = ABS(fVar38);
              bVar9 = false;
              bVar10 = false;
              bVar11 = false;
              if ((uint)fVar25 < 0x7f800001) {
                bVar9 = false;
                bVar10 = false;
                bVar11 = true;
                if (!NAN(fVar23) && !NAN(fVar25)) {
                  bVar9 = fVar23 < fVar25;
                  bVar10 = fVar23 == fVar25;
                  bVar11 = false;
                }
              }
              if (bVar10 || bVar9 != bVar11) {
                fVar23 = fVar25;
              }
              fVar23 = fVar23 * fVar6;
              if (fVar23 <= 9.536743e-07) {
                fVar23 = 9.536743e-07;
              }
              if (fVar23 <= ABS(fVar38 - fVar21)) {
                fVar38 = (fVar24 - fVar21) / (fVar38 - fVar21) + 0.0;
              }
              fVar21 = 1.0;
              if (ABS(fVar38) <= 1.0) {
                fVar21 = ABS(fVar38);
              }
              fVar37 = fVar37 + (fVar42 - fVar37) * fVar21;
              func_0x0344c750(fVar30 + (fVar31 - fVar30) * fVar21,fVar37,fVar29,
                              *(long *)(param_2 + 0x140),0,*(undefined8 *)PTR_DAT_05e85ed8);
              lVar16 = *(long *)(param_2 + 0x140);
              if (lVar16 == 0) goto LAB_049ba7f8;
            }
            puVar7 = PTR_DAT_05e85ed0;
            fVar29 = (float)func_0x0344c6f4(lVar16,0,*(undefined8 *)PTR_DAT_05e85ed0);
            fVar21 = *(float *)(param_2 + 0x28);
            fVar30 = *(float *)(param_2 + 0x2c);
            if (cRam000000000625c0be == '\0') {
              func_0x029f5a50(PTR_DAT_05e59000);
              cRam000000000625c0be = '\x01';
            }
            if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            lVar16 = *(long *)(param_2 + 0x140);
            if (lVar16 != 0) {
              fVar37 = fVar37 - fVar30;
              fVar29 = fVar29 - fVar21;
              lVar17 = 0;
              iVar12 = 0;
              uVar13 = 0;
              fVar37 = SQRT(fVar29 * fVar29 + fVar37 * fVar37);
              fVar21 = ABS(fVar37);
              fVar29 = 0.0;
              if ((uint)fVar21 < 0x7f800001) {
                fVar29 = fVar21 * fVar6;
              }
              fVar31 = 9.536743e-07;
              fVar30 = fVar21;
              if (fVar29 <= 9.536743e-07) {
                fVar29 = 9.536743e-07;
              }
LAB_049ba49c:
              if ((long)*(int *)(lVar16 + 0x18) <= (long)uVar13) {
                if (0 < *(int *)(lVar16 + 0x18) + -1) {
                  lVar17 = 0;
                  iVar12 = 5;
                  iVar19 = 3;
                  do {
                    *(int *)(lStack_1b0 + (long)(iVar12 + -5) * 4) = iVar19 + -3;
                    *(int *)(lStack_1b0 + (long)(iVar12 + -4) * 4) = iVar19 + -2;
                    lVar17 = lVar17 + 1;
                    *(int *)(lStack_1b0 + (long)(iVar12 + -3) * 4) = iVar19 + -1;
                    *(int *)(lStack_1b0 + (long)(iVar12 + -2) * 4) = iVar19 + -1;
                    *(int *)(lStack_1b0 + (long)(iVar12 + -1) * 4) = iVar19 + -2;
                    *(int *)(lStack_1b0 + (long)iVar12 * 4) = iVar19;
                    iVar12 = iVar12 + 6;
                    iVar19 = iVar19 + 2;
                  } while (lVar17 < *(int *)(lVar16 + 0x18) + -1);
                }
                if ((*(long *)(param_2 + 0x10) == 0) ||
                   (lVar16 = ParticleImage_get_particleTrailRenderer_0x6000096(), lVar16 == 0))
                goto LAB_049ba7f8;
                ParticleTrailRenderer_UpdateMeshData_0x6000115
                          (lVar16,lStack_190,uStack_188,lStack_1b0,uStack_1a8,lStack_1a0,uStack_198)
                ;
                if (*(long *)(param_2 + 0x140) == 0) goto LAB_049ba7f8;
                fVar29 = *(float *)(param_2 + 0x60);
                lVar16 = func_0x0344c6f4(*(long *)(param_2 + 0x140),0,*(undefined8 *)puVar7);
                if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
                if (fVar30 + *(float *)(*(long *)(param_2 + 0x10) + 0x3168) <= fVar29) {
                  if (*(long *)(param_2 + 0x140) == 0) goto LAB_049ba7f8;
                  func_0x0344e27c(*(long *)(param_2 + 0x140),0,*(undefined8 *)PTR_DAT_05e85ec0);
                  lVar16 = *(long *)(param_2 + 0x140);
                  if (lVar16 == 0) goto LAB_049ba7f8;
                  if (0 < *(int *)(lVar16 + 0x18)) {
                    lVar16 = func_0x0344c6f4(lVar16,0,*(undefined8 *)puVar7);
                    *(undefined4 *)(param_2 + 0x158) = extraout_s0_02;
                    *(float *)(param_2 + 0x15c) = fVar31;
                  }
                }
                cVar8 = cRam000000000625b52c;
                if ((*(float *)(param_2 + 0x60) < *(float *)(param_2 + 0x78)) &&
                   (*(char *)(param_2 + 300) != '\0')) {
                  uVar35 = CONCAT44((float)((ulong)*(undefined8 *)(param_2 + 0x11c) >> 0x20) -
                                    (float)((ulong)*(undefined8 *)(param_2 + 0x28) >> 0x20),
                                    (float)*(undefined8 *)(param_2 + 0x11c) -
                                    (float)*(undefined8 *)(param_2 + 0x28));
                  *(undefined8 *)(param_2 + 0x124) = uVar35;
                  if (cVar8 == '\0') {
                    func_0x029f5a50(PTR_DAT_05e59000);
                    uVar35 = *(undefined8 *)(param_2 + 0x124);
                    cRam000000000625b52c = '\x01';
                  }
                  lVar16 = *(long *)PTR_DAT_05e59000;
                  if (*(int *)(lVar16 + 0xe4) == 0) {
                    lVar16 = func_0x029f5bd0();
                  }
                  if (*(long *)(param_2 + 0x10) == 0) goto LAB_049ba7f8;
                  fVar29 = (float)((ulong)uVar35 >> 0x20);
                  if (*(float *)(*(long *)(param_2 + 0x10) + 0x316c) <
                      SQRT((float)uVar35 * (float)uVar35 + fVar29 * fVar29)) {
                    uVar13 = *(ulong *)(param_2 + 0x28);
                    lVar16 = *(long *)(param_2 + 0x140);
                    *(ulong *)(param_2 + 0x11c) = uVar13;
                    if (lVar16 == 0) goto LAB_049ba7f8;
                    lVar17 = *(long *)(lVar16 + 0x10);
                    uVar22 = *(undefined4 *)(param_2 + 0x60);
                    lVar20 = *(long *)PTR_DAT_05e85eb0;
                    *(int *)(lVar16 + 0x1c) = *(int *)(lVar16 + 0x1c) + 1;
                    if (lVar17 == 0) goto LAB_049ba7f8;
                    uVar4 = *(uint *)(lVar16 + 0x18);
                    if (uVar4 < *(uint *)(lVar17 + 0x18)) {
                      lVar17 = lVar17 + (long)(int)uVar4 * 0xc;
                      *(uint *)(lVar16 + 0x18) = uVar4 + 1;
                      *(int *)(lVar17 + 0x20) = (int)uVar13;
                      *(int *)(lVar17 + 0x24) = (int)(uVar13 >> 0x20);
                      *(undefined4 *)(lVar17 + 0x28) = uVar22;
                    }
                    else {
                      lVar16 = func_0x0344ca24(uVar13 & 0xffffffff,uVar13 >> 0x20,lVar16,
                                               *(undefined8 *)
                                                (*(long *)(*(long *)(lVar20 + 0x20) + 0xc0) + 0x70))
                      ;
                    }
                  }
                }
                goto LAB_049baa20;
              }
              fVar30 = (float)func_0x0344c6f4(lVar16,uVar13 & 0xffffffff,*(undefined8 *)puVar7);
              if (uVar13 == 0) {
                fVar42 = 1.0;
              }
              else {
                if (*(long *)(param_2 + 0x140) == 0) goto LAB_049ba7f8;
                fVar24 = fVar31;
                fVar38 = (float)func_0x0344c6f4(*(long *)(param_2 + 0x140),0,*(undefined8 *)puVar7);
                if (*(long *)(param_2 + 0x140) == 0) goto LAB_049ba7f8;
                fVar23 = fVar24;
                fVar25 = (float)func_0x0344c6f4(*(long *)(param_2 + 0x140),uVar13 & 0xffffffff,
                                                *(undefined8 *)puVar7);
                if (cRam000000000625c0be == '\0') {
                  func_0x029f5a50(PTR_DAT_05e59000);
                  cRam000000000625c0be = '\x01';
                }
                if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                fVar42 = fVar37;
                if (fVar29 <= fVar21) {
                  fVar42 = 1.0 - SQRT((fVar38 - fVar25) * (fVar38 - fVar25) +
                                      (fVar24 - fVar23) * (fVar24 - fVar23)) / fVar37;
                }
              }
              lVar16 = *(long *)(param_2 + 0x10);
              if (lVar16 == 0) goto LAB_049ba7f8;
              fVar24 = *(float *)(param_2 + 0xa4);
              fVar23 = *(float *)(param_2 + 0x7c);
              uStack_b8 = *(undefined8 *)(lVar16 + 0x3150);
              uStack_c0 = *(undefined8 *)(lVar16 + 0x3148);
              uStack_a8 = *(undefined8 *)(lVar16 + 0x3160);
              uStack_b0 = *(undefined8 *)(lVar16 + 0x3158);
              fVar38 = (float)MinMaxCurve_Evaluate_0x6000057(fVar42,&uStack_c0,0);
              lVar16 = *(long *)(param_2 + 0x140);
              if (lVar16 == 0) goto LAB_049ba7f8;
              if (1 < *(int *)(lVar16 + 0x18)) {
                fVar31 = fVar24;
                if (uVar13 < *(int *)(lVar16 + 0x18) - 1) {
                  fVar30 = (float)func_0x0344c6f4(lVar16,(int)uVar13 + 1,*(undefined8 *)puVar7);
                  lVar16 = *(long *)(param_2 + 0x140);
                  if (lVar16 == 0) goto LAB_049ba7f8;
                  uVar35 = *(undefined8 *)puVar7;
                  uVar15 = uVar13 & 0xffffffff;
                }
                else {
                  fVar30 = (float)func_0x0344c6f4(lVar16,uVar13 & 0xffffffff,*(undefined8 *)puVar7);
                  lVar16 = *(long *)(param_2 + 0x140);
                  if (lVar16 == 0) goto LAB_049ba7f8;
                  uVar35 = *(undefined8 *)puVar7;
                  uVar15 = (ulong)((int)uVar13 - 1);
                }
                fVar24 = fVar31;
                fVar25 = (float)func_0x0344c6f4(lVar16,uVar15,uVar35);
                fVar30 = fVar30 - fVar25;
                fVar31 = fVar31 - fVar24;
              }
              if (*(long *)(param_2 + 0x140) != 0) {
                fVar25 = (float)func_0x0344c6f4(*(long *)(param_2 + 0x140),uVar13 & 0xffffffff,
                                                *(undefined8 *)puVar7);
                if (cRam000000000625b52c == '\0') {
                  func_0x029f5a50(PTR_DAT_05e59000);
                  cRam000000000625b52c = '\x01';
                }
                if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                fVar26 = SQRT(fVar31 * fVar31 + fVar30 * fVar30);
                if (fVar26 <= fVar28) {
                  if (cRam000000000625b271 == '\0') {
                    func_0x029f5a50(PTR_DAT_05e59608);
                    cRam000000000625b271 = '\x01';
                  }
                  fVar30 = **(float **)(*(long *)PTR_DAT_05e59608 + 0xb8);
                  fVar31 = (*(float **)(*(long *)PTR_DAT_05e59608 + 0xb8))[1];
                }
                else {
                  fVar30 = fVar30 / fVar26;
                  fVar31 = fVar31 / fVar26;
                }
                lVar16 = *(long *)(param_2 + 0x10);
                if (lVar16 != 0) {
                  uStack_150 = *(undefined8 *)(lVar16 + 0x31d8);
                  fVar26 = *(float *)(param_2 + 0xa8);
                  uStack_178 = *(undefined8 *)(lVar16 + 0x31b0);
                  uStack_180 = *(undefined8 *)(lVar16 + 0x31a8);
                  uStack_168 = *(undefined8 *)(lVar16 + 0x31c0);
                  uVar35 = *(undefined8 *)(lVar16 + 0x31b8);
                  uStack_158 = *(undefined8 *)(lVar16 + 0x31d0);
                  uVar43 = *(undefined8 *)(lVar16 + 0x31c8);
                  uStack_170 = uVar35;
                  uStack_160 = uVar43;
                  fVar42 = (float)MinMaxGradient_Evaluate_0x6000064(fVar42,&uStack_180,0);
                  lVar16 = *(long *)(param_2 + 0x10);
                  if (lVar16 != 0) {
                    uStack_178 = *(undefined8 *)(lVar16 + 0x3178);
                    uStack_180 = *(undefined8 *)(lVar16 + 0x3170);
                    uStack_168 = *(undefined8 *)(lVar16 + 0x3188);
                    uStack_170 = *(undefined8 *)(lVar16 + 0x3180);
                    uStack_158 = *(undefined8 *)(lVar16 + 0x3198);
                    uVar40 = *(undefined8 *)(lVar16 + 0x3190);
                    uStack_150 = *(undefined8 *)(lVar16 + 0x31a0);
                    fVar34 = *(float *)(param_2 + 0xa8);
                    uStack_160 = uVar40;
                    fVar33 = (float)uVar43;
                    fVar39 = (float)MinMaxGradient_Evaluate_0x6000064
                                              (*(undefined4 *)(param_2 + 100),&uStack_180,0);
                    if (*(long *)(param_2 + 0x10) != 0) goto code_r0x049ba744;
                  }
                }
              }
            }
          }
        }
      }
      goto LAB_049ba7f8;
    }
  }
LAB_049baa20:
  lVar17 = *(long *)(param_2 + 0x10);
  if (lVar17 == 0) goto LAB_049ba7f8;
  iVar12 = *(int *)(lVar17 + 0x6e4);
  iVar19 = *(int *)(lVar17 + 0x6f0);
  if (iVar12 == 0) {
    uStack_b8 = *(undefined8 *)(lVar17 + 0x700);
    uStack_c0 = *(undefined8 *)(lVar17 + 0x6f8);
    uStack_a8 = *(undefined8 *)(lVar17 + 0x710);
    uStack_b0 = *(undefined8 *)(lVar17 + 0x708);
    fVar29 = (float)MinMaxCurve_Evaluate_0x6000057
                              (*(undefined4 *)(param_2 + 100),*(undefined4 *)(param_2 + 0xbc),
                               &uStack_c0,0);
    lVar16 = *(long *)(param_2 + 0x10);
    if (lVar16 == 0) goto LAB_049ba7f8;
    uStack_b8 = *(undefined8 *)(lVar16 + 0x720);
    uStack_c0 = *(undefined8 *)(lVar16 + 0x718);
    uStack_a8 = *(undefined8 *)(lVar16 + 0x730);
    uStack_b0 = *(undefined8 *)(lVar16 + 0x728);
    iVar12 = *(int *)(lVar16 + 0x744);
    lVar16 = MinMaxCurve_Evaluate_0x6000057
                       (*(undefined4 *)(param_2 + 100),*(undefined4 *)(param_2 + 200),&uStack_c0,0);
    fVar29 = fVar29 * (float)iVar12;
    iVar12 = -0x80000000;
    if (fVar29 != INFINITY) {
      iVar12 = (int)fVar29;
    }
    iVar1 = -0x80000000;
    if (extraout_s0_03 != INFINITY) {
      iVar1 = (int)extraout_s0_03;
    }
    iVar12 = iVar1 + iVar12;
LAB_049babc4:
    *(int *)(param_2 + 0x134) = iVar12;
  }
  else if (iVar12 == 2) {
    fVar29 = 1.0 / (float)*(int *)(lVar17 + 0x740);
    param_1 = *(float *)(param_2 + 0x130) + param_1;
    *(float *)(param_2 + 0x130) = param_1;
    if (fVar29 <= param_1) {
      iVar12 = *(int *)(param_2 + 0x134);
      do {
        param_1 = param_1 - fVar29;
        iVar12 = iVar12 + 1;
      } while (fVar29 <= param_1);
      *(float *)(param_2 + 0x130) = param_1;
      goto LAB_049babc4;
    }
  }
  else if (iVar12 == 1) {
    if (cRam000000000625b52c == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625b52c = '\x01';
    }
    uVar35 = *(undefined8 *)(param_2 + 0x40);
    lVar16 = *(long *)PTR_DAT_05e59000;
    if (*(int *)(lVar16 + 0xe4) == 0) {
      lVar16 = func_0x029f5bd0();
    }
    lVar17 = *(long *)(param_2 + 0x10);
    if (lVar17 == 0) goto LAB_049ba7f8;
    fVar30 = (float)uVar35;
    fVar31 = (float)((ulong)uVar35 >> 0x20);
    fVar21 = *(float *)(lVar17 + 0x73c);
    fVar28 = *(float *)(lVar17 + 0x738);
    fVar37 = ABS(fVar21);
    fVar29 = ABS(fVar28);
    bVar9 = false;
    bVar10 = false;
    bVar11 = false;
    if ((uint)fVar37 < 0x7f800001) {
      bVar9 = false;
      bVar10 = false;
      bVar11 = true;
      if (!NAN(fVar29) && !NAN(fVar37)) {
        bVar9 = fVar29 < fVar37;
        bVar10 = fVar29 == fVar37;
        bVar11 = false;
      }
    }
    if (bVar10 || bVar9 != bVar11) {
      fVar29 = fVar37;
    }
    fVar29 = fVar29 * fVar6;
    if (fVar29 <= 9.536743e-07) {
      fVar29 = 9.536743e-07;
    }
    if (fVar29 <= ABS(fVar21 - fVar28)) {
      fVar21 = ((SQRT(fVar30 * fVar30 + fVar31 * fVar31) - fVar28) / (fVar21 - fVar28)) *
               (float)iVar19 + 0.0;
    }
    iVar12 = -0x80000000;
    if (fVar21 != INFINITY) {
      iVar12 = (int)fVar21;
    }
    goto LAB_049babc4;
  }
  fVar29 = (float)iVar19;
  fVar21 = (float)*(int *)(param_2 + 0x134) -
           (float)(int)((float)*(int *)(param_2 + 0x134) / fVar29) * fVar29;
  if (fVar21 <= fVar29) {
    fVar29 = fVar21;
  }
  fVar6 = 0.0;
  if (0.0 <= fVar21) {
    fVar6 = fVar29;
  }
  lVar17 = *(long *)(param_2 + 0x150);
  iVar12 = -0x80000000;
  if (fVar6 != INFINITY) {
    iVar12 = (int)fVar6;
  }
  *(int *)(param_2 + 0x138) = iVar12;
  if (lVar17 == 0) {
LAB_049ba7f8:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (*(int *)(lVar17 + 0x18) != 0) {
    *(ulong *)(lVar17 + 0x20) =
         CONCAT44((float)((ulong)*(undefined8 *)(param_2 + 0x7c) >> 0x20) * 0.5,
                  (float)*(undefined8 *)(param_2 + 0x7c) * 0.5);
    lVar17 = *(long *)(param_2 + 0x150);
    if (lVar17 == 0) goto LAB_049ba7f8;
    if ((*(uint *)(lVar17 + 0x18) & 0xfffffffe) != 0) {
      *(ulong *)(lVar17 + 0x28) =
           CONCAT44((float)((ulong)*(undefined8 *)(param_2 + 0x7c) >> 0x20) *
                    (float)((ulong)_UNK_011705b8 >> 0x20),
                    (float)*(undefined8 *)(param_2 + 0x7c) * (float)_UNK_011705b8);
      lVar17 = *(long *)(param_2 + 0x150);
      if (lVar17 == 0) goto LAB_049ba7f8;
      if (2 < *(uint *)(lVar17 + 0x18)) {
        *(ulong *)(lVar17 + 0x30) =
             CONCAT44((float)((ulong)*(undefined8 *)(param_2 + 0x7c) >> 0x20) * -0.5,
                      (float)*(undefined8 *)(param_2 + 0x7c) * -0.5);
        lVar17 = *(long *)(param_2 + 0x150);
        if (lVar17 == 0) goto LAB_049ba7f8;
        if ((*(uint *)(lVar17 + 0x18) & 0xfffffffc) != 0) {
          *(ulong *)(lVar17 + 0x38) =
               CONCAT44((float)((ulong)*(undefined8 *)(param_2 + 0x7c) >> 0x20) *
                        (float)((ulong)_UNK_0116fc40 >> 0x20),
                        (float)*(undefined8 *)(param_2 + 0x7c) * (float)_UNK_0116fc40);
          Particle_RotatePointsAroundCenter
                    (*(undefined4 *)(param_2 + 0x98),*(undefined4 *)(param_2 + 0x9c),
                     *(undefined4 *)(param_2 + 0xa0),lVar16,*(undefined8 *)(param_2 + 0x150));
          lVar16 = *(long *)(param_2 + 0x150);
          if (lVar16 == 0) goto LAB_049ba7f8;
          if (*(int *)(lVar16 + 0x18) != 0) {
            lVar17 = *(long *)(param_2 + 0x148);
            if (lVar17 == 0) goto LAB_049ba7f8;
            if (*(int *)(lVar17 + 0x18) != 0) {
              *(ulong *)(lVar17 + 0x20) =
                   CONCAT44((float)((ulong)*(undefined8 *)(param_2 + 0x28) >> 0x20) +
                            (float)((ulong)*(undefined8 *)(lVar16 + 0x20) >> 0x20),
                            (float)*(undefined8 *)(param_2 + 0x28) +
                            (float)*(undefined8 *)(lVar16 + 0x20));
              lVar16 = *(long *)(param_2 + 0x150);
              if (lVar16 == 0) goto LAB_049ba7f8;
              if ((*(uint *)(lVar16 + 0x18) & 0xfffffffe) != 0) {
                lVar17 = *(long *)(param_2 + 0x148);
                if (lVar17 == 0) goto LAB_049ba7f8;
                if ((*(uint *)(lVar17 + 0x18) & 0xfffffffe) != 0) {
                  *(ulong *)(lVar17 + 0x28) =
                       CONCAT44((float)((ulong)*(undefined8 *)(param_2 + 0x28) >> 0x20) +
                                (float)((ulong)*(undefined8 *)(lVar16 + 0x28) >> 0x20),
                                (float)*(undefined8 *)(param_2 + 0x28) +
                                (float)*(undefined8 *)(lVar16 + 0x28));
                  lVar16 = *(long *)(param_2 + 0x150);
                  if (lVar16 == 0) goto LAB_049ba7f8;
                  if (2 < *(uint *)(lVar16 + 0x18)) {
                    lVar17 = *(long *)(param_2 + 0x148);
                    if (lVar17 == 0) goto LAB_049ba7f8;
                    if (2 < *(uint *)(lVar17 + 0x18)) {
                      *(ulong *)(lVar17 + 0x30) =
                           CONCAT44((float)((ulong)*(undefined8 *)(param_2 + 0x28) >> 0x20) +
                                    (float)((ulong)*(undefined8 *)(lVar16 + 0x30) >> 0x20),
                                    (float)*(undefined8 *)(param_2 + 0x28) +
                                    (float)*(undefined8 *)(lVar16 + 0x30));
                      lVar16 = *(long *)(param_2 + 0x150);
                      if (lVar16 == 0) goto LAB_049ba7f8;
                      if ((*(uint *)(lVar16 + 0x18) & 0xfffffffc) != 0) {
                        lVar17 = *(long *)(param_2 + 0x148);
                        if (lVar17 == 0) goto LAB_049ba7f8;
                        if ((*(uint *)(lVar17 + 0x18) & 0xfffffffc) != 0) {
                          *(ulong *)(lVar17 + 0x38) =
                               CONCAT44((float)((ulong)*(undefined8 *)(param_2 + 0x28) >> 0x20) +
                                        (float)((ulong)*(undefined8 *)(lVar16 + 0x38) >> 0x20),
                                        (float)*(undefined8 *)(param_2 + 0x28) +
                                        (float)*(undefined8 *)(lVar16 + 0x38));
                          return;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
code_r0x049ba744:
  uVar36 = CONCAT44(fVar26 * fVar34,fVar42 * fVar39);
  fVar27 = (float)uVar35 * (float)uVar40;
  fVar33 = (float)uVar43 * fVar33;
  uVar35 = CONCAT44(fVar33,fVar27);
  if (*(char *)(*(long *)(param_2 + 0x10) + 0x31e8) != '\0') {
    uVar36 = CONCAT44(fVar26 * fVar34 * (float)((ulong)*(undefined8 *)(param_2 + 0x88) >> 0x20),
                      fVar42 * fVar39 * (float)*(undefined8 *)(param_2 + 0x88));
    uVar35 = CONCAT44(fVar33 * (float)((ulong)*(undefined8 *)(param_2 + 0x90) >> 0x20),
                      fVar27 * (float)*(undefined8 *)(param_2 + 0x90));
  }
  fVar23 = fVar23 * fVar38;
  uVar15 = lVar17 >> 0x20;
  uVar13 = uVar13 + 1;
  lVar17 = lVar17 + 0x200000000;
  uVar15 = uVar15 | 1;
  pfVar18 = (float *)(lStack_190 + (long)(int)uVar15 * 0xc);
  pfVar18[2] = 0.0;
  fVar38 = fVar23 * -fVar31 * 0.5;
  fVar42 = fVar23 * fVar30 * 0.5;
  fVar30 = fVar25 - fVar38;
  fVar31 = fVar24 - fVar42;
  *pfVar18 = fVar25 + fVar38;
  pfVar18[1] = fVar24 + fVar42;
  pfVar18 = (float *)(lStack_190 + (long)iVar12 * 0xc);
  *pfVar18 = fVar30;
  pfVar18[1] = fVar31;
  pfVar18[2] = 0.0;
  puVar5 = (undefined8 *)(lStack_1a0 + (long)iVar12 * 0x10);
  puVar5[1] = uVar35;
  *puVar5 = uVar36;
  iVar12 = iVar12 + 2;
  puVar5 = (undefined8 *)(lStack_1a0 + uVar15 * 0x10);
  puVar5[1] = uVar35;
  *puVar5 = uVar36;
  lVar16 = *(long *)(param_2 + 0x140);
  if (lVar16 == 0) goto LAB_049ba7f8;
  goto LAB_049ba49c;
}

