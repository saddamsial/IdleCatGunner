/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba157c, Ghidra VA 02ca157c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong StarGem_Pig_ApplyReward(long param_1,uint param_2)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  int iVar5;
  long lVar6;
  long *plVar7;
  long lVar8;
  undefined8 uVar9;
  ulong uVar10;
  undefined4 uVar11;
  undefined1 auVar12 [16];
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  uint uStack_44;
  
  if ((bRam000000000625c485 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e59768);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    func_0x029f5a50(PTR_DAT_05e648c8);
    bRam000000000625c485 = 1;
  }
  puVar4 = PTR_DAT_05e5e3e0;
  uVar2 = param_2 - 1;
  if (2 < uVar2) {
LAB_02ca190c:
    return (ulong)(uVar2 < 3);
  }
  StarGem_Pig_Season_Check_0x6000df4(param_1);
  lVar6 = *(long *)puVar4;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar4;
  }
  lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 8);
  if (lVar6 != 0) {
    if (*(uint *)(lVar6 + 0x18) <= uVar2) goto LAB_02ca192c;
    uVar11 = *(undefined4 *)(lVar6 + (ulong)uVar2 * 4 + 0x20);
    if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Gamemanager_Get_StarGem_0x6000080(uVar11,0);
    if (*(uint *)(param_1 + 0x20) == param_2) {
      iVar1 = *(int *)(param_1 + 0x28) + 1;
      *(undefined4 *)(param_1 + 0x24) = 0;
      *(int *)(param_1 + 0x28) = iVar1;
      if ((param_2 < 3) &&
         (iVar5 = StarGem_Pig_get_PurchaseMax_Now_0x6000ded(param_1), iVar5 <= iVar1)) {
        *(undefined4 *)(param_1 + 0x28) = 0;
        *(int *)(param_1 + 0x20) = *(int *)(param_1 + 0x20) + 1;
      }
    }
    plVar7 = (long *)func_0x029f5b40(*(undefined8 *)PTR_DAT_05e59768,4);
    puVar3 = PTR_DAT_05e58a10;
    uStack_44 = param_2;
    lVar6 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_44);
    if (plVar7 != (long *)0x0) {
      if ((lVar6 != 0) &&
         (lVar8 = func_0x029f5bd4(lVar6,*(undefined8 *)(*plVar7 + 0x40)), lVar8 == 0)) {
LAB_02ca1934:
        uVar9 = func_0x029f5d20();
        auVar12 = func_0x029f5bc0(uVar9,0);
        lVar8 = auVar12._8_8_;
        lVar6 = auVar12._0_8_;
        if ((bRam000000000625c486 & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05e5e3e0);
          bRam000000000625c486 = 1;
        }
        puVar4 = PTR_DAT_05e5e3e0;
        if ((lVar8 == 0) || (iVar1 = *(int *)(lVar8 + 0x3f0), iVar1 < 1)) {
          *(undefined4 *)(lVar6 + 0x28) = 0;
          uVar11 = 0xffffffff;
          *(undefined8 *)(lVar6 + 0x20) = _UNK_0116fdf0;
        }
        else {
          if (2 < iVar1) {
            iVar1 = 3;
          }
          *(int *)(lVar6 + 0x20) = iVar1;
          uVar9 = NEON_smax(*(undefined8 *)(lVar8 + 0x3f4),0,4);
          *(undefined8 *)(lVar6 + 0x24) = uVar9;
          uVar11 = *(undefined4 *)(lVar8 + 0x3fc);
        }
        *(undefined4 *)(lVar6 + 0x2c) = uVar11;
        StarGem_Pig_Season_Check_0x6000df4(lVar6);
        uVar10 = *(ulong *)puVar4;
        if (*(int *)(uVar10 + 0xe4) == 0) {
          func_0x029f5bd0();
          uVar10 = *(ulong *)puVar4;
        }
        lVar6 = *(long *)(*(long *)(uVar10 + 0xb8) + 0x18);
        if (lVar6 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02ca1a08. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          uVar10 = (**(code **)(lVar6 + 0x18))
                             (*(undefined8 *)(lVar6 + 0x40),*(undefined8 *)(lVar6 + 0x28));
          return uVar10;
        }
        return uVar10;
      }
      if ((int)plVar7[3] != 0) {
        plVar7[4] = lVar6;
        Managed_WriteBarrier(plVar7 + 4,lVar6);
        uStack_48 = uVar11;
        lVar6 = func_0x029f5bd8(*(undefined8 *)(puVar3 + 0x48),&uStack_48);
        if ((lVar6 != 0) &&
           (lVar8 = func_0x029f5bd4(lVar6,*(undefined8 *)(*plVar7 + 0x40)), lVar8 == 0))
        goto LAB_02ca1934;
        if ((*(uint *)(plVar7 + 3) & 0xfffffffe) != 0) {
          plVar7[5] = lVar6;
          Managed_WriteBarrier(plVar7 + 5,lVar6);
          uStack_4c = *(undefined4 *)(param_1 + 0x20);
          lVar6 = func_0x029f5bd8(*(undefined8 *)(puVar3 + 0x48),&uStack_4c);
          if ((lVar6 != 0) &&
             (lVar8 = func_0x029f5bd4(lVar6,*(undefined8 *)(*plVar7 + 0x40)), lVar8 == 0))
          goto LAB_02ca1934;
          if (2 < *(uint *)(plVar7 + 3)) {
            plVar7[6] = lVar6;
            Managed_WriteBarrier(plVar7 + 6,lVar6);
            uStack_50 = *(undefined4 *)(param_1 + 0x28);
            lVar6 = func_0x029f5bd8(*(undefined8 *)(puVar3 + 0x48),&uStack_50);
            if ((lVar6 != 0) &&
               (lVar8 = func_0x029f5bd4(lVar6,*(undefined8 *)(*plVar7 + 0x40)), lVar8 == 0))
            goto LAB_02ca1934;
            if ((*(uint *)(plVar7 + 3) & 0xfffffffc) != 0) {
              plVar7[7] = lVar6;
              Managed_WriteBarrier(plVar7 + 7,lVar6);
              uVar9 = String_Format_0x600029f(*(undefined8 *)PTR_DAT_05e648c8,plVar7,0);
              if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
                func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
              }
              Debug_Log_0x600033c(uVar9,0);
              SaveSystem_Save_0x600048a(0);
              if (cRam000000000625ba57 == '\0') {
                func_0x029f5a50(PTR_DAT_05e5dd70);
                cRam000000000625ba57 = '\x01';
              }
              puVar3 = PTR_DAT_05e5dd70;
              uVar9 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
              if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar10 = Object_op_Inequality_0x6000ded(uVar9,0,0);
              if ((uVar10 & 1) != 0) {
                if (cRam000000000625ba57 == '\0') {
                  func_0x029f5a50(PTR_DAT_05e5dd70);
                  cRam000000000625ba57 = '\x01';
                }
                if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02ca1930;
                Sound_manager_PlaySfx_0x600054a
                          (0x3f800000,**(long **)(*(long *)puVar3 + 0xb8),7,0,0);
              }
              lVar6 = *(long *)puVar4;
              if (*(int *)(lVar6 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar6 = *(long *)puVar4;
              }
              lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x18);
              if (lVar6 != 0) {
                (**(code **)(lVar6 + 0x18))
                          (*(undefined8 *)(lVar6 + 0x40),*(undefined8 *)(lVar6 + 0x28));
              }
              goto LAB_02ca190c;
            }
          }
        }
      }
LAB_02ca192c:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
  }
LAB_02ca1930:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

