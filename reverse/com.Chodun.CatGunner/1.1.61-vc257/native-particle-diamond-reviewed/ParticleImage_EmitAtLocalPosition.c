/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48c3840, Ghidra VA 049c3840. */

void ParticleImage_EmitAtLocalPosition
               (undefined4 param_1,undefined4 param_2,long param_3,int param_4)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  long *plVar8;
  undefined8 *puVar9;
  long lVar10;
  long lVar11;
  int iVar12;
  long lVar13;
  undefined8 uVar14;
  undefined1 auStack_240 [232];
  undefined1 auStack_158 [232];
  
  if ((bRam0000000006262844 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e85fd8);
    func_0x029f5a50(PTR_DAT_05e86020);
    func_0x029f5a50(PTR_DAT_05e86038);
    func_0x029f5a50(PTR_DAT_05e85f48);
    func_0x029f5a50(PTR_DAT_05e86070);
    bRam0000000006262844 = 1;
  }
  func_0x05afb2a0(auStack_240,0,0xe8);
  if (*(char *)(param_3 + 0x322f) == '\0') {
    ParticleImage_Play_0x60000d2(param_3);
  }
  if (*(long *)(param_3 + 0x3298) != 0) {
    *(int *)(*(long *)(param_3 + 0x3298) + 0x14) = param_4;
    puVar7 = PTR_DAT_05e86070;
    puVar6 = PTR_DAT_05e86038;
    puVar5 = PTR_DAT_05e86020;
    puVar4 = PTR_DAT_05e85fd8;
    puVar3 = PTR_DAT_05e85f48;
    if (0 < param_4) {
      iVar12 = 0;
      do {
        if (*(char *)(param_3 + 0x322c) == '\0') {
          uVar14 = *(undefined8 *)(param_3 + 0x3298);
LAB_049c3a0c:
          lVar13 = *(long *)(param_3 + 0x748);
          uVar14 = ParticleImage_GenerateParticle(0,param_1,param_2,param_3,iVar12,0,uVar14);
          if (lVar13 == 0) goto LAB_049c3acc;
          lVar10 = *(long *)(lVar13 + 0x10);
          lVar11 = *(long *)puVar4;
          *(int *)(lVar13 + 0x1c) = *(int *)(lVar13 + 0x1c) + 1;
          if (lVar10 == 0) goto LAB_049c3acc;
          uVar2 = *(uint *)(lVar13 + 0x18);
          if (uVar2 < *(uint *)(lVar10 + 0x18)) {
            *(uint *)(lVar13 + 0x18) = uVar2 + 1;
            *(undefined8 *)(lVar10 + (long)(int)uVar2 * 8 + 0x20) = uVar14;
            Managed_WriteBarrier();
          }
          else {
            func_0x0452cba8(lVar13,uVar14,
                            *(undefined8 *)(*(long *)(*(long *)(lVar11 + 0x20) + 0xc0) + 0x70));
          }
        }
        else {
          uVar14 = *(undefined8 *)(param_3 + 0x3298);
          if (*(char *)(param_3 + 0x322d) == '\0') goto LAB_049c3a0c;
          float2_op_Implicit_0x60010c9(param_1,param_2,0);
          ParticleImage_GenerateJobParticle_0x60000e6(auStack_158,param_3,iVar12,0,uVar14);
          func_0x05afb2b0(auStack_240,auStack_158,0xe8);
          plVar8 = (long *)ParticleImage_get_JobParticles_0x600008e(param_3);
          lVar13 = *plVar8;
          if ((*(ushort *)(*(long *)(*(long *)puVar3 + 0x20) + 0x135) & 1) == 0) {
            func_0x02a2e9f8();
          }
          iVar1 = *(int *)(lVar13 + 8);
          uVar14 = ParticleImage_get_JobParticles_0x600008e(param_3);
          if (iVar1 < 1) {
            func_0x035b3914(uVar14,auStack_240,*(undefined8 *)puVar5);
          }
          else {
            func_0x035b3afc(uVar14,0,1,*(undefined8 *)puVar6);
            puVar9 = (undefined8 *)ParticleImage_get_JobParticles_0x600008e(param_3);
            func_0x05afb2b0(auStack_158,auStack_240,0xe8);
            puVar9 = (undefined8 *)*puVar9;
            if ((*(ushort *)(*(long *)(*(long *)puVar7 + 0x20) + 0x135) & 1) == 0) {
              func_0x02a2e9f8();
            }
            func_0x05afb2b0(*puVar9,auStack_158,0xe8);
          }
        }
        iVar12 = iVar12 + 1;
      } while (param_4 != iVar12);
    }
    return;
  }
LAB_049c3acc:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

