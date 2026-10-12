/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3aa78, Ghidra VA 02c3aa78. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_HandleMovement(undefined1 param_1 [16],float param_2,float param_3,long param_4)

{
  int iVar1;
  undefined *puVar2;
  bool bVar3;
  bool bVar4;
  ulong uVar5;
  long lVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  undefined4 *puVar9;
  undefined8 uVar10;
  long lVar11;
  float fVar12;
  undefined4 uVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined4 uVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  
  if ((bRam000000000625c0a9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e61878);
    bRam000000000625c0a9 = 1;
  }
  if (*(long *)(param_4 + 0x28) != 0) {
    fVar12 = (float)Joystick_get_Direction_0x6000129(*(long *)(param_4 + 0x28),0);
    fVar15 = _UNK_0116c200;
    if (*(long *)(param_4 + 0x38) != 0) {
      param_2 = param_2 * param_2;
      fVar17 = fVar12 * fVar12 + param_2;
      Animator_SetBool_0x6000033
                (*(long *)(param_4 + 0x38),*(undefined8 *)PTR_DAT_05e61878,_UNK_0116c200 < fVar17,0)
      ;
      if (fVar17 <= fVar15) {
        lVar6 = *(long *)(param_4 + 0x30);
        if (lVar6 != 0) {
          Rigidbody_get_linearVelocity_0x6000095(lVar6,0);
          fVar15 = 0.0;
          Rigidbody_set_linearVelocity_0x6000096(0,lVar6,0);
          uVar10 = *(undefined8 *)(param_4 + 0x1e0);
          if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar5 = Object_op_Inequality_0x6000ded(uVar10,0,0);
          puVar2 = PTR_DAT_05e631d8;
          if ((uVar5 & 1) == 0) {
            return;
          }
          lVar6 = *(long *)PTR_DAT_05e631d8;
          if (*(int *)(lVar6 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar6 = *(long *)puVar2;
          }
          if (*(long *)(param_4 + 0x1e0) != 0) {
            lVar6 = *(long *)(lVar6 + 0xb8);
            uVar13 = *(undefined4 *)(lVar6 + 0x44);
            uVar18 = *(undefined4 *)(lVar6 + 0x48);
            uVar19 = *(undefined4 *)(lVar6 + 0x4c);
            uVar20 = *(undefined4 *)(lVar6 + 0x50);
            lVar6 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0);
            if (lVar6 != 0) {
              fVar14 = (float)Transform_get_position_0x6000f4d(lVar6,0);
              fVar12 = param_2;
              fVar17 = fVar15;
              lVar6 = Component_get_transform_0x6000c82(param_4,0);
              if (lVar6 != 0) {
                fVar16 = (float)Transform_get_position_0x6000f4d(lVar6,0);
                fVar15 = (float)Quaternion_op_Multiply_0x6000a54
                                          (uVar13,uVar18,uVar19,uVar20,fVar14 - fVar16,
                                           param_2 - fVar12,fVar15 - fVar17,0);
                lVar6 = *(long *)puVar2;
                lVar11 = *(long *)(param_4 + 0xb8);
                iVar1 = *(int *)(lVar6 + 0xe4);
                *(bool *)(param_4 + 0x1f8) = 0.0 > fVar15 || fVar15 == 0.0;
                if (0.0 <= fVar15 && fVar15 != 0.0) {
                  if (iVar1 == 0) {
                    func_0x029f5bd0();
                    lVar6 = *(long *)puVar2;
                  }
                  lVar6 = *(long *)(lVar6 + 0xb8);
                  puVar7 = (undefined4 *)(lVar6 + 0x2c);
                  puVar8 = (undefined4 *)(lVar6 + 0x30);
                  puVar9 = (undefined4 *)(lVar6 + 0x34);
                }
                else {
                  if (iVar1 == 0) {
                    func_0x029f5bd0();
                    lVar6 = *(long *)puVar2;
                  }
                  lVar6 = *(long *)(lVar6 + 0xb8);
                  puVar7 = (undefined4 *)(lVar6 + 0x20);
                  puVar8 = (undefined4 *)(lVar6 + 0x24);
                  puVar9 = (undefined4 *)(lVar6 + 0x28);
                }
                if (lVar11 != 0) {
                  Transform_set_localEulerAngles_0x6000f54(*puVar7,*puVar8,*puVar9,lVar11,0);
                  return;
                }
              }
            }
          }
        }
      }
      else {
        uVar10 = *(undefined8 *)(param_4 + 0x1e0);
        if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar5 = Object_op_Inequality_0x6000ded(uVar10,0,0);
        puVar2 = PTR_DAT_05e631d8;
        if ((uVar5 & 1) == 0) {
          bVar3 = false;
          bVar4 = true;
          if (!NAN(fVar12)) {
            bVar3 = fVar12 == 0.0;
            bVar4 = 0.0 <= fVar12;
          }
        }
        else {
          lVar6 = *(long *)PTR_DAT_05e631d8;
          if (*(int *)(lVar6 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar6 = *(long *)puVar2;
          }
          if (*(long *)(param_4 + 0x1e0) == 0) goto LAB_02c3aeb0;
          lVar6 = *(long *)(lVar6 + 0xb8);
          uVar13 = *(undefined4 *)(lVar6 + 0x44);
          uVar18 = *(undefined4 *)(lVar6 + 0x48);
          uVar19 = *(undefined4 *)(lVar6 + 0x4c);
          uVar20 = *(undefined4 *)(lVar6 + 0x50);
          lVar6 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0);
          if (lVar6 == 0) goto LAB_02c3aeb0;
          fVar17 = (float)Transform_get_position_0x6000f4d(lVar6,0);
          fVar15 = param_2;
          fVar12 = param_3;
          lVar6 = Component_get_transform_0x6000c82(param_4,0);
          if (lVar6 == 0) goto LAB_02c3aeb0;
          fVar14 = (float)Transform_get_position_0x6000f4d(lVar6,0);
          fVar15 = (float)Quaternion_op_Multiply_0x6000a54
                                    (uVar13,uVar18,uVar19,uVar20,fVar17 - fVar14,param_2 - fVar15,
                                     param_3 - fVar12,0);
          bVar4 = 0.0 <= fVar15;
          bVar3 = fVar15 == 0.0;
        }
        *(bool *)(param_4 + 0x1f8) = !bVar4 || bVar3;
        puVar2 = PTR_DAT_05e631d8;
        lVar11 = *(long *)(param_4 + 0xb8);
        lVar6 = *(long *)PTR_DAT_05e631d8;
        if (!bVar4 || bVar3) {
          if (*(int *)(lVar6 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar6 = *(long *)puVar2;
          }
          lVar6 = *(long *)(lVar6 + 0xb8);
          puVar7 = (undefined4 *)(lVar6 + 0x20);
          puVar8 = (undefined4 *)(lVar6 + 0x24);
          puVar9 = (undefined4 *)(lVar6 + 0x28);
        }
        else {
          if (*(int *)(lVar6 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar6 = *(long *)puVar2;
          }
          lVar6 = *(long *)(lVar6 + 0xb8);
          puVar7 = (undefined4 *)(lVar6 + 0x2c);
          puVar8 = (undefined4 *)(lVar6 + 0x30);
          puVar9 = (undefined4 *)(lVar6 + 0x34);
        }
        if (lVar11 != 0) {
          Transform_set_localEulerAngles_0x6000f54(*puVar7,*puVar8,*puVar9,lVar11,0);
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          Quaternion_Internal_FromEulerRad_0x6000a4b(0,_UNK_0116c0e0,0,0);
          fVar15 = (float)Quaternion_op_Multiply_0x6000a54(0);
          lVar6 = *(long *)(param_4 + 0x30);
          if (lVar6 != 0) {
            fVar12 = *(float *)(param_4 + 0x20);
            Rigidbody_get_linearVelocity_0x6000095(lVar6,0);
            Rigidbody_set_linearVelocity_0x6000096(fVar15 * fVar12,lVar6,0);
            return;
          }
        }
      }
    }
  }
LAB_02c3aeb0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

