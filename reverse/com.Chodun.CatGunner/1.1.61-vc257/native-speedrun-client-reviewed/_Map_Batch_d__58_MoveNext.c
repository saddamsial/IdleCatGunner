/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bab320, Ghidra VA 02cab320. */

undefined4 _Map_Batch_d__58_MoveNext(long param_1)

{
  undefined8 *puVar1;
  undefined4 uVar2;
  undefined *puVar3;
  undefined *puVar4;
  uint uVar5;
  long lVar6;
  long lVar7;
  undefined8 uVar8;
  int iVar9;
  long lVar10;
  long lVar11;
  long *plVar12;
  ulong uVar13;
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
  
  if ((bRam000000000625c50a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63090);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c50a = 1;
  }
  puVar3 = PTR_DAT_05e5dc20;
  uStack_58 = 0;
  uStack_60 = 0;
  lVar11 = *(long *)(param_1 + 0x20);
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  if (*(int *)(param_1 + 0x10) == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_02cab708;
  }
  if (*(int *)(param_1 + 0x10) != 0) {
    return 0;
  }
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  if ((lVar11 != 0) && (*(long *)(lVar11 + 0xd0) != 0)) {
    GameObject_SetActive_0x6000cfe(*(long *)(lVar11 + 0xd0),1,0);
    *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(lVar11 + 0x5c);
    SpeedRun_manager_Tree_Batch(lVar11);
    lVar6 = *(long *)puVar3;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar3;
    }
    lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x10);
    if ((lVar6 != 0) && (lVar10 = *(long *)(lVar6 + 0xf0), lVar10 != 0)) {
      uVar5 = *(int *)(lVar11 + 0x30) % 10;
      if (*(uint *)(lVar10 + 0x18) <= uVar5) {
LAB_02cab764:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(long *)(lVar11 + 0xd8) != 0) {
        SpriteRenderer_set_sprite_0x6000197
                  (*(long *)(lVar11 + 0xd8),*(undefined8 *)(lVar10 + (long)(int)uVar5 * 8 + 0x20),0)
        ;
        Tree_manager_GetStageHealth_0x6000efb(&uStack_b0,lVar6,*(undefined4 *)(lVar11 + 0x30));
        uStack_68 = uStack_a8;
        uStack_70 = uStack_b0;
        uStack_58 = uStack_98;
        uStack_60 = uStack_a0;
        Tree_manager_GetStageMoney_0x6000efc(&uStack_d0,lVar6,*(undefined4 *)(lVar11 + 0x30));
        puVar4 = PTR_DAT_05e63090;
        uStack_88 = uStack_c8;
        uStack_90 = uStack_d0;
        uStack_78 = uStack_b8;
        uStack_80 = uStack_c0;
        lVar6 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e63090,4);
        plVar12 = (long *)(param_1 + 0x30);
        *plVar12 = lVar6;
        Managed_WriteBarrier(plVar12,lVar6);
        lVar6 = *plVar12;
        if (lVar6 != 0) {
          uVar13 = 0;
          lVar10 = 0x20;
          do {
            if ((long)*(int *)(lVar6 + 0x18) <= (long)uVar13) {
              lVar6 = func_0x029f5b40(*(undefined8 *)puVar4,4);
              plVar12 = (long *)(param_1 + 0x38);
              *plVar12 = lVar6;
              Managed_WriteBarrier(plVar12,lVar6);
              lVar6 = *plVar12;
              if (lVar6 != 0) {
                uVar13 = 0;
                lVar10 = 0x20;
                goto LAB_02cab558;
              }
              break;
            }
            lVar7 = *(long *)puVar3;
            if (*(int *)(lVar7 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar7 = *(long *)puVar3;
            }
            lVar7 = **(long **)(lVar7 + 0xb8);
            if (lVar7 == 0) break;
            if ((*(uint *)(lVar7 + 0x18) <= uVar13) ||
               (InfVal_op_Multiply_0x6000074(&uStack_b0,lVar7 + lVar10,&uStack_70,0),
               *(uint *)(lVar6 + 0x18) <= uVar13)) goto LAB_02cab764;
            puVar1 = (undefined8 *)(lVar6 + lVar10);
            lVar10 = lVar10 + 0x20;
            uVar13 = uVar13 + 1;
            puVar1[1] = uStack_a8;
            *puVar1 = uStack_b0;
            puVar1[3] = uStack_98;
            puVar1[2] = uStack_a0;
            Managed_WriteBarrier(puVar1,0);
            lVar6 = *plVar12;
          } while (lVar6 != 0);
        }
      }
    }
  }
