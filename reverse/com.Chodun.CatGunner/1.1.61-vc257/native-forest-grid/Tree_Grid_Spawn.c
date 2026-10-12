/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bac2d8, Ghidra VA 02cac2d8. */

void Tree_Grid_Spawn(long param_1,int param_2,undefined4 param_3,undefined4 param_4,long param_5,
                    long param_6)

{
  long lVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  long lVar5;
  undefined8 uVar6;
  long lVar7;
  ulong uVar8;
  int iVar9;
  int iVar10;
  ulong uVar11;
  int iVar12;
  int iVar13;
  float fVar14;
  float extraout_s0;
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
  
  if ((bRam000000000625c514 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e750);
    func_0x029f5a50(PTR_DAT_05e5e758);
    func_0x029f5a50(PTR_DAT_05e639e0);
    func_0x029f5a50(PTR_DAT_05e639e8);
    func_0x029f5a50(PTR_DAT_05e63a28);
    func_0x029f5a50(PTR_DAT_05e63a20);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e64a80);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c514 = 1;
  }
  if (*(long *)(param_1 + 0x20) != 0) {
    uVar11 = *(ulong *)(*(long *)(param_1 + 0x20) + 0x18);
    iVar10 = (int)uVar11;
    iVar13 = param_2;
    if (iVar10 <= param_2) {
      iVar13 = iVar10;
    }
    lVar5 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d790,uVar11 & 0xffffffff);
    if (0 < iVar10) {
      if (lVar5 == 0) goto LAB_02cac680;
      uVar4 = *(uint *)(lVar5 + 0x18);
      uVar8 = 0;
      do {
        if (uVar4 == uVar8) goto LAB_02cac684;
        *(int *)(lVar5 + 0x20 + uVar8 * 4) = (int)uVar8;
        uVar8 = uVar8 + 1;
      } while ((uVar11 & 0xffffffff) != uVar8);
    }
    puVar3 = PTR_DAT_05e64a80;
    puVar2 = PTR_DAT_05e5e750;
    uVar6 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5e758);
    func_0x03cf77bc(uVar6,param_1,*(undefined8 *)puVar3,0);
    func_0x02f4973c(lVar5,uVar6,*(undefined8 *)puVar2);
    lVar7 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e63a20);
    func_0x042818a4(lVar7,*(undefined8 *)PTR_DAT_05e63a28);
    puVar2 = PTR_DAT_05e639e0;
    if ((-1 < param_2) && (0 < iVar13)) {
      if (lVar5 == 0) goto LAB_02cac680;
      iVar9 = 0;
      iVar12 = 0;
      do {
        uVar4 = 0;
        if (iVar13 != 0) {
          uVar4 = iVar9 / iVar13;
        }
        if (*(uint *)(lVar5 + 0x18) <= uVar4) goto LAB_02cac684;
        if (lVar7 == 0) goto LAB_02cac680;
        func_0x04282ae4(lVar7,*(undefined4 *)(lVar5 + (long)(int)uVar4 * 4 + 0x20),
                        *(undefined8 *)puVar2);
        iVar12 = iVar12 + 1;
        iVar9 = iVar9 + iVar10;
      } while (iVar12 < iVar13);
    }
    puVar2 = PTR_DAT_05e639e8;
    if (0 < iVar10) {
      if (lVar7 == 0) goto LAB_02cac680;
      uVar11 = 0;
      iVar13 = 0;
      do {
        uVar4 = func_0x04281fa8(lVar7,uVar11 & 0xffffffff,*(undefined8 *)puVar2);
        lVar5 = *(long *)(param_1 + 0x20);
        if (lVar5 == 0) goto LAB_02cac680;
        if (*(uint *)(lVar5 + 0x18) <= (uint)uVar11) goto LAB_02cac684;
        lVar5 = *(long *)(lVar5 + uVar11 * 8 + 0x20);
        if ((lVar5 == 0) || (lVar5 = Component_get_gameObject_0x6000c83(lVar5,0), lVar5 == 0))
        goto LAB_02cac680;
        GameObject_SetActive_0x6000cfe(lVar5,uVar4 & 1,0);
        if ((uVar4 & 1) != 0) {
          fVar14 = (float)Random_Range_0x6000ba6(-*(float *)(param_1 + 0x28),0);
          uVar6 = Random_Range_0x6000ba6(-*(float *)(param_1 + 0x28),0);
          uVar4 = Tree_Grid_Degree_Random_return(uVar6,param_3);
          lVar5 = *(long *)(param_1 + 0x20);
          if (lVar5 == 0) goto LAB_02cac680;
          if (*(uint *)(lVar5 + 0x18) <= (uint)uVar11) {
LAB_02cac684:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          if (param_5 == 0) goto LAB_02cac680;
          if (*(uint *)(param_5 + 0x18) <= uVar4) goto LAB_02cac684;
          lVar1 = param_5 + (long)(int)uVar4 * 0x20;
          lVar5 = *(long *)(lVar5 + uVar11 * 8 + 0x20);
          uStack_88 = *(undefined8 *)(lVar1 + 0x28);
          uStack_90 = *(undefined8 *)(lVar1 + 0x20);
          uStack_78 = *(undefined8 *)(lVar1 + 0x38);
          uStack_80 = *(undefined8 *)(lVar1 + 0x30);
          if (param_6 == 0) goto LAB_02cac680;
          if (*(uint *)(param_6 + 0x18) <= uVar4) goto LAB_02cac684;
          lVar1 = param_6 + (long)(int)uVar4 * 0x20;
          uStack_a8 = *(undefined8 *)(lVar1 + 0x28);
          uStack_b0 = *(undefined8 *)(lVar1 + 0x20);
          uStack_98 = *(undefined8 *)(lVar1 + 0x38);
          uStack_a0 = *(undefined8 *)(lVar1 + 0x30);
          if (*(int *)(*(long *)PTR_DAT_05e5dc20 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar6 = Tree_manager_Sprite_return_0x6000f0e(param_4,uVar4);
          if (lVar5 == 0) goto LAB_02cac680;
          uStack_c8 = uStack_88;
          uStack_d0 = uStack_90;
          uStack_b8 = uStack_78;
          uStack_c0 = uStack_80;
          uStack_e8 = uStack_a8;
          uStack_f0 = uStack_b0;
          uStack_d8 = uStack_98;
          uStack_e0 = uStack_a0;
          Tree_Spawn(fVar14 + (float)(iVar13 + (int)((uVar11 & 0xffffffff) / 10) * -0x32),0,
                     extraout_s0 + (float)((int)((uVar11 & 0xffffffff) / 10) * 5),lVar5,&uStack_d0,
                     &uStack_f0,uVar6);
        }
        uVar11 = uVar11 + 1;
        iVar13 = iVar13 + 5;
      } while (iVar10 != (int)uVar11);
    }
    lVar5 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar5 != 0) {
      GameObject_SetActive_0x6000cfe(lVar5,1,0);
      return;
    }
  }
LAB_02cac680:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

