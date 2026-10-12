/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a84020, Ghidra VA 02b84020. */

void DamageTextObject_InitSprites(long param_1,undefined8 param_2,long param_3)

{
  long *plVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uVar7;
  long lVar8;
  long lVar9;
  long *plVar10;
  long *plVar11;
  int iVar12;
  
  lVar8 = DamageTextMeshManager_get_Instance_0x60000f4();
  if (lVar8 != 0) {
    lVar8 = DamageTextMeshManager_RequestDamageTextMesh_0x60000f9
                      (lVar8,*(undefined4 *)(param_1 + 0x28),param_2);
    *(long *)(param_1 + 0x48) = lVar8;
    Managed_WriteBarrier((long *)(param_1 + 0x48),lVar8);
    if (param_3 != 0) {
      if (0 < *(int *)(param_3 + 0x10)) {
        iVar12 = 0;
        plVar1 = (long *)(param_1 + 0x80);
        do {
          lVar9 = DamageTextSpriteManager_get_Instance_0x6000105();
          if (lVar9 == 0) goto LAB_02b84190;
          lVar9 = DamageTextSpriteManager_RequestSpriteInfo_0x6000108();
          uVar5 = *(undefined4 *)(param_1 + 0x28);
          uVar7 = String_get_Chars_0x6000310(param_3,iVar12,0);
          if (lVar9 == 0) goto LAB_02b84190;
          DamageTextSprite_InitChar_0x600010c(lVar9,uVar5,param_2,uVar7);
          iVar2 = *(int *)(param_1 + 0x50);
          iVar3 = *(int *)(param_1 + 0x54);
          iVar6 = *(int *)(param_1 + 0x58);
          *(undefined4 *)(lVar9 + 0x34) = 0;
          iVar4 = *(int *)(lVar9 + 0x3c);
          *(int *)(param_1 + 0x50) = *(int *)(lVar9 + 0x38) + iVar2 + iVar6;
          *(float *)(lVar9 + 0x30) = (float)iVar2;
          if (iVar3 < iVar4) {
            *(int *)(param_1 + 0x54) = iVar4;
          }
          plVar10 = plVar1;
          plVar11 = (long *)(param_1 + 0x78);
          if (*(long *)(param_1 + 0x78) != 0) {
            if (*plVar1 == 0) goto LAB_02b84190;
            plVar10 = (long *)(*plVar1 + 0x10);
            plVar11 = plVar1;
          }
          *plVar10 = lVar9;
          Managed_WriteBarrier(plVar10,lVar9);
          *plVar11 = lVar9;
          Managed_WriteBarrier(plVar11,lVar9);
          if (lVar8 == 0) goto LAB_02b84190;
          DamageTextMesh_AddSpriteToMesh_0x60000ed(lVar8,lVar9);
          iVar12 = iVar12 + 1;
        } while (iVar12 < *(int *)(param_3 + 0x10));
      }
      lVar8 = *(long *)(param_1 + 0x78);
      if (lVar8 != 0) {
        iVar12 = *(int *)(param_1 + 0x50);
        do {
          *(float *)(lVar8 + 0x30) = *(float *)(lVar8 + 0x30) - (float)iVar12 * 0.5;
          lVar8 = *(long *)(lVar8 + 0x10);
        } while (lVar8 != 0);
      }
      return;
    }
  }
LAB_02b84190:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

