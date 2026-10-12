/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bad8b4, Ghidra VA 02cad8b4. */

uint Tree_manager_Tree_Batch(long param_1)

{
  undefined8 *puVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  undefined *puVar7;
  undefined *puVar8;
  long lVar9;
  long lVar10;
  long lVar11;
  undefined8 uVar12;
  ulong uVar13;
  long lVar14;
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
  
  puVar8 = PTR_DAT_05e63090;
  if ((bRam000000000625c523 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63090);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c523 = 1;
  }
  iVar2 = *(int *)(param_1 + 0x2c);
  iVar6 = *(int *)(param_1 + 0x28) * 10 + 0x1e;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  if (99 < iVar6) {
    iVar6 = 100;
  }
  if (iVar6 < 0x1f) {
    iVar6 = 0x1e;
  }
  Tree_manager_GetStageHealth_0x6000efb(&uStack_b0,param_1);
  uStack_68 = uStack_a8;
  uStack_70 = uStack_b0;
  uStack_58 = uStack_98;
  uStack_60 = uStack_a0;
  Tree_manager_GetStageMoney_0x6000efc(&uStack_d0,param_1,*(undefined4 *)(param_1 + 0x28));
  uStack_88 = uStack_c8;
  uStack_90 = uStack_d0;
  uStack_78 = uStack_b8;
  uStack_80 = uStack_c0;
  lVar9 = func_0x029f5b40(*(undefined8 *)puVar8,4);
  puVar7 = PTR_DAT_05e5dc20;
  if (lVar9 != 0) {
    if (0 < *(int *)(lVar9 + 0x18)) {
      uVar13 = 0;
      lVar14 = 0x20;
      do {
        lVar10 = *(long *)puVar7;
        if (*(int *)(lVar10 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar10 = *(long *)puVar7;
        }
        lVar10 = **(long **)(lVar10 + 0xb8);
        if (lVar10 == 0) goto LAB_02cadb30;
        if (*(uint *)(lVar10 + 0x18) <= uVar13) goto LAB_02cadc34;
        InfVal_op_Multiply_0x6000074(&uStack_b0,lVar10 + lVar14,&uStack_70,0);
        if (*(uint *)(lVar9 + 0x18) <= uVar13) goto LAB_02cadc34;
        puVar1 = (undefined8 *)(lVar9 + lVar14);
        puVar1[1] = uStack_a8;
        *puVar1 = uStack_b0;
        puVar1[3] = uStack_98;
        puVar1[2] = uStack_a0;
        func_0x029f59f4(puVar1,0);
        uVar13 = uVar13 + 1;
        lVar14 = lVar14 + 0x20;
      } while ((long)uVar13 < (long)*(int *)(lVar9 + 0x18));
    }
    lVar14 = func_0x029f5b40(*(undefined8 *)puVar8,4);
    if (lVar14 != 0) {
      if (0 < *(int *)(lVar14 + 0x18)) {
        uVar13 = 0;
        lVar10 = 0x20;
        do {
          lVar11 = *(long *)puVar7;
          if (*(int *)(lVar11 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar11 = *(long *)puVar7;
          }
          lVar11 = *(long *)(*(long *)(lVar11 + 0xb8) + 8);
          if (lVar11 == 0) goto LAB_02cadb30;
          if (*(uint *)(lVar11 + 0x18) <= uVar13) goto LAB_02cadc34;
          InfVal_op_Multiply_0x6000074(&uStack_b0,lVar11 + lVar10,&uStack_90,0);
          if (*(uint *)(lVar14 + 0x18) <= uVar13) goto LAB_02cadc34;
          puVar1 = (undefined8 *)(lVar14 + lVar10);
          puVar1[1] = uStack_a8;
          *puVar1 = uStack_b0;
          puVar1[3] = uStack_98;
          puVar1[2] = uStack_a0;
          func_0x029f59f4(puVar1,0);
          uVar13 = uVar13 + 1;
          lVar10 = lVar10 + 0x20;
        } while ((long)uVar13 < (long)*(int *)(lVar14 + 0x18));
      }
      lVar10 = *(long *)(param_1 + 0xf8);
      if (lVar10 != 0) {
        iVar2 = iVar2 + 1;
        uVar13 = 0;
        while (uVar3 = *(uint *)(lVar10 + 0x18), (long)uVar13 < (long)(int)uVar3) {
          if ((long)uVar13 < (long)iVar2) {
            if (uVar3 <= uVar13) goto LAB_02cadc34;
            lVar10 = *(long *)(lVar10 + uVar13 * 8 + 0x20);
            if (lVar10 == 0) goto LAB_02cadb30;
            Tree_Grid_Spawn_0x6000ef0
                      (lVar10,iVar6,*(undefined4 *)(param_1 + 0x2c),*(undefined4 *)(param_1 + 0x28),
                       lVar9,lVar14);
          }
          else {
            if (uVar3 <= uVar13) goto LAB_02cadc34;
            lVar10 = *(long *)(lVar10 + uVar13 * 8 + 0x20);
            if ((lVar10 == 0) ||
               (lVar10 = Component_get_gameObject_0x6000c83(lVar10,0), lVar10 == 0))
            goto LAB_02cadb30;
            GameObject_SetActive_0x6000cfe(lVar10,0,0);
          }
          lVar10 = *(long *)(param_1 + 0xf8);
          uVar13 = uVar13 + 1;
          if (lVar10 == 0) goto LAB_02cadb30;
        }
        if (*(long *)(param_1 + 0x108) != 0) {
          Transform_set_localPosition_0x6000f50
                    (0,0,(float)(iVar2 * 0x32 + 0x3c),*(long *)(param_1 + 0x108),0);
          if (*(long *)(param_1 + 0x100) != 0) {
            iVar4 = *(int *)(param_1 + 0x2c);
            lVar10 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x100),0);
            if (lVar10 != 0) {
              GameObject_SetActive_0x6000cfe(lVar10,iVar4 == 4,0);
              if (iVar4 == 4) {
                if ((*(uint *)(lVar9 + 0x18) & 0xfffffffc) == 0) goto LAB_02cadc34;
                uStack_a8 = *(undefined8 *)(lVar9 + 0x88);
                uStack_b0 = *(undefined8 *)(lVar9 + 0x80);
                uStack_98 = *(undefined8 *)(lVar9 + 0x98);
                uStack_a0 = *(undefined8 *)(lVar9 + 0x90);
                lVar9 = *(long *)(param_1 + 0x100);
                if ((*(uint *)(lVar14 + 0x18) & 0xfffffffc) == 0) {
LAB_02cadc34:
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                uStack_c8 = *(undefined8 *)(lVar14 + 0x88);
                uStack_d0 = *(undefined8 *)(lVar14 + 0x80);
                uStack_b8 = *(undefined8 *)(lVar14 + 0x98);
                uStack_c0 = *(undefined8 *)(lVar14 + 0x90);
                uVar5 = *(undefined4 *)(param_1 + 0x28);
                if (*(int *)(*(long *)puVar7 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                uVar12 = Tree_manager_Sprite_return_0x6000f0e(uVar5,3);
                if (lVar9 == 0) goto LAB_02cadb30;
                uStack_e8 = uStack_a8;
                uStack_f0 = uStack_b0;
                uStack_d8 = uStack_98;
                uStack_e0 = uStack_a0;
                uStack_108 = uStack_c8;
                uStack_110 = uStack_d0;
                uStack_f8 = uStack_b8;
                uStack_100 = uStack_c0;
                Tree_Boss_Spawn_0x6000eec(lVar9,&uStack_f0,&uStack_110,uVar12);
                uVar3 = iVar6 * iVar2 | 1;
              }
              else {
                uVar3 = iVar6 * iVar2;
              }
              return uVar3;
            }
          }
        }
      }
    }
  }
LAB_02cadb30:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

