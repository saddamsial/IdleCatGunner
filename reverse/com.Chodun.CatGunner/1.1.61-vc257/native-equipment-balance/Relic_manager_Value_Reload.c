/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b31f8c, Ghidra VA 02c31f8c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Relic_manager_Value_Reload(long param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined8 uVar4;
  undefined *puVar5;
  undefined *puVar6;
  int iVar7;
  long lVar8;
  ulong uVar9;
  undefined8 *puVar10;
  long lVar11;
  uint uVar12;
  undefined8 uStack_130;
  undefined8 uStack_128;
  undefined8 uStack_120;
  undefined8 uStack_118;
  undefined8 uStack_110;
  undefined8 uStack_108;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  
  puVar5 = PTR_DAT_05e5d4d8;
  if ((bRam000000000625c040 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    bRam000000000625c040 = 1;
  }
  lVar8 = *(long *)puVar5;
  uStack_c8 = 0;
  uStack_d0 = 0;
  uStack_b8 = 0;
  uStack_c0 = 0;
  uStack_a8 = 0;
  uStack_b0 = 0;
  uStack_98 = 0;
  uStack_a0 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar5;
  }
  puVar10 = *(undefined8 **)(lVar8 + 0xb8);
  uStack_68 = puVar10[1];
  uStack_70 = *puVar10;
  uStack_58 = puVar10[3];
  uStack_60 = puVar10[2];
  iVar1 = *(int *)(puVar10 + 0xc);
  uStack_88 = puVar10[9];
  uStack_90 = puVar10[8];
  uStack_78 = puVar10[0xb];
  uStack_80 = puVar10[10];
  uStack_a8 = puVar10[5];
  uStack_b0 = puVar10[4];
  uStack_98 = puVar10[7];
  uStack_a0 = puVar10[6];
  InfVal_op_Implicit_0x600003f(&uStack_f0,100,0);
  puVar10 = *(undefined8 **)(*(long *)puVar5 + 0xb8);
  puVar10[1] = uStack_e8;
  *puVar10 = uStack_f0;
  puVar10[3] = uStack_d8;
  puVar10[2] = uStack_e0;
  func_0x029f59f4(*(undefined8 *)(*(long *)puVar5 + 0xb8),0);
  InfVal_op_Implicit_0x600003f(&uStack_110,100,0);
  lVar8 = *(long *)puVar5;
  lVar11 = *(long *)(lVar8 + 0xb8);
  *(undefined8 *)(lVar11 + 0x28) = uStack_108;
  *(undefined8 *)(lVar11 + 0x20) = uStack_110;
  *(undefined8 *)(lVar11 + 0x38) = uStack_f8;
  *(undefined8 *)(lVar11 + 0x30) = uStack_100;
  func_0x029f59f4(*(long *)(lVar8 + 0xb8) + 0x20,0);
  InfVal_op_Implicit_0x600003f(&uStack_130,100,0);
  lVar8 = *(long *)puVar5;
  lVar11 = *(long *)(lVar8 + 0xb8);
  *(undefined8 *)(lVar11 + 0x48) = uStack_128;
  *(undefined8 *)(lVar11 + 0x40) = uStack_130;
  *(undefined8 *)(lVar11 + 0x58) = uStack_118;
  *(undefined8 *)(lVar11 + 0x50) = uStack_120;
  func_0x029f59f4(*(long *)(lVar8 + 0xb8) + 0x40,0);
  uVar4 = _UNK_0116d130;
  lVar8 = *(long *)(*(long *)puVar5 + 0xb8);
  *(undefined8 *)(lVar8 + 0x68) = _UNK_0116d138;
  *(undefined8 *)(lVar8 + 0x60) = uVar4;
  puVar6 = PTR_DAT_05e5d5b0;
  lVar8 = *(long *)(param_1 + 0x20);
  if (lVar8 != 0) {
    uVar12 = 0;
    do {
      if ((int)*(uint *)(lVar8 + 0x18) <= (int)uVar12) {
        lVar8 = *(long *)puVar5;
        if (*(int *)(lVar8 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar8 = *(long *)puVar5;
        }
        uVar9 = InfVal_op_Inequality_0x600007d(*(undefined8 *)(lVar8 + 0xb8),&uStack_70,0);
        if ((uVar9 & 1) == 0) {
          lVar8 = *(long *)puVar5;
          if (*(int *)(lVar8 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar8 = *(long *)puVar5;
          }
          uVar9 = InfVal_op_Inequality_0x600007d(*(long *)(lVar8 + 0xb8) + 0x40,&uStack_90,0);
          if ((uVar9 & 1) == 0) {
            lVar8 = *(long *)puVar5;
            if (*(int *)(lVar8 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar8 = *(long *)puVar5;
            }
            if (*(int *)(*(long *)(lVar8 + 0xb8) + 0x60) == iVar1) goto LAB_02c32450;
          }
        }
        lVar8 = *(long *)(*(long *)(*(long *)puVar6 + 0xb8) + 8);
        if (lVar8 != 0) {
          Cat_manager_Balance_Reload(lVar8,0);
          lVar8 = *(long *)puVar5;
LAB_02c32450:
          if (*(int *)(lVar8 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar8 = *(long *)puVar5;
          }
          uVar9 = InfVal_op_Inequality_0x600007d(*(long *)(lVar8 + 0xb8) + 0x20,&uStack_b0,0);
          if ((uVar9 & 1) != 0) {
            if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            Gamemanager_InvalidateMoneyCache_0x6000071(0);
          }
          return;
        }
        break;
      }
      if (*(uint *)(lVar8 + 0x18) <= uVar12) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar8 = *(long *)(lVar8 + (long)(int)uVar12 * 8 + 0x20);
      if (lVar8 == 0) break;
      if (*(char *)(lVar8 + 0x20) != '\0') {
        uVar2 = *(uint *)(lVar8 + 0x10);
        if ((int)uVar2 < 6) {
          if (uVar2 < 3) {
            if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            Relic_manager_Relic_Value_return_0x60006a3(&uStack_f0,lVar8);
            uStack_c8 = uStack_e8;
            uStack_d0 = uStack_f0;
            uStack_b8 = uStack_d8;
            uStack_c0 = uStack_e0;
            InfVal_op_Addition_0x6000072
                      (&uStack_110,*(undefined8 *)(*(long *)puVar5 + 0xb8),&uStack_d0,0);
            puVar10 = *(undefined8 **)(*(long *)puVar5 + 0xb8);
            puVar10[1] = uStack_108;
            *puVar10 = uStack_110;
            puVar10[3] = uStack_f8;
            puVar10[2] = uStack_100;
            lVar8 = *(long *)(*(long *)puVar5 + 0xb8);
          }
          else {
            if (2 < uVar2 - 3) goto LAB_02c322ac;
            if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            Relic_manager_Relic_Value_return_0x60006a3(&uStack_f0,lVar8);
            uStack_c8 = uStack_e8;
            uStack_d0 = uStack_f0;
            uStack_b8 = uStack_d8;
            uStack_c0 = uStack_e0;
            InfVal_op_Addition_0x6000072
                      (&uStack_110,*(long *)(*(long *)puVar5 + 0xb8) + 0x20,&uStack_d0,0);
            lVar8 = *(long *)puVar5;
            lVar11 = *(long *)(lVar8 + 0xb8);
            *(undefined8 *)(lVar11 + 0x28) = uStack_108;
            *(undefined8 *)(lVar11 + 0x20) = uStack_110;
            *(undefined8 *)(lVar11 + 0x38) = uStack_f8;
            *(undefined8 *)(lVar11 + 0x30) = uStack_100;
            lVar8 = *(long *)(lVar8 + 0xb8) + 0x20;
          }
        }
        else {
          if (8 < (int)uVar2) {
            if ((int)uVar2 < 0xb) {
              if (uVar2 == 9) {
                lVar11 = *(long *)puVar5;
                if (*(int *)(lVar11 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar11 = *(long *)puVar5;
                }
                iVar3 = *(int *)(*(long *)(lVar11 + 0xb8) + 0x60);
                Relic_manager_Relic_Value_return_0x60006a3(&uStack_f0,lVar8);
                uStack_c8 = uStack_e8;
                uStack_d0 = uStack_f0;
                uStack_b8 = uStack_d8;
                uStack_c0 = uStack_e0;
                iVar7 = InfVal_op_Explicit_0x6000056(&uStack_d0,0);
                *(int *)(*(long *)(*(long *)puVar5 + 0xb8) + 0x60) = iVar7 + iVar3;
              }
              else if (uVar2 == 10) {
                lVar11 = *(long *)puVar5;
                if (*(int *)(lVar11 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar11 = *(long *)puVar5;
                }
                iVar3 = *(int *)(*(long *)(lVar11 + 0xb8) + 100);
                Relic_manager_Relic_Value_return_0x60006a3(&uStack_f0,lVar8);
                uStack_c8 = uStack_e8;
                uStack_d0 = uStack_f0;
                uStack_b8 = uStack_d8;
                uStack_c0 = uStack_e0;
                iVar7 = InfVal_op_Explicit_0x6000056(&uStack_d0,0);
                *(int *)(*(long *)(*(long *)puVar5 + 0xb8) + 100) = iVar7 + iVar3;
              }
            }
            else if (uVar2 == 0xb) {
              lVar11 = *(long *)puVar5;
              if (*(int *)(lVar11 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar11 = *(long *)puVar5;
              }
              iVar3 = *(int *)(*(long *)(lVar11 + 0xb8) + 0x68);
              Relic_manager_Relic_Value_return_0x60006a3(&uStack_f0,lVar8);
              uStack_c8 = uStack_e8;
              uStack_d0 = uStack_f0;
              uStack_b8 = uStack_d8;
              uStack_c0 = uStack_e0;
              iVar7 = InfVal_op_Explicit_0x6000056(&uStack_d0,0);
              *(int *)(*(long *)(*(long *)puVar5 + 0xb8) + 0x68) = iVar7 + iVar3;
            }
            else if (uVar2 == 0xc) {
              lVar11 = *(long *)puVar5;
              if (*(int *)(lVar11 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar11 = *(long *)puVar5;
              }
              iVar3 = *(int *)(*(long *)(lVar11 + 0xb8) + 0x6c);
              Relic_manager_Relic_Value_return_0x60006a3(&uStack_f0,lVar8);
              uStack_c8 = uStack_e8;
              uStack_d0 = uStack_f0;
              uStack_b8 = uStack_d8;
              uStack_c0 = uStack_e0;
              iVar7 = InfVal_op_Explicit_0x6000056(&uStack_d0,0);
              *(int *)(*(long *)(*(long *)puVar5 + 0xb8) + 0x6c) = iVar7 + iVar3;
            }
            goto LAB_02c322ac;
          }
          if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          Relic_manager_Relic_Value_return_0x60006a3(&uStack_f0,lVar8);
          uStack_c8 = uStack_e8;
          uStack_d0 = uStack_f0;
          uStack_b8 = uStack_d8;
          uStack_c0 = uStack_e0;
          InfVal_op_Addition_0x6000072
                    (&uStack_110,*(long *)(*(long *)puVar5 + 0xb8) + 0x40,&uStack_d0,0);
          lVar8 = *(long *)puVar5;
          lVar11 = *(long *)(lVar8 + 0xb8);
          *(undefined8 *)(lVar11 + 0x48) = uStack_108;
          *(undefined8 *)(lVar11 + 0x40) = uStack_110;
          *(undefined8 *)(lVar11 + 0x58) = uStack_f8;
          *(undefined8 *)(lVar11 + 0x50) = uStack_100;
          lVar8 = *(long *)(lVar8 + 0xb8) + 0x40;
        }
        func_0x029f59f4(lVar8,0);
      }
LAB_02c322ac:
      lVar8 = *(long *)(param_1 + 0x20);
      uVar12 = uVar12 + 1;
    } while (lVar8 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

