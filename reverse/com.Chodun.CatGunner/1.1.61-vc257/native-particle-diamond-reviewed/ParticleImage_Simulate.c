/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48bd23c, Ghidra VA 049bd23c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ParticleImage_Simulate(float param_1,float param_2,ulong param_3,long *param_4,uint param_5)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined1 uVar6;
  undefined1 uVar7;
  undefined1 uVar8;
  undefined1 uVar9;
  ushort uVar10;
  ushort uVar11;
  long lVar12;
  long lVar13;
  undefined *puVar14;
  undefined *puVar15;
  undefined *puVar16;
  undefined *puVar17;
  undefined *puVar18;
  undefined *puVar19;
  byte bVar20;
  int iVar21;
  int iVar22;
  long lVar23;
  ulong uVar24;
  long *plVar25;
  undefined8 uVar26;
  undefined8 *puVar27;
  undefined8 uVar28;
  long *plVar29;
  long *plVar30;
  float *pfVar31;
  ushort *puVar32;
  long lVar33;
  long *plVar34;
  uint uVar35;
  undefined4 *puVar36;
  long lVar37;
  long lVar38;
  long lVar39;
  long lVar40;
  long lVar41;
  int iVar42;
  undefined4 uVar43;
  undefined4 uVar44;
  float fVar45;
  float fVar46;
  float fVar47;
  float fVar48;
  float fVar49;
  undefined4 uVar50;
  undefined4 uVar51;
  undefined4 uVar52;
  undefined4 uVar53;
  long lVar54;
  long lVar55;
  long lVar56;
  float fVar57;
  float fVar58;
  float fVar59;
  undefined4 uVar60;
  undefined4 uVar61;
  float fVar62;
  undefined4 uVar63;
  float fVar64;
  float fVar65;
  long lVar66;
  float fVar67;
  long lVar68;
  long lVar69;
  float fVar70;
  undefined4 uVar71;
  float fVar72;
  undefined1 auVar73 [16];
  undefined1 auVar74 [16];
  undefined8 uStack_8a60;
  undefined8 uStack_8a58;
  undefined8 uStack_8a50;
  undefined8 uStack_8a48;
  undefined8 uStack_8a40;
  undefined8 uStack_8a38;
  long lStack_8a30;
  long lStack_8a28;
  long lStack_8a20;
  long lStack_8a18;
  long lStack_8a10;
  long lStack_8a08;
  long lStack_8a00;
  long lStack_89f0;
  long lStack_89e8;
  long lStack_89e0;
  long lStack_89d8;
  long lStack_89d0;
  long lStack_89c8;
  long lStack_89c0;
  long lStack_89b0;
  long lStack_89a8;
  long lStack_89a0;
  long lStack_8998;
  long lStack_8990;
  long lStack_8988;
  long lStack_8980;
  long lStack_8978;
  long lStack_8970;
  long lStack_8968;
  long lStack_8960;
  long lStack_8958;
  long lStack_8950;
  long lStack_8948;
  long lStack_8940;
  long lStack_8938;
  long lStack_8930;
  long lStack_8928;
  long lStack_8920;
  long lStack_8918;
  long lStack_8910;
  long lStack_8908;
  long lStack_8900;
  long lStack_88f8;
  undefined1 auStack_88e8 [136];
  undefined1 auStack_8860 [136];
  undefined1 auStack_87d8 [136];
  long lStack_8750;
  long lStack_8748;
  long lStack_8740;
  long lStack_8738;
  long lStack_8730;
  long lStack_8728;
  long lStack_8720;
  long lStack_8710;
  long lStack_8708;
  long lStack_8700;
  long lStack_86f8;
  long lStack_86f0;
  long lStack_86e8;
  long lStack_86e0;
  undefined1 auStack_86d0 [136];
  undefined1 auStack_8648 [136];
  long lStack_85c0;
  long lStack_85b8;
  long lStack_85b0;
  long lStack_85a8;
  long *plStack_8598;
  undefined8 uStack_8590;
  undefined8 uStack_8588;
  undefined1 auStack_8578 [208];
  undefined2 uStack_84a8;
  undefined1 uStack_84a6;
  undefined2 uStack_84a4;
  undefined1 uStack_84a2;
  undefined2 uStack_84a0;
  undefined1 uStack_849e;
  undefined2 uStack_849c;
  undefined1 uStack_849a;
  long lStack_8498;
  undefined8 uStack_8490;
  long lStack_8488;
  undefined8 uStack_8480;
  long lStack_8478;
  undefined8 uStack_8470;
  long lStack_8468;
  undefined8 uStack_8460;
  undefined1 auStack_8458 [232];
  undefined8 uStack_8370;
  undefined8 uStack_8368;
  undefined1 auStack_63a0 [272];
  undefined1 auStack_6290 [272];
  undefined1 auStack_6180 [272];
  undefined1 auStack_6070 [272];
  undefined1 auStack_5f60 [272];
  undefined1 auStack_5e50 [824];
  undefined1 auStack_5b18 [824];
  undefined8 uStack_57e0;
  undefined8 uStack_57d8;
  undefined1 auStack_54a8 [1064];
  undefined8 uStack_5080;
  undefined8 uStack_5078;
  undefined8 uStack_4c50;
  undefined8 uStack_4c48;
  undefined1 auStack_4910 [824];
  undefined1 auStack_45d8 [272];
  undefined1 auStack_44c8 [7];
  undefined1 auStack_44c1 [1065];
  undefined1 auStack_4098 [4];
  undefined1 auStack_4094 [272];
  undefined1 auStack_3f84 [276];
  undefined1 auStack_3e70 [7];
  undefined1 auStack_3e69 [273];
  undefined1 auStack_3d58 [7];
  undefined1 auStack_3d51 [273];
  undefined1 auStack_3c40 [824];
  undefined1 auStack_3908 [276];
  undefined1 auStack_37f4 [4];
  undefined1 auStack_37f0 [272];
  undefined6 uStack_36e0;
  undefined2 uStack_36da;
  undefined6 uStack_36d8;
  undefined2 uStack_36d2;
  undefined6 uStack_36d0;
  undefined1 auStack_36c8 [824];
  undefined1 auStack_3390 [824];
  undefined1 auStack_3058 [1064];
  undefined1 auStack_2c30 [1064];
  undefined1 auStack_2808 [824];
  undefined1 auStack_24d0 [828];
  undefined1 auStack_2194 [4];
  undefined1 auStack_2190 [272];
  undefined8 uStack_2080;
  undefined8 uStack_2078;
  undefined8 uStack_2070;
  undefined8 uStack_2068;
  undefined8 uStack_2060;
  undefined8 uStack_2058;
  undefined8 uStack_1fa8;
  undefined8 uStack_1fa0;
  long lStack_a8;
  
  lVar33 = tpidr_el0;
  lStack_a8 = *(long *)(lVar33 + 0x28);
  plVar34 = param_4 + 0x628;
  if ((bRam000000000626283f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e85fc0);
    func_0x029f5a50(PTR_DAT_05e85fc8);
    func_0x029f5a50(PTR_DAT_05e85fd0);
    func_0x029f5a50(PTR_DAT_05e85fd8);
    func_0x029f5a50(PTR_DAT_05e85fe0);
    func_0x029f5a50(PTR_DAT_05e85ec8);
    func_0x029f5a50(PTR_DAT_05e85f40);
    func_0x029f5a50(PTR_DAT_05e85fb0);
    func_0x029f5a50(PTR_DAT_05e85fb8);
    func_0x029f5a50(PTR_DAT_05e85fe8);
    func_0x029f5a50(PTR_DAT_05e85ff0);
    func_0x029f5a50(PTR_DAT_05e85ff8);
    func_0x029f5a50(PTR_DAT_05e86000);
    func_0x029f5a50(PTR_DAT_05e86008);
    func_0x029f5a50(PTR_DAT_05e86010);
    func_0x029f5a50(PTR_DAT_05e85ee0);
    func_0x029f5a50(PTR_DAT_05e85ee8);
    func_0x029f5a50(PTR_DAT_05e85ef0);
    func_0x029f5a50(PTR_DAT_05e86018);
    func_0x029f5a50(PTR_DAT_05e86020);
    func_0x029f5a50(PTR_DAT_05e86028);
    func_0x029f5a50(PTR_DAT_05e86030);
    func_0x029f5a50(PTR_DAT_05e86038);
    func_0x029f5a50(PTR_DAT_05e86040);
    func_0x029f5a50(PTR_DAT_05e86048);
    func_0x029f5a50(PTR_DAT_05e86050);
    func_0x029f5a50(PTR_DAT_05e86058);
    func_0x029f5a50(PTR_DAT_05e85f48);
    func_0x029f5a50(PTR_DAT_05e86060);
    func_0x029f5a50(PTR_DAT_05e86068);
    func_0x029f5a50(PTR_DAT_05e86070);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5bfa8);
    func_0x029f5a50(PTR_DAT_05e86078);
    func_0x029f5a50(PTR_DAT_05e86080);
    func_0x029f5a50(PTR_DAT_05e86088);
    bRam000000000626283f = 1;
  }
  func_0x05afb2a0(auStack_8458,0,0xe8);
  uStack_8460 = 0;
  lStack_8468 = 0;
  uStack_8470 = 0;
  lStack_8478 = 0;
  uStack_8480 = 0;
  lStack_8488 = 0;
  uStack_8490 = 0;
  lStack_8498 = 0;
  func_0x05afb2a0(auStack_2194,0,0x114);
  func_0x05afb2a0(auStack_24d0,0,0x338);
  func_0x05afb2a0(auStack_2808,0,0x338);
  func_0x05afb2a0(auStack_2c30,0,0x428);
  func_0x05afb2a0(auStack_3058,0,0x428);
  func_0x05afb2a0(auStack_3390,0,0x338);
  func_0x05afb2a0(auStack_36c8,0,0x338);
  uStack_36d8 = 0;
  uStack_36e0 = 0;
  uStack_36da = 0;
  uStack_36d2 = 0;
  uStack_36d0 = 0;
  func_0x05afb2a0(auStack_37f4,0,0x114);
  func_0x05afb2a0(auStack_3908,0,0x110);
  uStack_849c = 0;
  uStack_849a = 0;
  uStack_84a0 = 0;
  uStack_849e = 0;
  func_0x05afb2a0(auStack_3c40,0,0x338);
  func_0x05afb2a0(auStack_3d58,0,0x117);
  func_0x05afb2a0(auStack_3e70,0,0x117);
  uStack_84a4 = 0;
  uStack_84a2 = 0;
  uStack_84a8 = 0;
  uStack_84a6 = 0;
  func_0x05afb2a0(auStack_3f84,0,0x113);
  func_0x05afb2a0(auStack_8578,0,0xd0);
  uStack_8588 = 0;
  uStack_8590 = 0;
  plStack_8598 = (long *)0x0;
  func_0x05afb2a0(auStack_4098,0,0x114);
  func_0x05afb2a0(auStack_44c8,0,0x42f);
  fVar57 = (float)param_3;
  if (*(char *)((long)param_4 + 0x322e) == '\0') goto LAB_049be068;
  lVar23 = Graphic_get_canvasRenderer_0x60000f9(param_4,0);
  if (lVar23 == 0) goto LAB_049be6e4;
  uVar24 = CanvasRenderer_get_cull_0x600001c(lVar23,0);
  fVar57 = (float)param_3;
  if ((uVar24 & 1) != 0) goto LAB_049be068;
  if (0.0 < *(float *)(param_4 + 0x624)) {
    fVar57 = *(float *)((long)param_4 + 0x14c);
    fVar62 = *(float *)(param_4 + 0x63e);
    param_3 = (ulong)(uint)fVar62;
    if (*(float *)(param_4 + 0x2e) + fVar57 <= fVar62) {
      if ((fVar57 < fVar62) && (*(char *)((long)param_4 + 0x16c) != '\0')) goto LAB_049bd668;
    }
    else if (fVar57 < fVar62) {
LAB_049bd668:
      fVar62 = 1.0 / *(float *)(param_4 + 0x624);
      fVar57 = *(float *)((long)param_4 + 0x31fc) + param_1;
      *(float *)((long)param_4 + 0x31fc) = fVar57;
      puVar18 = PTR_DAT_05e86070;
      puVar17 = PTR_DAT_05e86038;
      puVar16 = PTR_DAT_05e86020;
      puVar15 = PTR_DAT_05e85fd8;
      puVar14 = PTR_DAT_05e85f48;
      while (fVar62 <= fVar57) {
        fVar57 = fVar57 - fVar62;
        iVar21 = *(int *)((long)param_4 + 0x3284) + 1;
        *(int *)((long)param_4 + 0x3284) = iVar21;
        *(float *)((long)param_4 + 0x31fc) = fVar57;
        if ((*(char *)((long)param_4 + 0x322c) == '\0') ||
           (*(char *)((long)param_4 + 0x322d) == '\0')) {
          param_3 = 0;
          lVar23 = param_4[0xe9];
          uVar26 = ParticleImage_GenerateParticle(fVar57,0,param_4,iVar21,1,0);
          if (lVar23 == 0) goto LAB_049be6e4;
          lVar37 = *(long *)(lVar23 + 0x10);
          lVar38 = *(long *)puVar15;
          *(int *)(lVar23 + 0x1c) = *(int *)(lVar23 + 0x1c) + 1;
          if (lVar37 == 0) goto LAB_049be6e4;
          uVar35 = *(uint *)(lVar23 + 0x18);
          if (uVar35 < *(uint *)(lVar37 + 0x18)) {
            *(uint *)(lVar23 + 0x18) = uVar35 + 1;
            *(undefined8 *)(lVar37 + (long)(int)uVar35 * 8 + 0x20) = uVar26;
            Managed_WriteBarrier();
          }
          else {
            func_0x0452cba8(lVar23,uVar26,
                            *(undefined8 *)(*(long *)(*(long *)(lVar38 + 0x20) + 0xc0) + 0x70));
          }
        }
        else {
          plVar25 = (long *)ParticleImage_get_JobParticles_0x600008e(param_4);
          lVar23 = *plVar25;
          if ((*(ushort *)(*(long *)(*(long *)puVar14 + 0x20) + 0x135) & 1) == 0) {
            func_0x02a2e9f8();
          }
          iVar21 = *(int *)(lVar23 + 8);
          uVar26 = ParticleImage_get_JobParticles_0x600008e(param_4);
          if (iVar21 < 1) {
            ParticleImage_GenerateJobParticle_0x60000e6
                      (&uStack_2080,0,0,param_4,*(undefined4 *)((long)param_4 + 0x3284),1,0);
            func_0x05afb2b0(auStack_8458,&uStack_2080,0xe8);
            func_0x035b3914(uVar26,auStack_8458,*(undefined8 *)puVar16);
          }
          else {
            func_0x035b3afc(uVar26,0,1,*(undefined8 *)puVar17);
            puVar27 = (undefined8 *)ParticleImage_get_JobParticles_0x600008e(param_4);
            ParticleImage_GenerateJobParticle_0x60000e6
                      (&uStack_2080,0,0,param_4,*(undefined4 *)((long)param_4 + 0x3284),1,0);
            puVar27 = (undefined8 *)*puVar27;
            if ((*(ushort *)(*(long *)(*(long *)puVar18 + 0x20) + 0x135) & 1) == 0) {
              func_0x02a2e9f8();
            }
            func_0x05afb2b0(*puVar27,&uStack_2080,0xe8);
          }
        }
        fVar57 = *(float *)((long)param_4 + 0x31fc);
      }
    }
  }
  if ((0.0 < *(float *)((long)param_4 + 0x3124)) &&
     (fVar57 = *(float *)(param_4 + 0x2e), 0.0 < fVar57)) {
    fVar62 = *(float *)((long)param_4 + 0x14c);
    param_3 = (ulong)(uint)fVar62;
    fVar64 = *(float *)(param_4 + 0x63e);
    if (fVar57 + fVar62 <= fVar64) {
      if ((fVar62 <= fVar64) && (*(char *)((long)param_4 + 0x16c) != '\0')) goto LAB_049bd8a0;
    }
    else if (fVar62 <= fVar64) {
LAB_049bd8a0:
      fVar57 = fVar57 / *(float *)((long)param_4 + 0x3124);
      fVar62 = *(float *)(param_4 + 0x640) + param_1;
      *(float *)(param_4 + 0x640) = fVar62;
      puVar18 = PTR_DAT_05e86070;
      puVar17 = PTR_DAT_05e86038;
      puVar16 = PTR_DAT_05e86020;
      puVar15 = PTR_DAT_05e85fd8;
      puVar14 = PTR_DAT_05e85f48;
      while (fVar57 <= fVar62) {
        fVar62 = fVar62 - fVar57;
        iVar21 = (int)param_4[0x651] + 1;
        *(int *)(param_4 + 0x651) = iVar21;
        *(float *)(param_4 + 0x640) = fVar62;
        if ((*(char *)((long)param_4 + 0x322c) == '\0') ||
           (*(char *)((long)param_4 + 0x322d) == '\0')) {
          param_3 = 0;
          lVar23 = param_4[0xe9];
          uVar26 = ParticleImage_GenerateParticle(fVar62,0,param_4,iVar21,2,0);
          if (lVar23 == 0) goto LAB_049be6e4;
          lVar37 = *(long *)(lVar23 + 0x10);
          lVar38 = *(long *)puVar15;
          *(int *)(lVar23 + 0x1c) = *(int *)(lVar23 + 0x1c) + 1;
          if (lVar37 == 0) goto LAB_049be6e4;
          uVar35 = *(uint *)(lVar23 + 0x18);
          if (uVar35 < *(uint *)(lVar37 + 0x18)) {
            *(uint *)(lVar23 + 0x18) = uVar35 + 1;
            *(undefined8 *)(lVar37 + (long)(int)uVar35 * 8 + 0x20) = uVar26;
            Managed_WriteBarrier();
          }
          else {
            func_0x0452cba8(lVar23,uVar26,
                            *(undefined8 *)(*(long *)(*(long *)(lVar38 + 0x20) + 0xc0) + 0x70));
          }
        }
        else {
          plVar25 = (long *)ParticleImage_get_JobParticles_0x600008e(param_4);
          lVar23 = *plVar25;
          if ((*(ushort *)(*(long *)(*(long *)puVar14 + 0x20) + 0x135) & 1) == 0) {
            func_0x02a2e9f8();
          }
          iVar21 = *(int *)(lVar23 + 8);
          uVar26 = ParticleImage_get_JobParticles_0x600008e(param_4);
          if (iVar21 < 1) {
            ParticleImage_GenerateJobParticle_0x60000e6
                      (&uStack_2080,0,0,param_4,(int)param_4[0x651],2,0);
            func_0x05afb2b0(auStack_8458,&uStack_2080,0xe8);
            func_0x035b3914(uVar26,auStack_8458,*(undefined8 *)puVar16);
          }
          else {
            func_0x035b3afc(uVar26,0,1,*(undefined8 *)puVar17);
            puVar27 = (undefined8 *)ParticleImage_get_JobParticles_0x600008e(param_4);
            ParticleImage_GenerateJobParticle_0x60000e6
                      (&uStack_2080,0,0,param_4,(int)param_4[0x651],2,0);
            puVar27 = (undefined8 *)*puVar27;
            if ((*(ushort *)(*(long *)(*(long *)puVar18 + 0x20) + 0x135) & 1) == 0) {
              func_0x02a2e9f8();
            }
            func_0x05afb2b0(*puVar27,&uStack_2080,0xe8);
          }
        }
        fVar62 = *(float *)(param_4 + 0x640);
      }
    }
  }
  if (*(float *)(param_4 + 0x625) <= 0.0) {
LAB_049bdcec:
    puVar19 = PTR_DAT_05e86070;
    puVar18 = PTR_DAT_05e86038;
    puVar17 = PTR_DAT_05e86020;
    puVar16 = PTR_DAT_05e85fd8;
    puVar15 = PTR_DAT_05e85fb8;
    puVar14 = PTR_DAT_05e85f48;
    lVar23 = param_4[0x626];
    if (lVar23 == 0) {
LAB_049bdfc0:
      fVar57 = (float)param_3;
      if ((*(char *)((long)param_4 + 0x16c) == '\0') ||
         (*(float *)((long)param_4 + 0x3204) < *(float *)(param_4 + 0x2e))) {
LAB_049bdfd8:
        fVar62 = *(float *)(param_4 + 0x2e) + *(float *)((long)param_4 + 0x14c);
        param_2 = *(float *)(param_4 + 0x63e);
        if (fVar62 <= param_2) {
          if (*(char *)((long)param_4 + 0x16c) != '\0') goto LAB_049be000;
          *(undefined1 *)((long)param_4 + 0x322e) = 0;
        }
        else if (*(char *)((long)param_4 + 0x16c) != '\0') {
LAB_049be000:
          param_2 = *(float *)(param_4 + 0x63f);
          if (fVar62 <= param_2) {
            *(undefined4 *)(param_4 + 0x63f) = 0;
            *(undefined4 *)((long)param_4 + 0x3284) = 0;
            param_4[0x651] = 0;
          }
        }
LAB_049be068:
        if (*(char *)((long)param_4 + 0x322f) != '\0') {
          iVar21 = ParticleImage_get_particleCount_0x600008d(param_4);
          if ((((iVar21 < 1) && (*(char *)((long)param_4 + 0x322e) == '\0')) &&
              (uVar24 = ParticleImage_get_isMain_0x6000017(param_4), (uVar24 & 1) != 0)) &&
             (uVar24 = ParticleImage_get_CanStop_0x60000e3(param_4), (uVar24 & 1) != 0)) {
            ParticleImage_Stop_0x60000d7(param_4,1);
          }
          if (*(char *)((long)param_4 + 0x322f) != '\0') {
            lVar23 = Component_get_transform_0x6000c82(param_4,0);
            if (lVar23 != 0) {
              fVar64 = (float)Transform_get_position_0x6000f4d(lVar23,0);
              puVar14 = PTR_DAT_05e591c0;
              fVar62 = *(float *)(param_4 + 0x64c);
              lVar37 = param_4[0x27];
              param_2 = param_2 - *(float *)((long)param_4 + 0x3264);
              fVar57 = fVar57 - *(float *)(param_4 + 0x64d);
              lVar23 = *(long *)PTR_DAT_05e591c0;
              *(float *)((long)param_4 + 0x326c) = fVar64 - fVar62;
              *(float *)(param_4 + 0x64e) = param_2;
              *(float *)((long)param_4 + 0x3274) = fVar57;
              if (*(int *)(lVar23 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar24 = Object_op_Implicit_0x6000da6(lVar37,0);
              if (((uVar24 & 1) == 0) || ((char)param_4[0x26] == '\0')) {
LAB_049be284:
                if ((param_5 & 1) == 0) {
                  *(float *)((long)param_4 + 0x31f4) = *(float *)((long)param_4 + 0x31f4) + param_1;
                }
                fVar57 = *(float *)(param_4 + 0x63f) + param_1;
                fVar64 = *(float *)((long)param_4 + 0x3204) + param_1;
                *(float *)(param_4 + 0x63e) = *(float *)(param_4 + 0x63e) + param_1;
                *(float *)(param_4 + 0x63f) = fVar57;
                *(float *)((long)param_4 + 0x3204) = fVar64;
                ParticleImage_UpdateSheets_0x60000dd(param_4);
                puVar15 = PTR_DAT_05e85fe8;
                if ((*(char *)((long)param_4 + 0x322c) == '\0') ||
                   (*(char *)((long)param_4 + 0x322d) == '\0')) {
                  if ((char)*plVar34 == '\0') {
LAB_049be720:
                    if (param_4[0xe9] != 0) {
                      func_0x03577f68(&lStack_8468,*(int *)(param_4[0xe9] + 0x18) << 2,2,1,
                                      *(undefined8 *)PTR_DAT_05e85ee8);
                      if (param_4[0xe9] != 0) {
                        func_0x03510628(&lStack_8478,*(int *)(param_4[0xe9] + 0x18) * 6,2,1,
                                        *(undefined8 *)PTR_DAT_05e85ee0);
                        if (param_4[0xe9] != 0) {
                          func_0x03575e8c(&lStack_8488,*(int *)(param_4[0xe9] + 0x18) << 2,2,1,
                                          *(undefined8 *)PTR_DAT_05e86018);
                          if (param_4[0xe9] != 0) {
                            func_0x034f0f08(&lStack_8498,*(int *)(param_4[0xe9] + 0x18) << 2,2,1,
                                            *(undefined8 *)PTR_DAT_05e85ef0);
                            puVar14 = PTR_DAT_05e85fe8;
                            lVar23 = param_4[0xe9];
                            if (lVar23 != 0) {
                              iVar21 = *(int *)(lVar23 + 0x18);
                              if (-1 < iVar21 + -1) {
                                iVar22 = 0;
                                iVar42 = 0;
                                do {
                                  if (param_4[0xe9] == 0) goto LAB_049be6e4;
                                  iVar21 = iVar21 + -1;
                                  lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                           *(undefined8 *)puVar14);
                                  if (lVar23 == 0) goto LAB_049be6e4;
                                  Particle_Simulate(param_1);
                                  if (((param_4[0xe9] == 0) ||
                                      (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                *(undefined8 *)puVar14), lVar23 == 0
                                      )) || (param_4[0xe9] == 0)) goto LAB_049be6e4;
                                  fVar57 = *(float *)(lVar23 + 0x60);
                                  lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                           *(undefined8 *)puVar14);
                                  if (lVar23 == 0) goto LAB_049be6e4;
                                  if ((fVar57 <= *(float *)(lVar23 + 0x78)) && ((param_5 & 1) == 0))
                                  {
                                    if ((param_4[0xe9] == 0) ||
                                       ((lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                  *(undefined8 *)puVar14),
                                        lVar23 == 0 ||
                                        (lVar23 = *(long *)(lVar23 + 0x148), lVar23 == 0))))
                                    goto LAB_049be6e4;
                                    if (*(int *)(lVar23 + 0x18) == 0) goto LAB_049c0564;
                                    puVar27 = (undefined8 *)(lStack_8468 + (long)iVar22 * 0xc);
                                    *puVar27 = *(undefined8 *)(lVar23 + 0x20);
                                    *(undefined4 *)(puVar27 + 1) = 0;
                                    if (((param_4[0xe9] == 0) ||
                                        (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                  *(undefined8 *)puVar14),
                                        lVar23 == 0)) ||
                                       (lVar23 = *(long *)(lVar23 + 0x148), lVar23 == 0))
                                    goto LAB_049be6e4;
                                    if ((*(uint *)(lVar23 + 0x18) & 0xfffffffe) == 0)
                                    goto LAB_049c0564;
                                    iVar1 = iVar22 + 1;
                                    puVar27 = (undefined8 *)(lStack_8468 + (long)iVar1 * 0xc);
                                    *puVar27 = *(undefined8 *)(lVar23 + 0x28);
                                    *(undefined4 *)(puVar27 + 1) = 0;
                                    if (((param_4[0xe9] == 0) ||
                                        (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                  *(undefined8 *)puVar14),
                                        lVar23 == 0)) ||
                                       (lVar23 = *(long *)(lVar23 + 0x148), lVar23 == 0))
                                    goto LAB_049be6e4;
                                    if (*(uint *)(lVar23 + 0x18) < 3) goto LAB_049c0564;
                                    iVar2 = iVar22 + 2;
                                    puVar27 = (undefined8 *)(lStack_8468 + (long)iVar2 * 0xc);
                                    *puVar27 = *(undefined8 *)(lVar23 + 0x30);
                                    *(undefined4 *)(puVar27 + 1) = 0;
                                    if (((param_4[0xe9] == 0) ||
                                        (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                  *(undefined8 *)puVar14),
                                        lVar23 == 0)) ||
                                       (lVar23 = *(long *)(lVar23 + 0x148), lVar23 == 0))
                                    goto LAB_049be6e4;
                                    if ((*(uint *)(lVar23 + 0x18) & 0xfffffffc) == 0)
                                    goto LAB_049c0564;
                                    iVar3 = iVar22 + 3;
                                    puVar27 = (undefined8 *)(lStack_8468 + (long)iVar3 * 0xc);
                                    *puVar27 = *(undefined8 *)(lVar23 + 0x38);
                                    *(undefined4 *)(puVar27 + 1) = 0;
                                    *(int *)(lStack_8478 + (long)(iVar42 + 1) * 4) = iVar2;
                                    *(int *)(lStack_8478 + (long)(iVar42 + 2) * 4) = iVar1;
                                    *(int *)(lStack_8478 + (long)(iVar42 + 3) * 4) = iVar22;
                                    *(int *)(lStack_8478 + (long)(iVar42 + 4) * 4) = iVar3;
                                    *(int *)(lStack_8478 + (long)iVar42 * 4) = iVar22;
                                    *(int *)(lStack_8478 + (long)(iVar42 + 5) * 4) = iVar2;
                                    if (((param_4[0xe9] == 0) ||
                                        (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                  *(undefined8 *)puVar14),
                                        lVar23 == 0)) || (*(long *)(lVar23 + 0x10) == 0))
                                    goto LAB_049be6e4;
                                    bVar20 = *(byte *)(*(long *)(lVar23 + 0x10) + 0x6d8);
                                    uVar24 = (ulong)bVar20;
                                    if (bVar20 != 0) {
                                      uVar24 = (ulong)*(uint *)(lVar23 + 0x138);
                                    }
                                    *(undefined8 *)(lStack_8488 + (long)iVar22 * 8) =
                                         *(undefined8 *)
                                          (param_4[0xdd] +
                                          (-(uVar24 >> 0x1f) & 0xfffffff000000000 | uVar24 << 4));
                                    if (((param_4[0xe9] == 0) ||
                                        (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                  *(undefined8 *)puVar14),
                                        lVar23 == 0)) || (*(long *)(lVar23 + 0x10) == 0))
                                    goto LAB_049be6e4;
                                    bVar20 = *(byte *)(*(long *)(lVar23 + 0x10) + 0x6d8);
                                    uVar35 = (uint)bVar20;
                                    if (bVar20 != 0) {
                                      uVar35 = *(uint *)(lVar23 + 0x138);
                                    }
                                    if (param_4[0xe9] == 0) goto LAB_049be6e4;
                                    uVar44 = *(undefined4 *)
                                              (param_4[0xdd] + (long)(int)uVar35 * 0x10 + 8);
                                    lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                             *(undefined8 *)puVar14);
                                    if ((lVar23 == 0) || (*(long *)(lVar23 + 0x10) == 0))
                                    goto LAB_049be6e4;
                                    bVar20 = *(byte *)(*(long *)(lVar23 + 0x10) + 0x6d8);
                                    uVar35 = (uint)bVar20;
                                    if (bVar20 != 0) {
                                      uVar35 = *(uint *)(lVar23 + 0x138);
                                    }
                                    puVar36 = (undefined4 *)(lStack_8488 + (long)iVar1 * 8);
                                    uVar43 = *(undefined4 *)
                                              (param_4[0xdd] + (long)(int)uVar35 * 0x10 + 4);
                                    *puVar36 = uVar44;
                                    puVar36[1] = uVar43;
                                    if (((param_4[0xe9] == 0) ||
                                        (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                  *(undefined8 *)puVar14),
                                        lVar23 == 0)) || (*(long *)(lVar23 + 0x10) == 0))
                                    goto LAB_049be6e4;
                                    bVar20 = *(byte *)(*(long *)(lVar23 + 0x10) + 0x6d8);
                                    uVar35 = (uint)bVar20;
                                    if (bVar20 != 0) {
                                      uVar35 = *(uint *)(lVar23 + 0x138);
                                    }
                                    *(undefined8 *)(lStack_8488 + (long)iVar2 * 8) =
                                         *(undefined8 *)
                                          (param_4[0xdd] + (long)(int)uVar35 * 0x10 + 8);
                                    if (((param_4[0xe9] == 0) ||
                                        (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                  *(undefined8 *)puVar14),
                                        lVar23 == 0)) || (*(long *)(lVar23 + 0x10) == 0))
                                    goto LAB_049be6e4;
                                    bVar20 = *(byte *)(*(long *)(lVar23 + 0x10) + 0x6d8);
                                    uVar24 = (ulong)bVar20;
                                    if (bVar20 != 0) {
                                      uVar24 = (ulong)*(uint *)(lVar23 + 0x138);
                                    }
                                    if (param_4[0xe9] == 0) goto LAB_049be6e4;
                                    uVar44 = *(undefined4 *)
                                              (param_4[0xdd] +
                                              (-(uVar24 >> 0x1f) & 0xfffffff000000000 | uVar24 << 4)
                                              );
                                    lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                             *(undefined8 *)puVar14);
                                    if ((lVar23 == 0) || (*(long *)(lVar23 + 0x10) == 0))
                                    goto LAB_049be6e4;
                                    bVar20 = *(byte *)(*(long *)(lVar23 + 0x10) + 0x6d8);
                                    uVar35 = (uint)bVar20;
                                    if (bVar20 != 0) {
                                      uVar35 = *(uint *)(lVar23 + 0x138);
                                    }
                                    puVar36 = (undefined4 *)(lStack_8488 + (long)iVar3 * 8);
                                    uVar43 = *(undefined4 *)
                                              (param_4[0xdd] + (long)(int)uVar35 * 0x10 + 0xc);
                                    *puVar36 = uVar44;
                                    puVar36[1] = uVar43;
                                    if ((param_4[0xe9] == 0) ||
                                       (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                 *(undefined8 *)puVar14),
                                       lVar23 == 0)) goto LAB_049be6e4;
                                    uVar26 = *(undefined8 *)(lVar23 + 0x88);
                                    puVar27 = (undefined8 *)(lStack_8498 + (long)iVar22 * 0x10);
                                    puVar27[1] = *(undefined8 *)(lVar23 + 0x90);
                                    *puVar27 = uVar26;
                                    if ((param_4[0xe9] == 0) ||
                                       (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                 *(undefined8 *)puVar14),
                                       lVar23 == 0)) goto LAB_049be6e4;
                                    uVar26 = *(undefined8 *)(lVar23 + 0x88);
                                    puVar27 = (undefined8 *)(lStack_8498 + (long)iVar1 * 0x10);
                                    puVar27[1] = *(undefined8 *)(lVar23 + 0x90);
                                    *puVar27 = uVar26;
                                    if ((param_4[0xe9] == 0) ||
                                       (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                 *(undefined8 *)puVar14),
                                       lVar23 == 0)) goto LAB_049be6e4;
                                    uVar26 = *(undefined8 *)(lVar23 + 0x88);
                                    puVar27 = (undefined8 *)(lStack_8498 + (long)iVar2 * 0x10);
                                    puVar27[1] = *(undefined8 *)(lVar23 + 0x90);
                                    *puVar27 = uVar26;
                                    if ((param_4[0xe9] == 0) ||
                                       (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                 *(undefined8 *)puVar14),
                                       lVar23 == 0)) goto LAB_049be6e4;
                                    uVar26 = *(undefined8 *)(lVar23 + 0x88);
                                    iVar22 = iVar22 + 4;
                                    iVar42 = iVar42 + 6;
                                    puVar27 = (undefined8 *)(lStack_8498 + (long)iVar3 * 0x10);
                                    puVar27[1] = *(undefined8 *)(lVar23 + 0x90);
                                    *puVar27 = uVar26;
                                  }
                                } while (0 < iVar21);
                                lVar23 = param_4[0xe9];
                                if (lVar23 == 0) goto LAB_049be6e4;
                              }
                              if (*(int *)(lVar23 + 0x18) < 1) {
LAB_049becac:
                                lVar23 = ParticleImage_get_mesh_0x600001a(param_4);
                                if (lVar23 != 0) {
                                  Mesh_RecalculateBounds_0x6000749(lVar23,0);
                                  lVar23 = Graphic_get_canvasRenderer_0x60000f9(param_4,0);
                                  uVar26 = ParticleImage_get_mesh_0x600001a(param_4);
                                  if (lVar23 != 0) {
                                    CanvasRenderer_SetMesh_0x6000028(lVar23,uVar26,0);
                                    if ((char)*plVar34 != '\0') {
                                      lVar23 = ParticleImage_get_particleTrailRenderer_0x6000096
                                                         (param_4);
                                      if (lVar23 == 0) goto LAB_049be6e4;
                                      ParticleTrailRenderer_SetMeshData_0x6000117
                                                (lVar23,*(undefined8 *)(lVar23 + 0xe8),
                                                 *(undefined8 *)(lVar23 + 0xf0),
                                                 *(undefined8 *)(lVar23 + 0xf8),
                                                 *(undefined4 *)(lVar23 + 0x10c));
                                    }
                                    puVar15 = PTR_DAT_05e85fe8;
                                    puVar14 = PTR_DAT_05e85fe0;
                                    if (param_4[0xe9] != 0) {
                                      iVar21 = *(int *)(param_4[0xe9] + 0x18);
                                      if (-1 < iVar21 + -1) {
                                        do {
                                          if (param_4[0xe9] == 0) goto LAB_049be6e4;
                                          iVar21 = iVar21 + -1;
                                          lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                   *(undefined8 *)puVar15);
                                          if ((lVar23 == 0) || (param_4[0xe9] == 0))
                                          goto LAB_049be6e4;
                                          fVar57 = *(float *)(lVar23 + 0x60);
                                          lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                   *(undefined8 *)puVar15);
                                          if (lVar23 == 0) goto LAB_049be6e4;
                                          if (*(float *)(lVar23 + 0x78) < fVar57) {
                                            if (((param_4[0xe9] == 0) ||
                                                (lVar23 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                          *(undefined8 *)puVar15),
                                                lVar23 == 0)) || (*(long *)(lVar23 + 0x140) == 0))
                                            goto LAB_049be6e4;
                                            if ((*(int *)(*(long *)(lVar23 + 0x140) + 0x18) < 2) ||
                                               (*(char *)((long)param_4 + 0x31e9) != '\0')) {
                                              if (param_4[0x649] == 0) goto LAB_049be6e4;
                                              UnityEvent_Invoke_0x6001051(param_4[0x649],0);
                                              lVar23 = ParticleImage_get_pool_0x600008c(param_4);
                                              if ((param_4[0xe9] == 0) ||
                                                 (uVar26 = func_0x0452c8d8(param_4[0xe9],iVar21,
                                                                           *(undefined8 *)puVar15),
                                                 lVar23 == 0)) goto LAB_049be6e4;
                                              ParticlePool_Release_0x600016d(lVar23,uVar26,0);
                                              if (param_4[0xe9] == 0) goto LAB_049be6e4;
                                              func_0x0452e350(param_4[0xe9],iVar21,
                                                              *(undefined8 *)puVar14);
                                              if ((char)param_4[0x650] == '\0') {
                                                *(undefined1 *)(param_4 + 0x650) = 1;
                                                if (param_4[0x648] == 0) goto LAB_049be6e4;
                                                UnityEvent_Invoke_0x6001051(param_4[0x648],0);
                                              }
                                              iVar22 = ParticleImage_get_particleCount_0x600008d
                                                                 (param_4);
                                              if (iVar22 < 1) {
                                                if (param_4[0x64a] == 0) goto LAB_049be6e4;
                                                UnityEvent_Invoke_0x6001051(param_4[0x64a],0);
                                              }
                                            }
                                          }
                                        } while (0 < iVar21);
                                      }
                                      goto LAB_049c0518;
                                    }
                                  }
                                }
                              }
                              else {
                                lVar23 = ParticleImage_get_mesh_0x600001a(param_4);
                                if (lVar23 != 0) {
                                  Mesh_Clear_0x6000748(lVar23,0);
                                  if ((int)uStack_8460 < 1) goto LAB_049becac;
                                  lVar23 = ParticleImage_get_mesh_0x600001a(param_4);
                                  if (lVar23 != 0) {
                                    func_0x031102e4(lVar23,lStack_8468,uStack_8460,
                                                    *(undefined8 *)PTR_DAT_05e86008);
                                    lVar23 = ParticleImage_get_mesh_0x600001a(param_4);
                                    if (lVar23 != 0) {
                                      func_0x0310ee44(lVar23,lStack_8478,uStack_8470,0,0,1,0,
                                                      *(undefined8 *)PTR_DAT_05e85ff8);
                                      lVar23 = ParticleImage_get_mesh_0x600001a(param_4);
                                      if (lVar23 != 0) {
                                        func_0x0310f9e4(lVar23,0,lStack_8488,uStack_8480,
                                                        *(undefined8 *)PTR_DAT_05e86000);
                                        lVar23 = ParticleImage_get_mesh_0x600001a(param_4);
                                        if (lVar23 != 0) {
                                          func_0x0310eac8(lVar23,lStack_8498,uStack_8490,
                                                          *(undefined8 *)PTR_DAT_05e85ff0);
                                          goto LAB_049becac;
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
                  else {
                    lVar23 = param_4[0xe9];
                    if (lVar23 != 0) {
                      iVar22 = 0;
                      iVar21 = 0;
                      while (iVar21 < *(int *)(lVar23 + 0x18)) {
                        lVar37 = func_0x0452c8d8(lVar23,iVar21,*(undefined8 *)puVar15);
                        if ((lVar37 == 0) || (*(long *)(lVar37 + 0x140) == 0)) goto LAB_049be6e4;
                        lVar23 = param_4[0xe9];
                        iVar21 = iVar21 + 1;
                        iVar22 = *(int *)(*(long *)(lVar37 + 0x140) + 0x18) + iVar22;
                        if (lVar23 == 0) goto LAB_049be6e4;
                      }
                      lVar23 = ParticleImage_get_particleTrailRenderer_0x6000096(param_4);
                      if ((param_4[0xe9] != 0) && (lVar23 != 0)) {
                        ParticleTrailRenderer_PrepareMeshData_0x6000114
                                  (lVar23,iVar22,*(undefined4 *)(param_4[0xe9] + 0x18));
                        goto LAB_049be720;
                      }
                    }
                  }
                }
                else {
                  auVar73 = Mesh_AllocateWritableMeshData_0x6000728(1,0);
                  *(undefined1 (*) [16])(param_4 + 0x1f) = auVar73;
                  lVar23 = MeshDataArray_get_Item_0x6000788
                                     ((undefined1 (*) [16])(param_4 + 0x1f),0,0);
                  param_4[0x21] = lVar23;
                  plVar25 = (long *)ParticleImage_get_JobParticles_0x600008e(param_4);
                  puVar15 = PTR_DAT_05e85f48;
                  lVar23 = *plVar25;
                  if ((*(ushort *)(*(long *)(*(long *)PTR_DAT_05e85f48 + 0x20) + 0x135) & 1) == 0) {
                    func_0x02a2e9f8();
                  }
                  iVar21 = *(int *)(lVar23 + 8);
                  lVar23 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e86078,3);
                  uStack_2078 = 0;
                  uStack_2080 = 0;
                  VertexAttributeDescriptor__ctor_0x600119f(&uStack_2080,0,0,3,0,0);
                  if (lVar23 != 0) {
                    if (*(int *)(lVar23 + 0x18) != 0) {
                      *(undefined8 *)(lVar23 + 0x28) = uStack_2078;
                      *(undefined8 *)(lVar23 + 0x20) = uStack_2080;
                      uStack_8368 = 0;
                      uStack_8370 = 0;
                      VertexAttributeDescriptor__ctor_0x600119f(&uStack_8370,3,0,4,1,0);
                      if ((*(uint *)(lVar23 + 0x18) & 0xfffffffe) != 0) {
                        *(undefined8 *)(lVar23 + 0x38) = uStack_8368;
                        *(undefined8 *)(lVar23 + 0x30) = uStack_8370;
                        uStack_5078 = 0;
                        uStack_5080 = 0;
                        VertexAttributeDescriptor__ctor_0x600119f(&uStack_5080,4,0,2,2,0);
                        if (2 < *(uint *)(lVar23 + 0x18)) {
                          *(undefined8 *)(lVar23 + 0x48) = uStack_5078;
                          *(undefined8 *)(lVar23 + 0x40) = uStack_5080;
                          MeshData_SetVertexBufferParams_0x600077d
                                    (param_4 + 0x21,iVar21 << 2,lVar23,0);
                          plVar25 = (long *)ParticleImage_get_JobParticles_0x600008e(param_4);
                          lVar23 = *plVar25;
                          if ((*(ushort *)(*(long *)(*(long *)puVar15 + 0x20) + 0x135) & 1) == 0) {
                            func_0x02a2e9f8();
                          }
                          MeshData_SetIndexBufferParams_0x600077e
                                    (param_4 + 0x21,*(int *)(lVar23 + 8) * 6,0,0);
                          puVar36 = *(undefined4 **)(*(long *)PTR_DAT_05e86088 + 0xb8);
                          uVar44 = *puVar36;
                          fVar58 = (float)puVar36[1];
                          fVar67 = (float)puVar36[2];
                          fVar72 = **(float **)(*(long *)PTR_DAT_05e86080 + 0xb8);
                          fVar70 = (*(float **)(*(long *)PTR_DAT_05e86080 + 0xb8))[1];
                          if ((char)param_4[0xbe] != '\0') {
                            lVar23 = param_4[0xbf];
                            if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
                              func_0x029f5bd0();
                            }
                            uVar24 = Object_op_Implicit_0x6000da6(lVar23,0);
                            puVar15 = PTR_DAT_05e5bfa8;
                            if ((uVar24 & 1) != 0) {
                              plVar25 = (long *)param_4[0xbf];
                              if (plVar25 != (long *)0x0) {
                                if (*plVar25 == *(long *)PTR_DAT_05e5bfa8) {
                                  fVar58 = fVar57;
                                  fVar67 = fVar64;
                                  fVar70 = fVar62;
                                  lVar23 = Component_get_transform_0x6000c82(param_4,0);
                                  if ((param_4[0xbf] != 0) &&
                                     (Transform_get_position_0x6000f4d(param_4[0xbf],0), lVar23 != 0
                                     )) {
                                    Transform_InverseTransformPoint_0x6000f79(lVar23,0);
                                    uVar44 = float3_op_Implicit_0x6001255(0);
                                    plVar25 = (long *)param_4[0xbf];
                                    if ((plVar25 != (long *)0x0) && (*plVar25 == *(long *)puVar15))
                                    {
                                      fVar57 = fVar58;
                                      fVar72 = fVar67;
                                      RectTransform_get_rect_0x6000f26(plVar25,0);
                                      fVar62 = fVar70;
                                      fVar64 = fVar72;
                                      goto LAB_049bf020;
                                    }
                                  }
                                }
                                else {
                                  Transform_get_position_0x6000f4d(plVar25,0);
                                  ParticleImage_WorldToViewportPoint(param_4);
                                  fVar45 = (float)float3_op_Implicit_0x6001255(0);
                                  *(undefined4 *)(param_4 + 0xc4) = 0;
                                  fVar67 = fVar57;
                                  lVar23 = Graphic_get_canvas_0x60000f7(param_4,0);
                                  if (lVar23 != 0) {
                                    iVar21 = Canvas_get_renderMode_0x600005d(lVar23,0);
                                    lVar23 = param_4[0x1d];
                                    if (iVar21 == 1) {
                                      if (lVar23 != 0) {
                                        RectTransform_get_rect_0x6000f26(lVar23,0);
                                        lVar37 = param_4[0x1d];
                                        lVar23 = Component_get_transform_0x6000c82(param_4,0);
                                        if ((lVar23 != 0) &&
                                           (Transform_get_position_0x6000f4d(lVar23,0), lVar37 != 0)
                                           ) {
                                          fVar46 = (float)Transform_InverseTransformPoint_0x6000f79
                                                                    (lVar37,0);
                                          if (param_4[0x1d] != 0) {
                                            fVar47 = (float)Transform_get_localPosition_0x6000f4f
                                                                      (param_4[0x1d],0);
                                            lVar23 = Component_get_transform_0x6000c82(param_4,0);
                                            if (lVar23 != 0) {
                                              fVar48 = (float)Transform_get_lossyScale_0x6000f83
                                                                        (lVar23,0);
                                              if (param_4[0x1d] != 0) {
                                                fVar49 = (float)Transform_get_localScale_0x6000f5d
                                                                          (param_4[0x1d],0);
                                                if (param_4[0x1d] != 0) {
                                                  RectTransform_get_rect_0x6000f26(param_4[0x1d],0);
                                                  lVar37 = param_4[0x1d];
                                                  lVar23 = Component_get_transform_0x6000c82
                                                                     (param_4,0);
                                                  if ((lVar23 != 0) &&
                                                     (Transform_get_position_0x6000f4d(lVar23,0),
                                                     lVar37 != 0)) {
                                                    Transform_InverseTransformPoint_0x6000f79
                                                              (lVar37,0);
                                                    if (param_4[0x1d] != 0) {
                                                      fVar59 = fVar67;
                                                      Transform_get_localPosition_0x6000f4f
                                                                (param_4[0x1d],0);
                                                      fVar58 = fVar59;
                                                      lVar23 = Component_get_transform_0x6000c82
                                                                         (param_4,0);
                                                      if (lVar23 != 0) {
                                                        Transform_get_lossyScale_0x6000f83(lVar23,0)
                                                        ;
                                                        if (param_4[0x1d] != 0) {
                                                          fVar62 = (fVar57 + -0.5) * fVar62;
                                                          fVar57 = fVar62 + 0.0;
                                                          Transform_get_localScale_0x6000f5d
                                                                    (param_4[0x1d],0);
                                                          fVar48 = ((((fVar45 + -0.5) * fVar64 + 0.0
                                                                     ) - fVar46) + fVar47) / fVar48;
                                                          fVar58 = ((fVar57 - fVar67) + fVar59) /
                                                                   fVar58;
                                                          goto LAB_049beff8;
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
                                    else if (lVar23 != 0) {
                                      RectTransform_get_rect_0x6000f26(lVar23,0);
                                      lVar37 = param_4[0x1d];
                                      lVar23 = Component_get_transform_0x6000c82(param_4,0);
                                      if ((lVar23 != 0) &&
                                         (Transform_get_position_0x6000f4d(lVar23,0), lVar37 != 0))
                                      {
                                        fVar46 = (float)Transform_InverseTransformPoint_0x6000f79
                                                                  (lVar37,0);
                                        lVar23 = Component_get_transform_0x6000c82(param_4,0);
                                        if (lVar23 != 0) {
                                          fVar48 = (float)Transform_get_lossyScale_0x6000f83
                                                                    (lVar23,0);
                                          if (param_4[0x1d] != 0) {
                                            fVar49 = (float)Transform_get_localScale_0x6000f5d
                                                                      (param_4[0x1d],0);
                                            if (param_4[0x1d] != 0) {
                                              RectTransform_get_rect_0x6000f26(param_4[0x1d],0);
                                              lVar37 = param_4[0x1d];
                                              lVar23 = Component_get_transform_0x6000c82(param_4,0);
                                              if ((lVar23 != 0) &&
                                                 (Transform_get_position_0x6000f4d(lVar23,0),
                                                 lVar37 != 0)) {
                                                Transform_InverseTransformPoint_0x6000f79(lVar37,0);
                                                fVar58 = fVar67;
                                                lVar23 = Component_get_transform_0x6000c82
                                                                   (param_4,0);
                                                if (lVar23 != 0) {
                                                  Transform_get_lossyScale_0x6000f83(lVar23,0);
                                                  if (param_4[0x1d] != 0) {
                                                    fVar62 = (fVar57 + -0.5) * fVar62;
                                                    fVar57 = fVar62 + 0.0;
                                                    Transform_get_localScale_0x6000f5d
                                                              (param_4[0x1d],0);
                                                    fVar48 = (((fVar45 + -0.5) * fVar64 + 0.0) -
                                                             fVar46) / fVar48;
                                                    fVar58 = (fVar57 - fVar67) / fVar58;
LAB_049beff8:
                                                    fVar58 = fVar58 * fVar62;
                                                    fVar67 = 0.0;
                                                    uVar44 = float3_op_Implicit_0x6001255
                                                                       (fVar48 * fVar49,0);
                                                    fVar62 = fVar49;
                                                    fVar57 = fVar58;
                                                    fVar64 = fVar67;
                                                    goto LAB_049bf020;
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
                              goto LAB_049be6e4;
                            }
                          }
LAB_049bf020:
                          if (cRam000000000625b26f == '\0') {
                            func_0x029f5a50(PTR_DAT_05e58bf8);
                            cRam000000000625b26f = '\x01';
                          }
                          if ((int)param_4[0x25] == 1) {
                            lVar23 = Component_get_transform_0x6000c82(param_4,0);
                            if (lVar23 != 0) {
                              fVar46 = *(float *)(param_4 + 0x620);
                              fVar45 = *(float *)((long)param_4 + 0x30fc);
                              uVar43 = Transform_InverseTransformPoint_0x6000f79
                                                 ((int)param_4[0x61f],lVar23,0);
                              fVar57 = fVar45;
                              fVar64 = fVar46;
                              lVar23 = Component_get_transform_0x6000c82(param_4,0);
                              if (lVar23 != 0) {
                                Transform_get_rotation_0x6000f59(lVar23,0);
                                Quaternion_Inverse_0x6000a49(0);
                                fVar62 = (float)Quaternion_Internal_ToEulerRad_0x6000a4c(0);
                                fVar48 = _UNK_0116c074;
                                fVar57 = fVar57 * _UNK_0116c074;
                                fVar64 = fVar64 * _UNK_0116c074;
                                fVar49 = (float)Quaternion_Internal_MakePositive_0x6000a59
                                                          (fVar62 * _UNK_0116c074,0);
                                fVar65 = *(float *)((long)param_4 + 0x310c);
                                fVar59 = *(float *)(param_4 + 0x621);
                                fVar62 = *(float *)(param_4 + 0x622);
                                Quaternion_Inverse_0x6000a49
                                          (*(undefined4 *)((long)param_4 + 0x3104),0);
                                fVar47 = (float)Quaternion_Internal_ToEulerRad_0x6000a4c(0);
                                fVar59 = fVar59 * fVar48;
                                fVar65 = fVar65 * fVar48;
                                fVar48 = (float)Quaternion_Internal_MakePositive_0x6000a59
                                                          (fVar47 * fVar48,0);
                                fVar57 = fVar57 - fVar59;
                                fVar64 = fVar64 - fVar65;
                                *(float *)((long)param_4 + 0x3114) = fVar49 - fVar48;
                                *(float *)(param_4 + 0x623) = fVar57;
                                *(float *)((long)param_4 + 0x311c) = fVar64;
                                lVar23 = Component_get_transform_0x6000c82(param_4,0);
                                if (lVar23 != 0) {
                                  uVar50 = Transform_get_position_0x6000f4d(lVar23,0);
                                  *(undefined4 *)(param_4 + 0x61f) = uVar50;
                                  *(float *)((long)param_4 + 0x30fc) = fVar57;
                                  *(float *)(param_4 + 0x620) = fVar64;
                                  lVar23 = Component_get_transform_0x6000c82(param_4,0);
                                  if (lVar23 != 0) {
                                    uVar50 = Transform_get_rotation_0x6000f59(lVar23,0);
                                    *(undefined4 *)((long)param_4 + 0x3104) = uVar50;
                                    *(float *)(param_4 + 0x621) = fVar57;
                                    *(float *)((long)param_4 + 0x310c) = fVar64;
                                    *(float *)(param_4 + 0x622) = fVar62;
                                    goto LAB_049bf1a4;
                                  }
                                }
                              }
                            }
                          }
                          else {
                            puVar36 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
                            uVar43 = *puVar36;
                            fVar45 = (float)puVar36[1];
                            fVar46 = (float)puVar36[2];
LAB_049bf1a4:
                            lVar23 = Component_get_transform_0x6000c82(param_4,0);
                            func_0x05afb2a0(auStack_2194,0,0x114);
                            func_0x05afb2a0(auStack_24d0,0,0x338);
                            func_0x05afb2a0(auStack_2808,0,0x338);
                            func_0x05afb2a0(auStack_2c30,0,0x428);
                            func_0x05afb2a0(auStack_3058,0,0x428);
                            func_0x05afb2a0(auStack_3390,0,0x338);
                            func_0x05afb2a0(auStack_36c8,0,0x338);
                            uStack_36d8 = 0;
                            uStack_36e0 = 0;
                            uStack_36da = 0;
                            uStack_36d2 = 0;
                            uStack_36d0 = 0;
                            func_0x05afb2a0(auStack_37f4,0,0x114);
                            func_0x05afb2a0(auStack_3908,0,0x110);
                            uStack_849c = 0;
                            uStack_849a = 0;
                            uStack_84a0 = 0;
                            uStack_849e = 0;
                            func_0x05afb2a0(auStack_3c40,0,0x338);
                            func_0x05afb2a0(auStack_3d58,0,0x117);
                            func_0x05afb2a0(auStack_3e70,0,0x117);
                            uStack_84a4 = 0;
                            uStack_84a2 = 0;
                            uStack_84a8 = 0;
                            uStack_84a6 = 0;
                            func_0x05afb2a0(auStack_3f84,0,0x113);
                            puVar27 = (undefined8 *)
                                      ParticleImage_get_JobParticles_0x600008e(param_4);
                            auVar73 = func_0x035b3e2c(*puVar27,*(undefined8 *)PTR_DAT_05e86060);
                            if (lVar23 != 0) {
                              lVar37 = param_4[0x25];
                              lVar39 = param_4[0x21];
                              Transform_get_localPosition_0x6000f4f(lVar23,0);
                              uVar50 = float3_op_Implicit_0x6001255(0);
                              fVar48 = fVar57;
                              fVar49 = fVar64;
                              Transform_get_rotation_0x6000f59(lVar23,0);
                              uVar51 = quaternion_op_Implicit_0x6001e3c(0);
                              uVar60 = (undefined4)param_4[0x623];
                              uVar63 = *(undefined4 *)((long)param_4 + 0x311c);
                              uVar52 = float3_op_Implicit_0x6001255
                                                 (*(undefined4 *)((long)param_4 + 0x3114),0);
                              uVar43 = float3_op_Implicit_0x6001255(uVar43,0);
                              lStack_85b8 = param_4[0xb6];
                              lStack_85c0 = param_4[0xb5];
                              lStack_85a8 = param_4[0xb8];
                              lStack_85b0 = param_4[0xb7];
                              JobUtils_ConvertMinMaxCurveToJobs_0x6000174
                                        (auStack_45d8,&lStack_85c0,0);
                              func_0x05afb2b0(auStack_2190,auStack_45d8,0x110);
                              func_0x05afb2b0(auStack_8648,param_4 + 0x5e,0x88);
                              JobUtils_ConvertSeparatedMinMaxCurveJobData_0x6000175
                                        (auStack_4910,auStack_8648,0);
                              func_0x05afb2b0(auStack_24d0,auStack_4910,0x338);
                              func_0x05afb2b0(auStack_86d0,param_4 + 0x6f,0x88);
                              JobUtils_ConvertSeparatedMinMaxCurveJobData_0x6000175
                                        (&uStack_4c50,auStack_86d0,0);
                              func_0x05afb2b0(auStack_2808,&uStack_4c50,0x338);
                              lStack_8708 = param_4[0x50];
                              lStack_8710 = param_4[0x4f];
                              lStack_86f8 = param_4[0x52];
                              lStack_8700 = param_4[0x51];
                              lStack_86e8 = param_4[0x54];
                              lStack_86f0 = param_4[0x53];
                              lStack_86e0 = param_4[0x55];
                              lVar54 = param_4[0x80];
                              JobUtils_ConvertMinMaxColorJobData_0x6000173
                                        (&uStack_5080,&lStack_8710,0);
                              func_0x05afb2b0(auStack_2c30,&uStack_5080,0x428);
                              lStack_8720 = param_4[0x5c];
                              lStack_8748 = param_4[0x57];
                              lStack_8750 = param_4[0x56];
                              lStack_8738 = param_4[0x59];
                              lStack_8740 = param_4[0x58];
                              lStack_8728 = param_4[0x5b];
                              lStack_8730 = param_4[0x5a];
                              JobUtils_ConvertMinMaxColorJobData_0x6000173
                                        (auStack_54a8,&lStack_8750,0);
                              func_0x05afb2b0(auStack_3058,auStack_54a8,0x428);
                              lVar55 = param_4[0x5d];
                              func_0x05afb2b0(auStack_87d8,param_4 + 0x92,0x88);
                              JobUtils_ConvertSeparatedMinMaxCurveJobData_0x6000175
                                        (&uStack_57e0,auStack_87d8,0);
                              func_0x05afb2b0(auStack_3390,&uStack_57e0,0x338);
                              func_0x05afb2b0(auStack_8860,param_4 + 0xa3,0x88);
                              JobUtils_ConvertSeparatedMinMaxCurveJobData_0x6000175
                                        (auStack_5b18,auStack_8860,0);
                              func_0x05afb2b0(auStack_36c8,auStack_5b18,0x338);
                              lVar23 = param_4[0xb9];
                              uVar6 = *(undefined1 *)((long)param_4 + 0x627);
                              lVar68 = param_4[0xb4];
                              lVar38 = param_4[0xc5];
                              func_0x05afb2b0(auStack_88e8,param_4 + 0xc6,0x88);
                              JobUtils_ConvertSeparatedMinMaxCurveJobData_0x6000175
                                        (auStack_5e50,auStack_88e8,0);
                              func_0x05afb2b0(auStack_3c40,auStack_5e50,0x338);
                              uVar7 = *(undefined1 *)((long)param_4 + 0x625);
                              lStack_8908 = param_4[0xbb];
                              lStack_8910 = param_4[0xba];
                              lStack_88f8 = param_4[0xbd];
                              lStack_8900 = param_4[0xbc];
                              JobUtils_ConvertMinMaxCurveToJobs_0x6000174
                                        (auStack_5f60,&lStack_8910,0);
                              func_0x05afb2b0(auStack_3d51,auStack_5f60,0x110);
                              lStack_8928 = param_4[0xd8];
                              lStack_8930 = param_4[0xd7];
                              lStack_8918 = param_4[0xda];
                              lStack_8920 = param_4[0xd9];
                              uVar8 = *(undefined1 *)((long)param_4 + 0x626);
                              JobUtils_ConvertMinMaxCurveToJobs_0x6000174
                                        (auStack_6070,&lStack_8930,0);
                              func_0x05afb2b0(auStack_3e69,auStack_6070,0x110);
                              uVar9 = *(undefined1 *)((long)param_4 + 0x624);
                              uVar61 = *(undefined4 *)((long)param_4 + 0x3214);
                              lVar66 = param_4[0x643];
                              uVar53 = float2_op_Implicit_0x60010c9((int)param_4[0x642],0);
                              lVar41 = param_4[0xbe];
                              lVar40 = param_4[0xbf];
                              if (*(int *)(*(long *)puVar14 + 0xe4) == 0) {
                                func_0x029f5bd0();
                              }
                              bVar20 = Object_op_Implicit_0x6000da6(lVar40,0);
                              lVar40 = param_4[0xc4];
                              lStack_8948 = param_4[0xc1];
                              lStack_8950 = param_4[0xc0];
                              lStack_8938 = param_4[0xc3];
                              lStack_8940 = param_4[0xc2];
                              JobUtils_ConvertMinMaxCurveToJobs_0x6000174
                                        (auStack_6180,&lStack_8950,0);
                              func_0x05afb2b0((ulong)auStack_3f84 | 3,auStack_6180,0x110);
                              lVar56 = param_4[0xdd];
                              lVar12 = param_4[0xdb];
                              uVar4 = *(undefined4 *)((long)param_4 + 0x6e4);
                              lVar69 = param_4[0xe7];
                              uStack_36d2 = (undefined2)param_4[0xde];
                              uStack_36d0 = (undefined6)((ulong)param_4[0xde] >> 0x10);
                              uStack_36da = (undefined2)lVar56;
                              uStack_36d8 = (undefined6)((ulong)lVar56 >> 0x10);
                              lStack_8968 = param_4[0xe0];
                              lStack_8970 = param_4[0xdf];
                              lStack_8958 = param_4[0xe2];
                              lStack_8960 = param_4[0xe1];
                              JobUtils_ConvertMinMaxCurveToJobs_0x6000174
                                        (auStack_6290,&lStack_8970,0);
                              func_0x05afb2b0(auStack_37f0,auStack_6290,0x110);
                              lStack_8988 = param_4[0xe4];
                              lStack_8990 = param_4[0xe3];
                              lStack_8978 = param_4[0xe6];
                              lStack_8980 = param_4[0xe5];
                              JobUtils_ConvertMinMaxCurveToJobs_0x6000174
                                        (auStack_63a0,&lStack_8990,0);
                              func_0x05afb2b0(auStack_3908,auStack_63a0,0x110);
                              lVar56 = param_4[0xe8];
                              uVar5 = *(undefined4 *)((long)param_4 + 0x744);
                              lVar13 = *plVar34;
                              uVar71 = *(undefined4 *)((long)param_4 + 0x316c);
                              uVar26 = ParticleImage_get_TrailData_0x600008f(param_4);
                              auVar74 = func_0x0359d994(uVar26,*(undefined8 *)PTR_DAT_05e86068);
                              *(float *)(param_4 + 0xf0) = fVar57;
                              *(undefined4 *)((long)param_4 + 0x77c) = uVar50;
                              *(float *)((long)param_4 + 0x784) = fVar64;
                              *(undefined1 (*) [16])(param_4 + 0xed) = auVar73;
                              *(float *)((long)param_4 + 0x78c) = fVar45;
                              *(undefined4 *)(param_4 + 0xf1) = uVar43;
                              *(float *)(param_4 + 0xf2) = fVar46;
                              *(int *)(param_4 + 0xef) = (int)lVar37;
                              *(float *)(param_4 + 0xf7) = param_1;
                              *(undefined4 *)((long)param_4 + 0x794) = uVar51;
                              *(float *)(param_4 + 0xf3) = fVar48;
                              param_4[0xf6] = lVar39;
                              *(float *)((long)param_4 + 0x79c) = fVar49;
                              *(float *)(param_4 + 0xf4) = fVar62;
                              *(undefined4 *)(param_4 + 0xf5) = uVar60;
                              *(undefined4 *)((long)param_4 + 0x7a4) = uVar52;
                              *(undefined4 *)((long)param_4 + 0x7ac) = uVar63;
                              func_0x05afb2b0((long)param_4 + 0x7bc,auStack_2194,0x114);
                              func_0x05afb2b0(param_4 + 0x11a,auStack_24d0,0x338);
                              func_0x05afb2b0(param_4 + 0x181,auStack_2808,0x338);
                              param_4[0x1e8] = lVar54;
                              func_0x05afb2b0(param_4 + 0x1e9,auStack_2c30,0x428);
                              func_0x05afb2b0(param_4 + 0x26e,auStack_3058,0x428);
                              param_4[0x2f3] = lVar55;
                              func_0x05afb2b0(param_4 + 0x2f4,auStack_3390,0x338);
                              func_0x05afb2b0(param_4 + 0x35b,auStack_36c8,0x338);
                              *(char *)(param_4 + 0x3c3) = (char)lVar23;
                              *(char *)((long)param_4 + 0x1e19) = (char)lVar12;
                              *(ulong *)((long)param_4 + 0x1e22) = CONCAT26(uStack_36d2,uStack_36d8)
                              ;
                              *(ulong *)((long)param_4 + 0x1e1a) = CONCAT26(uStack_36da,uStack_36e0)
                              ;
                              param_4[0x3c2] = lVar68;
                              param_4[0x3c5] = CONCAT62(uStack_36d0,uStack_36d2);
                              *(undefined4 *)(param_4 + 0x3c6) = uVar4;
                              func_0x05afb2b0((long)param_4 + 0x1e34,auStack_37f4,0x114);
                              func_0x05afb2b0(param_4 + 0x3e9,auStack_3908,0x110);
                              *(undefined2 *)((long)param_4 + 0x2069) = uStack_849c;
                              *(undefined1 *)(param_4 + 0x410) = uVar6;
                              *(undefined1 *)((long)param_4 + 0x206b) = uStack_849a;
                              *(undefined4 *)((long)param_4 + 0x2064) = uVar5;
                              *(undefined2 *)((long)param_4 + 0x2081) = uStack_84a0;
                              *(undefined1 *)((long)param_4 + 0x2083) = uStack_849e;
                              *(char *)(param_4 + 0x40d) = (char)lVar13;
                              *(float *)(param_4 + 0x40b) = (float)(int)lVar56;
                              *(long *)((long)param_4 + 0x205c) = lVar69;
                              *(undefined4 *)((long)param_4 + 0x206c) = uVar71;
                              *(undefined1 (*) [16])(param_4 + 0x40e) = auVar74;
                              *(int *)((long)param_4 + 0x2084) = (int)lVar38;
                              func_0x05afb2b0(param_4 + 0x411,auStack_3c40,0x338);
                              *(undefined1 *)(param_4 + 0x478) = uVar7;
                              func_0x05afb2b0((long)param_4 + 0x23c1,auStack_3d58,0x117);
                              *(undefined1 *)(param_4 + 0x49b) = uVar8;
                              func_0x05afb2b0((long)param_4 + 0x24d9,auStack_3e70,0x117);
                              uVar26 = NEON_rev64(lVar66,4);
                              *(undefined2 *)((long)param_4 + 0x25f1) = uStack_84a4;
                              *(undefined8 *)((long)param_4 + 0x25f4) = uVar26;
                              *(undefined1 *)((long)param_4 + 0x25f3) = uStack_84a2;
                              *(char *)((long)param_4 + 0x2604) = (char)lVar41;
                              *(undefined4 *)(param_4 + 0x4c1) = uVar44;
                              *(undefined2 *)((long)param_4 + 0x2605) = uStack_84a8;
                              *(undefined1 *)((long)param_4 + 0x2607) = uStack_84a6;
                              *(undefined1 *)(param_4 + 0x4be) = uVar9;
                              *(undefined4 *)((long)param_4 + 0x25fc) = uVar53;
                              *(undefined4 *)(param_4 + 0x4c0) = uVar61;
                              *(float *)((long)param_4 + 0x260c) = fVar58;
                              *(float *)(param_4 + 0x4c2) = fVar67;
                              *(byte *)((long)param_4 + 0x2614) = bVar20 & 1;
                              func_0x05afb2b0((long)param_4 + 0x2615,auStack_3f84,0x113);
                              *(undefined4 *)((long)param_4 + 0x2734) = 0;
                              *(int *)(param_4 + 0x4e5) = (int)lVar40;
                              *(ulong *)((long)param_4 + 0x272c) = CONCAT44(fVar70,fVar72);
                              func_0x05afb2b0(&uStack_8370,param_4 + 0xed,0x1fd0);
                              plVar29 = (long *)ParticleImage_get_JobParticles_0x600008e(param_4);
                              plVar25 = (long *)PTR_DAT_05e85f48;
                              lVar23 = *plVar29;
                              if ((*(ushort *)(*(long *)(*(long *)PTR_DAT_05e85f48 + 0x20) + 0x135)
                                  & 1) == 0) {
                                func_0x02a2e9f8();
                              }
                              uVar44 = *(undefined4 *)(lVar23 + 8);
                              func_0x05afb2b0(&uStack_2080,&uStack_8370,0x1fd0);
                              auVar73 = func_0x030d097c(&uStack_2080,uVar44,0x10,0,0,
                                                        *(undefined8 *)PTR_DAT_05e85fc8);
                              *(undefined1 (*) [16])(param_4 + 0x4e7) = auVar73;
                              JobHandle_Complete_0x6000026(param_4 + 0x4e7,0);
                              func_0x0356a8fc(param_4 + 0xdd,*(undefined8 *)PTR_DAT_05e86010);
                              plVar29 = (long *)PTR_DAT_05e591c0;
                              if ((char)*plVar34 == '\0') {
LAB_049bfdac:
                                iVar21 = 0;
                              }
                              else {
                                lVar23 = param_4[0x627];
                                if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
                                  func_0x029f5bd0();
                                }
                                uVar24 = Object_op_Implicit_0x6000da6(lVar23,0);
                                puVar15 = PTR_DAT_05e86070;
                                puVar14 = PTR_DAT_05e86050;
                                if ((uVar24 & 1) == 0) goto LAB_049bfdac;
                                lVar37 = 0;
                                lVar38 = 0;
                                lVar23 = 0;
                                iVar21 = 0;
                                iVar22 = 0;
                                while( true ) {
                                  plVar25 = (long *)ParticleImage_get_JobParticles_0x600008e
                                                              (param_4);
                                  lVar41 = *plVar25;
                                  if ((*(ushort *)
                                        (*(long *)(*(long *)PTR_DAT_05e85f48 + 0x20) + 0x135) & 1)
                                      == 0) {
                                    func_0x02a2e9f8();
                                  }
                                  if (*(int *)(lVar41 + 8) <= lVar23) break;
                                  puVar27 = (undefined8 *)
                                            ParticleImage_get_JobParticles_0x600008e(param_4);
                                  plVar25 = (long *)*puVar27;
                                  if ((*(ushort *)(*(long *)(*(long *)puVar14 + 0x20) + 0x135) & 1)
                                      == 0) {
                                    func_0x02a2e9f8();
                                  }
                                  lVar41 = *plVar25;
                                  func_0x05afb2b0(&uStack_2080,lVar37 + lVar41,0xe8);
                                  func_0x05afb2b0(auStack_8578,lVar37 + lVar41,0xd0);
                                  uStack_8588 = uStack_1fa0;
                                  uStack_8590 = uStack_1fa8;
                                  puVar27 = (undefined8 *)
                                            ParticleImage_get_JobParticles_0x600008e(param_4);
                                  plVar25 = (long *)*puVar27;
                                  if ((*(ushort *)(*(long *)(*(long *)puVar15 + 0x20) + 0x135) & 1)
                                      == 0) {
                                    func_0x02a2e9f8();
                                  }
                                  lVar41 = lVar37 + *plVar25;
                                  func_0x05afb2b0(lVar41,auStack_8578,0xd0);
                                  *(int *)(lVar41 + 0xd0) = iVar22;
                                  *(int *)(lVar41 + 0xd4) = iVar21;
                                  *(undefined8 *)(lVar41 + 0xe0) = uStack_8588;
                                  *(undefined8 *)(lVar41 + 0xd8) = uStack_8590;
                                  plVar25 = (long *)ParticleImage_get_TrailData_0x600008f(param_4);
                                  plStack_8598 = plVar25;
                                  if ((*(byte *)(*(long *)(*(long *)PTR_DAT_05e86058 + 0x20) + 0x135
                                                ) & 1) == 0) {
                                    func_0x02a2e9f8(*(long *)(*(long *)PTR_DAT_05e86058 + 0x20));
                                  }
                                  uVar10 = *(ushort *)(lVar38 + *plVar25);
                                  if ((*(ushort *)
                                        (*(long *)(*(long *)PTR_DAT_05e85fc0 + 0x20) + 0x135) & 1)
                                      == 0) {
                                    func_0x02a2e9f8();
                                  }
                                  if (1 < uVar10) {
                                    plVar25 = (long *)ParticleImage_get_TrailData_0x600008f(param_4)
                                    ;
                                    plStack_8598 = plVar25;
                                    if ((*(byte *)(*(long *)(*(long *)PTR_DAT_05e86058 + 0x20) +
                                                  0x135) & 1) == 0) {
                                      func_0x02a2e9f8(*(long *)(*(long *)PTR_DAT_05e86058 + 0x20));
                                    }
                                    uVar10 = *(ushort *)(lVar38 + *plVar25);
                                    if ((*(ushort *)
                                          (*(long *)(*(long *)PTR_DAT_05e85fc0 + 0x20) + 0x135) & 1)
                                        == 0) {
                                      func_0x02a2e9f8();
                                    }
                                    plVar25 = (long *)ParticleImage_get_TrailData_0x600008f(param_4)
                                    ;
                                    plStack_8598 = plVar25;
                                    if ((*(byte *)(*(long *)(*(long *)PTR_DAT_05e86058 + 0x20) +
                                                  0x135) & 1) == 0) {
                                      func_0x02a2e9f8(*(long *)(*(long *)PTR_DAT_05e86058 + 0x20));
                                    }
                                    uVar11 = *(ushort *)(lVar38 + *plVar25);
                                    if ((*(ushort *)
                                          (*(long *)(*(long *)PTR_DAT_05e85fc0 + 0x20) + 0x135) & 1)
                                        == 0) {
                                      func_0x02a2e9f8();
                                    }
                                    iVar22 = iVar22 + (uint)uVar10 * 2;
                                    iVar21 = iVar21 + (uint)uVar11 * 6 + -6;
                                  }
                                  lVar23 = lVar23 + 1;
                                  lVar38 = lVar38 + 0x1000;
                                  lVar37 = lVar37 + 0xe8;
                                }
                                auVar73 = Mesh_AllocateWritableMeshData_0x6000728(1,0);
                                *(undefined1 (*) [16])(param_4 + 0x22) = auVar73;
                                lVar23 = MeshDataArray_get_Item_0x6000788(param_4 + 0x22,0,0);
                                puVar14 = PTR_DAT_05e86078;
                                param_4[0x24] = lVar23;
                                lVar23 = func_0x029f5b40(*(undefined8 *)puVar14,2);
                                uStack_4c48 = 0;
                                uStack_4c50 = 0;
                                VertexAttributeDescriptor__ctor_0x600119f(&uStack_4c50,0,0,3,0,0);
                                if (lVar23 == 0) goto LAB_049be6e4;
                                if (*(int *)(lVar23 + 0x18) == 0) goto LAB_049c0564;
                                *(undefined8 *)(lVar23 + 0x28) = uStack_4c48;
                                *(undefined8 *)(lVar23 + 0x20) = uStack_4c50;
                                uStack_57d8 = 0;
                                uStack_57e0 = 0;
                                VertexAttributeDescriptor__ctor_0x600119f(&uStack_57e0,3,0,4,1,0);
                                if ((*(uint *)(lVar23 + 0x18) & 0xfffffffe) == 0) goto LAB_049c0564;
                                *(undefined8 *)(lVar23 + 0x38) = uStack_57d8;
                                *(undefined8 *)(lVar23 + 0x30) = uStack_57e0;
                                MeshData_SetVertexBufferParams_0x600077d
                                          (param_4 + 0x24,iVar22,lVar23,0);
                                MeshData_SetIndexBufferParams_0x600077e(param_4 + 0x24,iVar21,0,0);
                                func_0x05afb2a0(auStack_4098,0,0x114);
                                func_0x05afb2a0(auStack_44c8,0,0x42f);
                                puVar27 = (undefined8 *)
                                          ParticleImage_get_JobParticles_0x600008e(param_4);
                                auVar73 = func_0x035b3e2c(*puVar27,*(undefined8 *)PTR_DAT_05e86060);
                                lVar41 = param_4[0x24];
                                uVar26 = ParticleImage_get_TrailData_0x600008f(param_4);
                                auVar74 = func_0x0359d994(uVar26,*(undefined8 *)PTR_DAT_05e86068);
                                lVar23 = *plVar34;
                                lVar37 = param_4[0x62d];
                                lStack_89a8 = param_4[0x62a];
                                lStack_89b0 = param_4[0x629];
                                lStack_8998 = param_4[0x62c];
                                lStack_89a0 = param_4[0x62b];
                                JobUtils_ConvertMinMaxCurveToJobs_0x6000174
                                          (auStack_4910,&lStack_89b0,0);
                                func_0x05afb2b0(auStack_4094,auStack_4910,0x110);
                                lStack_89c0 = param_4[0x634];
                                lStack_89e8 = param_4[0x62f];
                                lStack_89f0 = param_4[0x62e];
                                lStack_89d8 = param_4[0x631];
                                lStack_89e0 = param_4[0x630];
                                lStack_89c8 = param_4[0x633];
                                lStack_89d0 = param_4[0x632];
                                lVar38 = param_4[0x63d];
                                JobUtils_ConvertMinMaxColorJobData_0x6000173
                                          (&uStack_5080,&lStack_89f0,0);
                                func_0x05afb2b0(auStack_44c1,&uStack_5080,0x428);
                                lStack_8a28 = param_4[0x636];
                                lStack_8a30 = param_4[0x635];
                                lStack_8a18 = param_4[0x638];
                                lStack_8a20 = param_4[0x637];
                                lStack_8a08 = param_4[0x63a];
                                lStack_8a10 = param_4[0x639];
                                lStack_8a00 = param_4[0x63b];
                                JobUtils_ConvertMinMaxColorJobData_0x6000173
                                          (auStack_54a8,&lStack_8a30,0);
                                param_4[0x4ea] = auVar73._8_8_;
                                *(undefined4 *)((long)param_4 + 0x2761) = 0;
                                param_4[0x4e9] = auVar73._0_8_;
                                param_4[0x4eb] = lVar41;
                                *(char *)(param_4 + 0x4ec) = (char)lVar23;
                                *(undefined4 *)((long)param_4 + 0x2764) = 0;
                                *(undefined1 (*) [16])(param_4 + 0x4ed) = auVar74;
                                *(int *)(param_4 + 0x4ef) = (int)lVar37;
                                func_0x05afb2b0((long)param_4 + 0x277c,auStack_4098,0x114);
                                *(char *)(param_4 + 0x512) = (char)lVar38;
                                func_0x05afb2b0((long)param_4 + 0x2891,auStack_44c8,0x42f);
                                func_0x05afb2b0(param_4 + 0x598,auStack_54a8,0x428);
                                func_0x05afb2b0(&uStack_8370,param_4 + 0x4e9,0x9a0);
                                plVar29 = (long *)ParticleImage_get_JobParticles_0x600008e(param_4);
                                plVar25 = (long *)PTR_DAT_05e85f48;
                                lVar23 = *plVar29;
                                if ((*(ushort *)
                                      (*(long *)(*(long *)PTR_DAT_05e85f48 + 0x20) + 0x135) & 1) ==
                                    0) {
                                  func_0x02a2e9f8();
                                }
                                uVar44 = *(undefined4 *)(lVar23 + 8);
                                lVar23 = param_4[0x4e7];
                                lVar37 = param_4[0x4e8];
                                func_0x05afb2b0(&uStack_2080,&uStack_8370,0x9a0);
                                auVar73 = func_0x030d0bfc(&uStack_2080,uVar44,0x10,lVar23,lVar37,
                                                          *(undefined8 *)PTR_DAT_05e85fd0);
                                *(undefined1 (*) [16])(param_4 + 0x61d) = auVar73;
                                JobHandle_Complete_0x6000026(param_4 + 0x61d,0);
                                plVar29 = (long *)PTR_DAT_05e591c0;
                              }
                              MeshData_set_subMeshCount_0x6000780(param_4 + 0x21,1,0);
                              plVar30 = (long *)ParticleImage_get_JobParticles_0x600008e(param_4);
                              lVar23 = *plVar30;
                              if ((*(ushort *)(*(long *)(*plVar25 + 0x20) + 0x135) & 1) == 0) {
                                func_0x02a2e9f8();
                              }
                              uStack_2058 = 0;
                              uStack_2060 = 0;
                              uStack_2068 = 0;
                              uStack_2070 = 0;
                              uStack_2078 = 0;
                              uStack_2080 = 0;
                              SubMeshDescriptor__ctor_0x6001187
                                        (&uStack_2080,0,*(int *)(lVar23 + 8) * 6,0,0);
                              uStack_8a58 = uStack_2078;
                              uStack_8a60 = uStack_2080;
                              uStack_8a48 = uStack_2068;
                              uStack_8a50 = uStack_2070;
                              uStack_8a38 = uStack_2058;
                              uStack_8a40 = uStack_2060;
                              MeshData_SetSubMesh_0x6000781(param_4 + 0x21,0,&uStack_8a60,0,0);
                              lVar23 = param_4[0x1f];
                              lVar37 = param_4[0x20];
                              uVar26 = ParticleImage_get_mesh_0x600001a(param_4);
                              Mesh_ApplyAndDisposeWritableMeshData_0x6000729
                                        (lVar23,lVar37,uVar26,0xd,0);
                              lVar23 = ParticleImage_get_mesh_0x600001a(param_4);
                              if (lVar23 != 0) {
                                Mesh_RecalculateBounds_0x6000749(lVar23,0);
                                lVar23 = Graphic_get_canvasRenderer_0x60000f9(param_4,0);
                                uVar26 = ParticleImage_get_mesh_0x600001a(param_4);
                                if (lVar23 != 0) {
                                  CanvasRenderer_SetMesh_0x6000028(lVar23,uVar26,0);
                                  (**(code **)(*param_4 + 0x308))
                                            (param_4,*(undefined8 *)(*param_4 + 0x310));
                                  if ((char)*plVar34 != '\0') {
                                    lVar23 = param_4[0x627];
                                    if (*(int *)(*plVar29 + 0xe4) == 0) {
                                      func_0x029f5bd0();
                                    }
                                    uVar24 = Object_op_Implicit_0x6000da6(lVar23,0);
                                    if ((uVar24 & 1) != 0) {
                                      if (param_4[0x627] == 0) goto LAB_049be6e4;
                                      ParticleTrailRenderer_SetMeshData_0x6000117
                                                (param_4[0x627],param_4[0x22],param_4[0x23],
                                                 param_4[0x24],iVar21);
                                    }
                                  }
                                  plVar29 = (long *)ParticleImage_get_JobParticles_0x600008e
                                                              (param_4);
                                  lVar23 = *plVar29;
                                  if ((*(ushort *)(*(long *)(*plVar25 + 0x20) + 0x135) & 1) == 0) {
                                    func_0x02a2e9f8();
                                  }
                                  if (0 < *(int *)(lVar23 + 8)) {
                                    uVar26 = ParticleImage_get_JobParticles_0x600008e(param_4);
                                    plVar29 = (long *)ParticleImage_get_JobParticles_0x600008e
                                                                (param_4);
                                    lVar23 = *plVar29;
                                    if ((*(ushort *)(*(long *)(*plVar25 + 0x20) + 0x135) & 1) == 0)
                                    {
                                      func_0x02a2e9f8();
                                    }
                                    puVar15 = PTR_DAT_05e86028;
                                    pfVar31 = (float *)func_0x035b36a8(uVar26,*(int *)(lVar23 + 8) +
                                                                              -1,
                                                                       *(undefined8 *)
                                                                        PTR_DAT_05e86028);
                                    puVar18 = PTR_DAT_05e86048;
                                    puVar17 = PTR_DAT_05e86040;
                                    puVar16 = PTR_DAT_05e86030;
                                    puVar14 = PTR_DAT_05e85fc0;
                                    if (pfVar31[2] <= *pfVar31) {
                                      do {
                                        if ((char)*plVar34 != '\0') {
                                          plStack_8598 = (long *)
                                                  ParticleImage_get_TrailData_0x600008f(param_4);
                                          plVar29 = (long *)ParticleImage_get_JobParticles_0x600008e
                                                                      (param_4);
                                          lVar23 = *plVar29;
                                          if ((*(ushort *)(*(long *)(*plVar25 + 0x20) + 0x135) & 1)
                                              == 0) {
                                            func_0x02a2e9f8();
                                          }
                                          puVar32 = (ushort *)
                                                    func_0x0359d1fc(&plStack_8598,
                                                                    *(int *)(lVar23 + 8) + -1,
                                                                    *(undefined8 *)puVar16);
                                          if ((*(ushort *)
                                                (*(long *)(*(long *)puVar14 + 0x20) + 0x135) & 1) ==
                                              0) {
                                            func_0x02a2e9f8(*(long *)(*(long *)puVar14 + 0x20));
                                          }
                                          if ((1 < *puVar32) &&
                                             (*(char *)((long)param_4 + 0x31e9) == '\0')) break;
                                        }
                                        if (param_4[0x649] == 0) goto LAB_049be6e4;
                                        UnityEvent_Invoke_0x6001051(param_4[0x649],0);
                                        if ((char)param_4[0x650] == '\0') {
                                          *(undefined1 *)(param_4 + 0x650) = 1;
                                          if (param_4[0x648] == 0) goto LAB_049be6e4;
                                          UnityEvent_Invoke_0x6001051(param_4[0x648],0);
                                        }
                                        plVar29 = (long *)ParticleImage_get_JobParticles_0x600008e
                                                                    (param_4);
                                        lVar23 = *plVar29;
                                        if ((*(ushort *)(*(long *)(*plVar25 + 0x20) + 0x135) & 1) ==
                                            0) {
                                          func_0x02a2e9f8();
                                        }
                                        if (*(int *)(lVar23 + 8) < 2) {
                                          if (param_4[0x64a] == 0) goto LAB_049be6e4;
                                          UnityEvent_Invoke_0x6001051(param_4[0x64a],0);
                                        }
                                        if ((char)*plVar34 != '\0') {
                                          plStack_8598 = (long *)
                                                  ParticleImage_get_TrailData_0x600008f(param_4);
                                          plVar29 = (long *)ParticleImage_get_JobParticles_0x600008e
                                                                      (param_4);
                                          lVar23 = *plVar29;
                                          if ((*(ushort *)(*(long *)(*plVar25 + 0x20) + 0x135) & 1)
                                              == 0) {
                                            func_0x02a2e9f8();
                                          }
                                          func_0x0359d790(&plStack_8598,*(int *)(lVar23 + 8) + -1,
                                                          *(undefined8 *)puVar17);
                                        }
                                        uVar26 = ParticleImage_get_JobParticles_0x600008e(param_4);
                                        plVar29 = (long *)ParticleImage_get_JobParticles_0x600008e
                                                                    (param_4);
                                        lVar23 = *plVar29;
                                        if ((*(ushort *)(*(long *)(*plVar25 + 0x20) + 0x135) & 1) ==
                                            0) {
                                          func_0x02a2e9f8();
                                        }
                                        func_0x035b3c28(uVar26,*(int *)(lVar23 + 8) + -1,
                                                        *(undefined8 *)puVar18);
                                        plVar29 = (long *)ParticleImage_get_JobParticles_0x600008e
                                                                    (param_4);
                                        lVar23 = *plVar29;
                                        if ((*(ushort *)(*(long *)(*plVar25 + 0x20) + 0x135) & 1) ==
                                            0) {
                                          func_0x02a2e9f8();
                                        }
                                        if (*(int *)(lVar23 + 8) < 1) break;
                                        uVar26 = ParticleImage_get_JobParticles_0x600008e(param_4);
                                        plVar29 = (long *)ParticleImage_get_JobParticles_0x600008e
                                                                    (param_4);
                                        lVar23 = *plVar29;
                                        if ((*(ushort *)(*(long *)(*plVar25 + 0x20) + 0x135) & 1) ==
                                            0) {
                                          func_0x02a2e9f8();
                                        }
                                        pfVar31 = (float *)func_0x035b36a8(uVar26,*(int *)(lVar23 + 
                                                  8) + -1,*(undefined8 *)puVar15);
                                      } while (pfVar31[2] <= *pfVar31);
                                    }
                                  }
                                  goto LAB_049c0518;
                                }
                              }
                            }
                          }
                          goto LAB_049be6e4;
                        }
                      }
                    }
LAB_049c0564:
                    if (*(long *)(lVar33 + 0x28) == lStack_a8) {
                    /* WARNING: Subroutine does not return */
                      Throw_Index_Wrapper();
                    }
                    goto LAB_049c0580;
                  }
                }
              }
              else if (((long *)param_4[0x27] == (long *)0x0) ||
                      (*(long *)param_4[0x27] != *(long *)PTR_DAT_05e5bfa8)) {
                lVar23 = ParticleImage_get_mainCamera_0x60000ca(param_4);
                if ((param_4[0x27] != 0) &&
                   (Transform_get_position_0x6000f4d(param_4[0x27],0), lVar23 != 0)) {
                  fVar64 = (float)Camera_WorldToViewportPoint_0x60002aa(lVar23,0);
                  if (param_4[0x1d] != 0) {
                    RectTransform_get_rect_0x6000f26(param_4[0x1d],0);
                    if (param_4[0x1d] != 0) {
                      RectTransform_get_rect_0x6000f26(param_4[0x1d],0);
                      if ((param_4[0x1d] != 0) &&
                         (lVar23 = Component_get_transform_0x6000c82(param_4[0x1d],0), lVar23 != 0))
                      {
                        uVar43 = 0;
                        fVar62 = (param_2 + -0.5) * fVar62;
                        fVar58 = fVar62 + 0.0;
                        uVar44 = Transform_TransformPoint_0x6000f77
                                           ((fVar64 + -0.5) * fVar57 + 0.0,fVar58,lVar23,0);
                        lVar23 = Component_get_transform_0x6000c82(param_4,0);
                        if ((lVar23 != 0) &&
                           (lVar23 = Transform_get_parent_0x6000f5f(lVar23,0), lVar23 != 0)) {
                          uVar44 = Transform_InverseTransformPoint_0x6000f79
                                             (uVar44,fVar58,uVar43,lVar23,0);
                          lVar23 = Component_get_transform_0x6000c82(param_4,0);
                          if (lVar23 != 0) {
                            Transform_set_localPosition_0x6000f50(uVar44,fVar58,uVar43,lVar23,0);
                            goto LAB_049be284;
                          }
                        }
                      }
                    }
                  }
                }
              }
              else {
                lVar23 = Component_get_transform_0x6000c82(param_4,0);
                if ((param_4[0x27] != 0) &&
                   (Transform_get_position_0x6000f4d(param_4[0x27],0), lVar23 != 0)) {
                  Transform_set_position_0x6000f4e(lVar23,0);
                  goto LAB_049be284;
                }
              }
            }
            goto LAB_049be6e4;
          }
        }
LAB_049c0518:
        if (*(long *)(lVar33 + 0x28) == lStack_a8) {
          return;
        }
        goto LAB_049c0580;
      }
      *(undefined4 *)((long)param_4 + 0x3204) = 0;
      puVar14 = PTR_DAT_05e85fb8;
      if (lVar23 != 0) {
        iVar21 = 0;
        do {
          fVar57 = (float)param_3;
          if (*(int *)(lVar23 + 0x18) <= iVar21) goto LAB_049bdfd8;
          lVar23 = func_0x0452c8d8(lVar23,iVar21,*(undefined8 *)puVar14);
          if (lVar23 == 0) break;
          *(undefined1 *)(lVar23 + 0x18) = 0;
          iVar21 = iVar21 + 1;
          lVar23 = param_4[0x626];
        } while (lVar23 != 0);
      }
    }
    else {
      iVar21 = 0;
      do {
        if (*(int *)(lVar23 + 0x18) <= iVar21) goto LAB_049bdfc0;
        fVar57 = *(float *)((long)param_4 + 0x3204);
        lVar23 = func_0x0452c8d8(lVar23,iVar21,*(undefined8 *)puVar15);
        if (lVar23 == 0) break;
        if (*(float *)(lVar23 + 0x10) + *(float *)((long)param_4 + 0x14c) <= fVar57) {
          if ((param_4[0x626] == 0) ||
             (lVar23 = func_0x0452c8d8(param_4[0x626],iVar21,*(undefined8 *)puVar15), lVar23 == 0))
          break;
          if (*(char *)(lVar23 + 0x18) == '\0') {
            lVar23 = param_4[0x626];
            if (lVar23 == 0) break;
            iVar22 = 0;
            while( true ) {
              lVar23 = func_0x0452c8d8(lVar23,iVar21,*(undefined8 *)puVar15);
              if (lVar23 == 0) goto LAB_049be6e4;
              if (*(int *)(lVar23 + 0x14) <= iVar22) break;
              if ((*(char *)((long)param_4 + 0x322c) == '\0') ||
                 (*(char *)((long)param_4 + 0x322d) == '\0')) {
                if (param_4[0x626] == 0) goto LAB_049be6e4;
                lVar23 = param_4[0xe9];
                uVar26 = func_0x0452c8d8(param_4[0x626],iVar21,*(undefined8 *)puVar15);
                param_3 = 0;
                uVar26 = ParticleImage_GenerateParticle(0,0,param_4,iVar22,0,uVar26);
                if (lVar23 == 0) goto LAB_049be6e4;
                lVar37 = *(long *)(lVar23 + 0x10);
                lVar38 = *(long *)puVar16;
                *(int *)(lVar23 + 0x1c) = *(int *)(lVar23 + 0x1c) + 1;
                if (lVar37 == 0) goto LAB_049be6e4;
                uVar35 = *(uint *)(lVar23 + 0x18);
                if (uVar35 < *(uint *)(lVar37 + 0x18)) {
                  *(uint *)(lVar23 + 0x18) = uVar35 + 1;
                  *(undefined8 *)(lVar37 + (long)(int)uVar35 * 8 + 0x20) = uVar26;
                  Managed_WriteBarrier();
                }
                else {
                  func_0x0452cba8(lVar23,uVar26,
                                  *(undefined8 *)(*(long *)(*(long *)(lVar38 + 0x20) + 0xc0) + 0x70)
                                 );
                }
              }
              else {
                plVar25 = (long *)ParticleImage_get_JobParticles_0x600008e(param_4);
                lVar23 = *plVar25;
                if ((*(ushort *)(*(long *)(*(long *)puVar14 + 0x20) + 0x135) & 1) == 0) {
                  func_0x02a2e9f8();
                }
                iVar42 = *(int *)(lVar23 + 8);
                uVar26 = ParticleImage_get_JobParticles_0x600008e(param_4);
                if (iVar42 < 1) {
                  if (param_4[0x626] == 0) goto LAB_049be6e4;
                  uVar28 = func_0x0452c8d8(param_4[0x626],iVar21,*(undefined8 *)puVar15);
                  ParticleImage_GenerateJobParticle_0x60000e6
                            (&uStack_2080,0,0,param_4,iVar22,0,uVar28);
                  func_0x05afb2b0(auStack_8458,&uStack_2080,0xe8);
                  func_0x035b3914(uVar26,auStack_8458,*(undefined8 *)puVar17);
                }
                else {
                  func_0x035b3afc(uVar26,0,1,*(undefined8 *)puVar18);
                  puVar27 = (undefined8 *)ParticleImage_get_JobParticles_0x600008e(param_4);
                  if (param_4[0x626] == 0) goto LAB_049be6e4;
                  uVar26 = func_0x0452c8d8(param_4[0x626],iVar21,*(undefined8 *)puVar15);
                  ParticleImage_GenerateJobParticle_0x60000e6
                            (&uStack_2080,0,0,param_4,iVar22,0,uVar26);
                  puVar27 = (undefined8 *)*puVar27;
                  if ((*(ushort *)(*(long *)(*(long *)puVar19 + 0x20) + 0x135) & 1) == 0) {
                    func_0x02a2e9f8();
                  }
                  func_0x05afb2b0(*puVar27,&uStack_2080,0xe8);
                }
              }
              lVar23 = param_4[0x626];
              iVar22 = iVar22 + 1;
              if (lVar23 == 0) goto LAB_049be6e4;
            }
            if ((param_4[0x626] == 0) ||
               (lVar23 = func_0x0452c8d8(param_4[0x626],iVar21,*(undefined8 *)puVar15), lVar23 == 0)
               ) break;
            *(undefined1 *)(lVar23 + 0x18) = 1;
          }
        }
        lVar23 = param_4[0x626];
        iVar21 = iVar21 + 1;
      } while (lVar23 != 0);
    }
  }
  else {
    if (cRam000000000625bae8 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625bae8 = '\x01';
    }
    fVar57 = *(float *)((long)param_4 + 0x326c);
    lVar23 = param_4[0x64e];
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar62 = (float)lVar23;
    fVar64 = (float)((ulong)lVar23 >> 0x20);
    param_3 = (ulong)(uint)*(float *)(param_4 + 0x625);
    if (SQRT(fVar57 * fVar57 + fVar62 * fVar62 + fVar64 * fVar64) <=
        1.0 / *(float *)(param_4 + 0x625)) goto LAB_049bdcec;
    iVar21 = *(int *)((long)param_4 + 0x328c) + 1;
    *(int *)((long)param_4 + 0x328c) = iVar21;
    if ((*(char *)((long)param_4 + 0x322c) == '\0') || (*(char *)((long)param_4 + 0x322d) == '\0'))
    {
      uVar44 = 0;
      lVar23 = param_4[0xe9];
      param_3 = 0;
      uVar26 = ParticleImage_GenerateParticle(0,param_4,iVar21,3,0);
      if (lVar23 != 0) {
        lVar37 = *(long *)(lVar23 + 0x10);
        lVar38 = *(long *)PTR_DAT_05e85fd8;
        *(int *)(lVar23 + 0x1c) = *(int *)(lVar23 + 0x1c) + 1;
        if (lVar37 != 0) {
          uVar35 = *(uint *)(lVar23 + 0x18);
          if (uVar35 < *(uint *)(lVar37 + 0x18)) {
            *(uint *)(lVar23 + 0x18) = uVar35 + 1;
            *(undefined8 *)(lVar37 + (long)(int)uVar35 * 8 + 0x20) = uVar26;
            Managed_WriteBarrier();
          }
          else {
            func_0x0452cba8(lVar23,uVar26,
                            *(undefined8 *)(*(long *)(*(long *)(lVar38 + 0x20) + 0xc0) + 0x70));
          }
          goto LAB_049bdcc8;
        }
      }
    }
    else {
      plVar25 = (long *)ParticleImage_get_JobParticles_0x600008e(param_4);
      lVar23 = *plVar25;
      if ((*(ushort *)(*(long *)(*(long *)PTR_DAT_05e85f48 + 0x20) + 0x135) & 1) == 0) {
        func_0x02a2e9f8();
      }
      iVar21 = *(int *)(lVar23 + 8);
      uVar26 = ParticleImage_get_JobParticles_0x600008e(param_4);
      if (iVar21 < 1) {
        uVar44 = 0;
        ParticleImage_GenerateJobParticle_0x60000e6
                  (&uStack_2080,0,param_4,*(undefined4 *)((long)param_4 + 0x328c),3,0);
        func_0x05afb2b0(auStack_8458,&uStack_2080,0xe8);
        func_0x035b3914(uVar26,auStack_8458,*(undefined8 *)PTR_DAT_05e86020);
      }
      else {
        func_0x035b3afc(uVar26,0,1,*(undefined8 *)PTR_DAT_05e86038);
        puVar27 = (undefined8 *)ParticleImage_get_JobParticles_0x600008e(param_4);
        uVar44 = 0;
        ParticleImage_GenerateJobParticle_0x60000e6
                  (&uStack_2080,0,param_4,*(undefined4 *)((long)param_4 + 0x328c),3,0);
        puVar27 = (undefined8 *)*puVar27;
        if ((*(ushort *)(*(long *)(*(long *)PTR_DAT_05e86070 + 0x20) + 0x135) & 1) == 0) {
          func_0x02a2e9f8();
        }
        func_0x05afb2b0(*puVar27,&uStack_2080,0xe8);
      }
LAB_049bdcc8:
      lVar23 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar23 != 0) {
        uVar43 = Transform_get_position_0x6000f4d(lVar23,0);
        *(undefined4 *)(param_4 + 0x64c) = uVar43;
        *(undefined4 *)((long)param_4 + 0x3264) = uVar44;
        *(int *)(param_4 + 0x64d) = (int)param_3;
        goto LAB_049bdcec;
      }
    }
  }
LAB_049be6e4:
  if (*(long *)(lVar33 + 0x28) == lStack_a8) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
LAB_049c0580:
  lVar33 = func_0x05afb240();
  lVar33 = *(long *)(lVar33 + 0x3238);
  if (lVar33 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if ((bRam000000000626ce76 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e6d2f0,0);
    func_0x029f5a50(PTR_DAT_05e6d2f8);
    func_0x029f5a50(PTR_DAT_05e6d300);
    func_0x029f5a50(PTR_DAT_05e59768);
    bRam000000000626ce76 = 1;
  }
  lVar23 = UnityEventBase_PrepareInvoke_0x6001046(lVar33,0);
  puVar16 = PTR_DAT_05e6d300;
  puVar15 = PTR_DAT_05e6d2f0;
  puVar14 = PTR_DAT_05e59768;
  if (lVar23 != 0) {
    if (0 < *(int *)(lVar23 + 0x18)) {
      iVar21 = 0;
      do {
        plVar34 = (long *)func_0x0452c8d8(lVar23,iVar21,*(undefined8 *)puVar16);
        if (plVar34 == (long *)0x0) {
code_r0x057f516c:
          plVar34 = (long *)func_0x0452c8d8(lVar23,iVar21,*(undefined8 *)puVar16);
          if (plVar34 != (long *)0x0) {
            lVar37 = *(long *)puVar15;
            bVar20 = *(byte *)(lVar37 + 0x130);
            if ((bVar20 <= *(byte *)(*plVar34 + 0x130)) &&
               (*(long *)(*(long *)(*plVar34 + 200) + (ulong)bVar20 * 8 + -8) == lVar37))
            goto code_r0x057f5200;
          }
          plVar34 = (long *)func_0x0452c8d8(lVar23,iVar21,*(undefined8 *)puVar16);
          if (*(long *)(lVar33 + 0x28) == 0) {
            uVar26 = func_0x029f5b40(*(undefined8 *)puVar14,0);
            *(undefined8 *)(lVar33 + 0x28) = uVar26;
            Managed_WriteBarrier(lVar33 + 0x28,uVar26);
          }
          if (plVar34 == (long *)0x0) goto code_r0x057f522c;
          (**(code **)(*plVar34 + 0x178))
                    (plVar34,*(undefined8 *)(lVar33 + 0x28),*(undefined8 *)(*plVar34 + 0x180));
        }
        else {
          lVar37 = *(long *)puVar15;
          bVar20 = *(byte *)(lVar37 + 0x130);
          if ((*(byte *)(*plVar34 + 0x130) < bVar20) ||
             (*(long *)(*(long *)(*plVar34 + 200) + (ulong)bVar20 * 8 + -8) != lVar37))
          goto code_r0x057f516c;
code_r0x057f5200:
          InvokableCall_Invoke_0x600100c(plVar34,0);
        }
        iVar21 = iVar21 + 1;
      } while (iVar21 < *(int *)(lVar23 + 0x18));
    }
    return;
  }
code_r0x057f522c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

