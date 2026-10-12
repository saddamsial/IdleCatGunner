/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b664a0, Ghidra VA 02c664a0. */

void Bullet_OnTriggerEnter
               (undefined1 param_1 [16],float param_2,float param_3,long param_4,long param_5)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  ulong uVar4;
  long lVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  undefined4 uVar9;
  float fVar10;
  float fVar11;
  
  if ((bRam000000000625c24d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e639e8);
    func_0x029f5a50(PTR_DAT_05e5d568);
    bRam000000000625c24d = 1;
  }
  if (*(char *)(param_4 + 0x68) != '\0') {
    return;
  }
  if (param_5 != 0) {
    uVar2 = Object_GetInstanceID_0x6000da3(param_5,0);
    if (*(long *)(param_4 + 0xd0) != 0) {
      uVar4 = func_0x04281fa8(*(long *)(param_4 + 0xd0),uVar2,*(undefined8 *)PTR_DAT_05e639e8);
      if ((uVar4 & 1) != 0) {
        return;
      }
      if (*(char *)(param_4 + 0xa4) == '\0') {
        lVar5 = Component_get_transform_0x6000c82(param_4,0);
        if (lVar5 == 0) goto LAB_02c66710;
        fVar6 = (float)Transform_get_position_0x6000f4d(lVar5,0);
        if (*(long *)(param_4 + 0x58) == 0) goto LAB_02c66710;
        fVar10 = param_2;
        fVar11 = param_3;
        fVar7 = (float)Rigidbody_get_linearVelocity_0x6000095(*(long *)(param_4 + 0x58),0);
        fVar8 = (float)Time_get_fixedDeltaTime_0x6000ee9(0);
        fVar6 = fVar6 - fVar7 * fVar8;
        param_2 = param_2 - fVar10 * fVar8;
        param_3 = param_3 - fVar11 * fVar8;
      }
      else {
        fVar6 = *(float *)(param_4 + 0x6c);
        param_2 = *(float *)(param_4 + 0x70);
        param_3 = *(float *)(param_4 + 0x74);
      }
      uVar9 = Collider_ClosestPoint_0x600001a(fVar6,param_2,param_3,param_5,0);
      uVar3 = Component_CompareTag_0x6000ca5(param_5,*(undefined8 *)PTR_DAT_05e5d568,0);
      iVar1 = *(int *)(param_4 + 0x98);
      if (iVar1 < 3) {
        if (iVar1 == 0) {
LAB_02c66654:
          Bullet_HitSingle_0x6000a2b(uVar9,param_2,param_3,param_4,param_5);
          return;
        }
        if (iVar1 == 1) {
          Bullet_HitLaser_0x6000a2c(uVar9,param_2,param_3,param_4,param_5,uVar3 & 1,uVar2);
          return;
        }
        if (iVar1 == 2) {
          Bullet_HitPierce_0x6000a2d(uVar9,param_2,param_3,param_4,param_5,uVar3 & 1,uVar2);
          return;
        }
      }
      else {
        if (iVar1 - 4U < 2) {
          Bullet_HitExplosive_0x6000a2e(uVar9,param_2,param_3,param_4);
          return;
        }
        if (iVar1 == 6) {
          Bullet_HitBlastSniper_0x6000a2f(uVar9,param_2,param_3,param_4,param_5,uVar3 & 1,uVar2);
          return;
        }
        if (iVar1 == 3) goto LAB_02c66654;
      }
      return;
    }
  }
LAB_02c66710:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

