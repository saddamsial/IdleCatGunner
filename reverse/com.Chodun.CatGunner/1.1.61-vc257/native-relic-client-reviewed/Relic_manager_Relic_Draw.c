/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b32858, Ghidra VA 02c32858. */

void Relic_manager_Relic_Draw(long param_1,undefined4 param_2,ulong param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  long *plVar4;
  long lVar5;
  undefined8 uVar6;
  undefined8 *puVar7;
  undefined8 *puVar8;
  ulong uVar9;
  undefined8 uVar10;
  ulong *puVar11;
  ulong uVar12;
  ulong uVar13;
  undefined1 auVar14 [12];
  
  puVar2 = PTR_DAT_05e5dd28;
  uVar9 = param_3 & 0xffffffff;
  if ((bRam000000000625c042 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e63098);
    bRam000000000625c042 = 1;
  }
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar3 = Adventure_manager_CoreCount_return(param_2,0);
  puVar1 = PTR_DAT_05e5d540;
  if ((int)param_3 * 0x14 <= iVar3) {
    iVar3 = (int)param_3 * 0x14;
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Adventure_manager_Core_Lose(param_2,iVar3,0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    AppsFlyerInit_SendLog_AbliCraft_0x600022e(param_2,iVar3,0);
    while (plVar4 = (long *)func_0x029f5b40(*(undefined8 *)PTR_DAT_05e63098,uVar9 & 0xffffffff),
          0 < (int)uVar9) {
      uVar12 = 0;
      uVar13 = uVar9 & 0xffffffff;
      puVar11 = (ulong *)(plVar4 + 4);
      while( true ) {
        uVar9 = Relic_manager_Relic_Random_Get(param_1,param_2);
        if (plVar4 == (long *)0x0) goto LAB_02c329ec;
        if ((uVar9 != 0) &&
           (lVar5 = func_0x029f5bd4(uVar9,*(undefined8 *)(*plVar4 + 0x40)), lVar5 == 0)) break;
        if (*(uint *)(plVar4 + 3) <= uVar12) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        *puVar11 = uVar9;
        Managed_WriteBarrier(puVar11,uVar9);
        uVar12 = uVar12 + 1;
        puVar11 = puVar11 + 1;
        if (uVar13 == uVar12) goto LAB_02c329b4;
      }
      uVar6 = func_0x029f5d20();
      auVar14 = func_0x029f5bc0(uVar6,0);
      uVar6 = auVar14._0_8_;
      if (auVar14._8_4_ != 1) {
LAB_02c32aa8:
        func_0x02ae4a1c(uVar6);
        func_0x02629f70();
        lVar5 = Relic_manager_Relic_PickByType();
        if (lVar5 != 0) {
          if (*(char *)(lVar5 + 0x20) == '\0') {
            *(undefined1 *)(lVar5 + 0x20) = 1;
          }
          else {
            *(int *)(lVar5 + 0x1c) = *(int *)(lVar5 + 0x1c) + 1;
          }
          return;
        }
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      puVar7 = (undefined8 *)func_0x05afb1e0(uVar6);
      uVar6 = func_0x029f5a64(PTR_DAT_05e58b30);
      uVar12 = func_0x029f6104(uVar6,*(undefined8 *)*puVar7);
      if ((uVar12 & 1) == 0) {
        puVar8 = (undefined8 *)func_0x05afb210(8);
        *puVar8 = *puVar7;
        uVar6 = func_0x05afb220(puVar8,&PTR__ZTVN10__cxxabiv117__class_type_infoE_16__05b01708,0);
        func_0x05afb1f0();
        goto LAB_02c32aa8;
      }
      uVar10 = *puVar7;
      func_0x05afb1f0();
      uVar6 = func_0x029f5a64(PTR_DAT_05e630a0);
      uVar6 = String_Format_0x600029c(uVar6,uVar10,0);
      lVar5 = func_0x029f5a64(PTR_DAT_05e58f08);
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Debug_LogWarning_0x6000346(uVar6,0);
    }
LAB_02c329b4:
    if (*(long *)(param_1 + 0x40) == 0) {
LAB_02c329ec:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Relic_Draw_Panel_Reload(*(long *)(param_1 + 0x40),plVar4,0);
    Relic_manager_Value_Reload(param_1);
  }
  Relic_manager_UI_Reload(param_1);
  return;
}