LAB_02cab760:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
  while( true ) {
    if ((*(uint *)(lVar7 + 0x18) <= uVar13) ||
       (InfVal_op_Multiply_0x6000074(&uStack_b0,lVar7 + lVar10,&uStack_90,0),
       *(uint *)(lVar6 + 0x18) <= uVar13)) goto LAB_02cab764;
    puVar1 = (undefined8 *)(lVar6 + lVar10);
    lVar10 = lVar10 + 0x20;
    uVar13 = uVar13 + 1;
    puVar1[1] = uStack_a8;
    *puVar1 = uStack_b0;
    puVar1[3] = uStack_98;
    puVar1[2] = uStack_a0;
    Managed_WriteBarrier(puVar1,0);
    lVar6 = *plVar12;
    if (lVar6 == 0) break;
LAB_02cab558:
    if ((long)*(int *)(lVar6 + 0x18) <= (long)uVar13) {
      iVar9 = 0;
      *(undefined8 *)(param_1 + 0x40) = 0;
      goto LAB_02cab714;
    }
    lVar7 = *(long *)puVar3;
    if (*(int *)(lVar7 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar7 = *(long *)puVar3;
    }
    lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 8);
    if (lVar7 == 0) break;
  }
  goto LAB_02cab760;
LAB_02cab714:
  if (*(int *)(param_1 + 0x28) <= iVar9) {
    return 0;
  }
  uVar5 = Random_Range_0x6000ba7(0,3,0);
  if ((lVar11 == 0) || (lVar6 = *(long *)(lVar11 + 0x20), lVar6 == 0)) goto LAB_02cab760;
  if (*(uint *)(lVar6 + 0x18) <= *(uint *)(param_1 + 0x44)) goto LAB_02cab764;
  lVar10 = *(long *)(param_1 + 0x30);
  if (lVar10 == 0) goto LAB_02cab760;
  if (*(uint *)(lVar10 + 0x18) <= uVar5) goto LAB_02cab764;
  lVar10 = lVar10 + (long)(int)uVar5 * 0x20;
  lVar7 = *(long *)(lVar6 + (long)(int)*(uint *)(param_1 + 0x44) * 8 + 0x20);
  lVar6 = *(long *)(param_1 + 0x38);
  uStack_a8 = *(undefined8 *)(lVar10 + 0x28);
  uStack_b0 = *(undefined8 *)(lVar10 + 0x20);
  uStack_98 = *(undefined8 *)(lVar10 + 0x38);
  uStack_a0 = *(undefined8 *)(lVar10 + 0x30);
  if (lVar6 == 0) goto LAB_02cab760;
  if (*(uint *)(lVar6 + 0x18) <= uVar5) goto LAB_02cab764;
  lVar6 = lVar6 + (long)(int)uVar5 * 0x20;
  uVar2 = *(undefined4 *)(lVar11 + 0x30);
  uStack_c8 = *(undefined8 *)(lVar6 + 0x28);
  uStack_d0 = *(undefined8 *)(lVar6 + 0x20);
  uStack_b8 = *(undefined8 *)(lVar6 + 0x38);
  uStack_c0 = *(undefined8 *)(lVar6 + 0x30);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar8 = Tree_manager_Sprite_return_0x6000f0e(uVar2,uVar5);
  if (lVar7 == 0) goto LAB_02cab760;
  uStack_e8 = uStack_a8;
  uStack_f0 = uStack_b0;
  uStack_d8 = uStack_98;
  uStack_e0 = uStack_a0;
  uStack_108 = uStack_c8;
  uStack_110 = uStack_d0;
  uStack_f8 = uStack_b8;
  uStack_100 = uStack_c0;
  Tree_SpeedRun_Spawn(lVar7,&uStack_f0,&uStack_110,uVar8);
  lVar6 = *(long *)(lVar11 + 0x20);
  if (lVar6 == 0) goto LAB_02cab760;
  if (*(uint *)(lVar6 + 0x18) <= *(uint *)(param_1 + 0x44)) goto LAB_02cab764;
  lVar6 = *(long *)(lVar6 + (long)(int)*(uint *)(param_1 + 0x44) * 8 + 0x20);
  if ((lVar6 == 0) || (lVar6 = Component_get_gameObject_0x6000c83(lVar6,0), lVar6 == 0))
  goto LAB_02cab760;
  GameObject_SetActive_0x6000cfe(lVar6,1,0);
  iVar9 = *(int *)(param_1 + 0x40) + 1;
  *(int *)(param_1 + 0x40) = iVar9;
  if (*(int *)(lVar11 + 0x88) <= iVar9) {
    *(undefined8 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x40) = 0;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
    *(undefined4 *)(param_1 + 0x10) = 1;
    return 1;
  }
LAB_02cab708:
  iVar9 = *(int *)(param_1 + 0x44) + 1;
  *(int *)(param_1 + 0x44) = iVar9;
  goto LAB_02cab714;
}

