/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b64440, Ghidra VA 02c64440. */

undefined8 _AutoMergeRoutine_d__30_MoveNext(undefined1 param_1 [16],ulong param_2,long param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  byte bVar4;
  undefined8 uVar5;
  ulong uVar6;
  long lVar7;
  long lVar8;
  undefined4 uVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  
  if ((bRam000000000625c243 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5bed0);
    bRam000000000625c243 = 1;
  }
  puVar3 = PTR_DAT_05e5dd38;
  puVar2 = PTR_DAT_05e591c0;
  uVar5 = 0;
  iVar1 = *(int *)(param_3 + 0x10);
  lVar7 = *(long *)(param_3 + 0x20);
  if (iVar1 < 3) {
    if (iVar1 == 0) {
      *(undefined8 *)(param_3 + 0x18) = 0;
      *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
      Managed_WriteBarrier((undefined8 *)(param_3 + 0x18),0);
      uVar5 = 1;
      *(undefined4 *)(param_3 + 0x10) = 1;
    }
    else if ((iVar1 == 1) || (iVar1 == 2)) {
      *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
      while( true ) {
        uVar5 = **(undefined8 **)(*(long *)puVar3 + 0xb8);
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar6 = Object_op_Inequality_0x6000ded(uVar5,0,0);
        if ((uVar6 & 1) == 0) break;
        lVar8 = **(long **)(*(long *)puVar3 + 0xb8);
        if (lVar8 == 0) goto LAB_02c648bc;
        uVar6 = Fish_manager_get_is_AutoMergeAble();
        if (((uVar6 & 1) == 0) || (*(char *)(lVar8 + 0xb0) == '\0')) break;
        if (lVar7 == 0) goto LAB_02c648bc;
        uVar6 = Fish_Tank_IsAnyPendingDelete(lVar7);
        if ((uVar6 & 1) != 0) {
          *(undefined8 *)(param_3 + 0x18) = 0;
          Managed_WriteBarrier((undefined8 *)(param_3 + 0x18),0);
          uVar9 = 2;
          goto LAB_02c6489c;
        }
        uVar6 = Fish_Tank_FindAutoMergePair(lVar7,param_3 + 0x28,param_3 + 0x30);
        if ((uVar6 & 1) == 0) goto LAB_02c64808;
        if (*(long *)(param_3 + 0x30) == 0) goto LAB_02c648bc;
        Fish_Item_BeginAutoMerge(*(long *)(param_3 + 0x30),0);
        if ((*(long *)(param_3 + 0x28) == 0) ||
           (Fish_Item_BeginAutoMerge(*(long *)(param_3 + 0x28),1), *(long *)(param_3 + 0x28) == 0))
        goto LAB_02c648bc;
        uVar9 = Fish_Item_GetPosition();
        *(undefined4 *)(param_3 + 0x38) = uVar9;
        *(int *)(param_3 + 0x3c) = (int)param_2;
        if (*(long *)(param_3 + 0x30) == 0) goto LAB_02c648bc;
        uVar9 = Fish_Item_GetPosition();
        *(undefined4 *)(param_3 + 0x40) = uVar9;
        *(int *)(param_3 + 0x44) = (int)param_2;
        if (*(long *)(param_3 + 0x28) == 0) goto LAB_02c648bc;
        uVar5 = Fish_Item_FaceTowards();
        lVar8 = *(long *)(param_3 + 0x28);
        if (lVar8 == 0) goto LAB_02c648bc;
        uVar9 = *(undefined4 *)(lVar8 + 0x40);
        *(undefined1 *)(param_3 + 0x50) = 0;
        *(undefined4 *)(param_3 + 0x48) = uVar9;
        *(undefined4 *)(param_3 + 0x4c) = 0;
LAB_02c64604:
        uVar6 = Fish_Tank_IsAutoMergeItemValid(uVar5,lVar8,uVar9);
        if (((uVar6 & 1) != 0) &&
           (uVar6 = Fish_Tank_IsAutoMergeItemValid
                              (uVar6,*(undefined8 *)(param_3 + 0x30),*(undefined4 *)(param_3 + 0x48)
                              ), (uVar6 & 1) != 0)) {
          fVar11 = *(float *)(param_3 + 0x4c);
          fVar10 = (float)Time_get_unscaledDeltaTime_0x6000ee8(0);
          fVar11 = fVar11 + fVar10;
          *(float *)(param_3 + 0x4c) = fVar11;
          if (*(long *)(param_3 + 0x28) == 0) goto LAB_02c648bc;
          fVar11 = fVar11 / *(float *)(lVar7 + 0x30);
          fVar10 = 1.0;
          if (fVar11 <= 1.0) {
            fVar10 = fVar11;
          }
          fVar12 = 0.0;
          if (0.0 <= fVar11) {
            fVar12 = fVar10;
          }
          fVar10 = 0.0;
          if (0.0 <= fVar12) {
            fVar10 = fVar12;
          }
          fVar11 = fVar10 * fVar10 * 3.0 - fVar10 * fVar10 * (fVar10 + fVar10);
          fVar11 = fVar11 + (1.0 - fVar11) * 0.0;
          fVar10 = 1.0;
          if (fVar11 <= 1.0) {
            fVar10 = fVar11;
          }
          fVar12 = 0.0;
          if (0.0 <= fVar11) {
            fVar12 = fVar10;
          }
          fVar10 = (float)*(undefined8 *)(param_3 + 0x38);
          fVar13 = (float)((ulong)*(undefined8 *)(param_3 + 0x38) >> 0x20);
          param_2 = (ulong)(uint)(fVar13 + ((float)((ulong)*(undefined8 *)(param_3 + 0x40) >> 0x20)
                                           - fVar13) * fVar12);
          Fish_Item_SetPosition(fVar10 + ((float)*(undefined8 *)(param_3 + 0x40) - fVar10) * fVar12)
          ;
          fVar10 = (float)param_2;
          if (fVar11 < 1.0) {
            if (*(long *)(param_3 + 0x28) == 0) goto LAB_02c648bc;
            fVar11 = (float)Fish_Item_GetPosition();
            fVar12 = *(float *)(param_3 + 0x40);
            fVar13 = *(float *)(param_3 + 0x44);
            if (cRam000000000625c2a2 == '\0') {
              func_0x029f5a50(PTR_DAT_05e59000);
              cRam000000000625c2a2 = '\x01';
            }
            if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            fVar10 = fVar10 - fVar13;
            fVar11 = fVar11 - fVar12;
            param_2 = (ulong)(uint)*(float *)(lVar7 + 0x34);
            if (*(float *)(lVar7 + 0x34) < SQRT(fVar11 * fVar11 + fVar10 * fVar10)) {
              *(undefined8 *)(param_3 + 0x18) = 0;
              Managed_WriteBarrier((undefined8 *)(param_3 + 0x18),0);
              uVar9 = 4;
              goto LAB_02c6489c;
            }
          }
          uVar6 = Fish_Tank_IsAnyPendingDelete(lVar7);
          if ((uVar6 & 1) != 0) {
            *(undefined8 *)(param_3 + 0x18) = 0;
            Managed_WriteBarrier((undefined8 *)(param_3 + 0x18),0);
            uVar9 = 3;
            goto LAB_02c6489c;
          }
          bVar4 = Fish_Tank_FuseItems(lVar7,*(undefined8 *)(param_3 + 0x28),
                                      *(undefined8 *)(param_3 + 0x30));
          *(byte *)(param_3 + 0x50) = bVar4 & 1;
        }
        if (*(char *)(param_3 + 0x50) == '\0') {
          uVar5 = *(undefined8 *)(param_3 + 0x28);
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar6 = Object_op_Inequality_0x6000ded(uVar5,0,0);
          if ((uVar6 & 1) != 0) {
            if (*(long *)(param_3 + 0x28) == 0) goto LAB_02c648bc;
            if (*(char *)(*(long *)(param_3 + 0x28) + 0x86) != '\0') {
              Fish_Item_EndAutoMerge();
            }
          }
          uVar5 = *(undefined8 *)(param_3 + 0x30);
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar6 = Object_op_Inequality_0x6000ded(uVar5,0,0);
          if ((uVar6 & 1) != 0) {
            if (*(long *)(param_3 + 0x30) == 0) goto LAB_02c648bc;
            if (*(char *)(*(long *)(param_3 + 0x30) + 0x86) != '\0') {
              Fish_Item_EndAutoMerge();
            }
          }
        }
        fVar10 = *(float *)(lVar7 + 0x38);
        if (0.0 < fVar10) {
          uVar5 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5bed0);
          WaitForSecondsRealtime__ctor_0x6000e2a(fVar10,uVar5,0);
          *(undefined8 *)(param_3 + 0x18) = uVar5;
          Managed_WriteBarrier((undefined8 *)(param_3 + 0x18),uVar5);
          uVar9 = 5;
LAB_02c6489c:
          *(undefined4 *)(param_3 + 0x10) = uVar9;
          return 1;
        }
LAB_02c647d8:
        *(undefined8 *)(param_3 + 0x28) = 0;
        Managed_WriteBarrier((undefined8 *)(param_3 + 0x28),0);
        *(undefined8 *)(param_3 + 0x30) = 0;
        Managed_WriteBarrier((undefined8 *)(param_3 + 0x30),0);
        *(undefined8 *)(param_3 + 0x38) = 0;
        *(undefined8 *)(param_3 + 0x40) = 0;
      }
      if (lVar7 != 0) {
LAB_02c64808:
        *(undefined8 *)(lVar7 + 0x58) = 0;
        Managed_WriteBarrier((undefined8 *)(lVar7 + 0x58),0);
        return 0;
      }
      goto LAB_02c648bc;
    }
  }
  else {
    if (iVar1 - 3U < 2) {
      *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
      if (lVar7 != 0) {
        lVar8 = *(long *)(param_3 + 0x28);
        uVar9 = *(undefined4 *)(param_3 + 0x48);
        goto LAB_02c64604;
      }
LAB_02c648bc:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (iVar1 == 5) {
      *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
      goto LAB_02c647d8;
    }
  }
  return uVar5;
}

