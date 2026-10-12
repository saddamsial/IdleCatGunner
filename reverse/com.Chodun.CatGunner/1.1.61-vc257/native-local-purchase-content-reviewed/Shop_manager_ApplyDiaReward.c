/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b98490, Ghidra VA 02c98490. */

undefined8 Shop_manager_ApplyDiaReward(long param_1,undefined8 param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  ulong uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  long lVar8;
  long lVar9;
  uint uVar10;
  int iStack_34;
  
  puVar3 = PTR_DAT_05e641e8;
  if ((bRam000000000625c44b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e641d0);
    func_0x029f5a50(PTR_DAT_05e641e8);
    func_0x029f5a50(PTR_DAT_05e641f0);
    func_0x029f5a50(PTR_DAT_05e641f8);
    func_0x029f5a50(PTR_DAT_05e64230);
    bRam000000000625c44b = 1;
  }
  uVar5 = String_op_Equality_0x600025a(param_2,*(undefined8 *)puVar3,0);
  if ((uVar5 & 1) == 0) {
    uVar5 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e641f8,0);
    if ((uVar5 & 1) == 0) {
      uVar5 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e641d0,0);
      if ((uVar5 & 1) == 0) {
        uVar5 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e64230,0);
        if ((uVar5 & 1) == 0) {
          uVar5 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e641f0,0);
          if ((uVar5 & 1) == 0) {
            return 0;
          }
          uVar10 = 4;
        }
        else {
          uVar10 = 3;
        }
      }
      else {
        uVar10 = 2;
      }
    }
    else {
      uVar10 = 1;
    }
  }
  else {
    uVar10 = 0;
  }
  puVar3 = PTR_DAT_05e5d920;
  if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Shop_manager_Is_Dia_FirstBuy_0x6000d5e(uVar10);
  puVar2 = PTR_DAT_05e5d338;
  lVar8 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x30);
  if (lVar8 == 0) {
LAB_02c98724:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (*(uint *)(lVar8 + 0x18) <= uVar10) {
LAB_02c98720:
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
  uVar5 = (ulong)uVar10;
  *(char *)(param_1 + 0x3c) = (char)(uVar4 & 1);
  iVar1 = *(int *)(lVar8 + uVar5 * 4 + 0x20) << (ulong)(uVar4 & 1);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  lVar8 = Gamemanager_Get_Dia_0x6000078(iVar1,0);
  if ((uVar4 & 1) != 0) {
    lVar8 = *(long *)puVar3;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar8 = *(long *)puVar3;
    }
    lVar9 = *(long *)(*(long *)(lVar8 + 0xb8) + 0x28);
    if (lVar9 == 0) goto LAB_02c98724;
    if (*(uint *)(lVar9 + 0x18) <= uVar10) goto LAB_02c98720;
    *(undefined1 *)(lVar9 + uVar5 + 0x20) = 1;
  }
  lVar9 = *(long *)(param_1 + 0xb0);
  if ((lVar9 != 0) && ((int)uVar10 < (int)*(uint *)(lVar9 + 0x18))) {
    if (*(uint *)(lVar9 + 0x18) <= uVar10) goto LAB_02c98720;
    Shop_manager_SpawnDiaFx_0x6000d76(lVar8,*(undefined8 *)(lVar9 + uVar5 * 8 + 0x20));
  }
  SaveSystem_Save_0x600048a(0);
  uVar6 = Alarm_get_PurchaseDia_0x60012f1(0);
  iStack_34 = iVar1;
  uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
  uVar6 = String_Format_0x600029c(uVar6,uVar7,0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar3);
  }
  Shop_manager_SafeAlert_0x6000da6(uVar6);
  Shop_manager_UI_Reload_DiaPanels_0x6000d75(param_1);
  return 1;
}

