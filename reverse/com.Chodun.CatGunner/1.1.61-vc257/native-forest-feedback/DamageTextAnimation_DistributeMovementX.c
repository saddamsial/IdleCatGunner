/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a82ba4, Ghidra VA 02b82ba4. */

void DamageTextAnimation_DistributeMovementX
               (float param_1,float param_2,undefined4 param_3,undefined4 param_4,long param_5)

{
  long lVar1;
  long *plVar2;
  long lVar3;
  int iVar4;
  long lVar5;
  uint uVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  
  if ((*(long *)(param_5 + 0x40) != 0) &&
     (lVar5 = *(long *)(*(long *)(param_5 + 0x40) + 0x18), lVar5 != 0)) {
    iVar4 = (int)lVar5;
    if (0 < iVar4) {
      lVar5 = 0;
      do {
        uVar6 = (uint)lVar5;
        fVar9 = param_1;
        if (iVar4 != 1) {
          fVar7 = (float)(int)uVar6 / (float)(iVar4 + -1);
          fVar9 = 1.0;
          if (fVar7 <= 1.0) {
            fVar9 = fVar7;
          }
          fVar8 = 0.0;
          if (0.0 <= fVar7) {
            fVar8 = fVar9;
          }
          fVar9 = (param_2 - param_1) * fVar8 + param_1;
        }
        lVar1 = AnimationCurve_Linear_0x6000208(param_3,0,param_4,fVar9,0);
        if (lVar1 == 0) {
LAB_02b82cdc:
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        AnimationCurve_set_preWrapMode_0x600020a(lVar1,8,0);
        AnimationCurve_set_postWrapMode_0x600020c(lVar1,8,0);
        lVar3 = *(long *)(param_5 + 0x40);
        if (lVar3 == 0) goto LAB_02b82cdc;
        if (*(uint *)(lVar3 + 0x18) <= uVar6) {
LAB_02b82ce0:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar3 = *(long *)(lVar3 + lVar5 * 8 + 0x20);
        if (lVar3 == 0) goto LAB_02b82cdc;
        plVar2 = (long *)(lVar3 + 0x10);
        *plVar2 = lVar1;
        Managed_WriteBarrier(plVar2,lVar1);
        lVar1 = *(long *)(param_5 + 0x40);
        if (lVar1 == 0) goto LAB_02b82cdc;
        if (*(uint *)(lVar1 + 0x18) <= uVar6) goto LAB_02b82ce0;
        lVar1 = *(long *)(lVar1 + lVar5 * 8 + 0x20);
        if (lVar1 == 0) goto LAB_02b82cdc;
        lVar5 = lVar5 + 1;
        *(undefined1 *)(lVar1 + 0x30) = 0;
      } while (iVar4 != (int)lVar5);
    }
  }
  return;
}

