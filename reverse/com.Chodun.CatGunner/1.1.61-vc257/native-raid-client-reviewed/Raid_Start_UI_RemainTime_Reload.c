/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5bed0, Ghidra VA 02c5bed0. */

void Raid_Start_UI_RemainTime_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  long *plVar4;
  long lVar5;
  long lVar6;
  undefined8 uVar7;
  long *plVar8;
  double dVar9;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  int iStack_34;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1e4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59768);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e63630);
    bRam000000000625c1e4 = 1;
  }
  puVar3 = PTR_DAT_05e5a180;
  puVar2 = PTR_DAT_05e59768;
  uStack_28 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uStack_28 = Raid_manager_Season_Remain_Duration(0);
  plVar8 = *(long **)(param_1 + 0x58);
  plVar4 = (long *)func_0x029f5b40(*(undefined8 *)puVar2,4);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar3);
  }
  dVar9 = (double)TimeSpan_get_TotalDays_0x6000a72(&uStack_28,0);
  puVar1 = PTR_DAT_05e58a10;
  iStack_34 = -0x80000000;
  if (dVar9 != INFINITY) {
    iStack_34 = (int)dVar9;
  }
  lVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
  if (plVar4 != (long *)0x0) {
    if ((lVar5 == 0) || (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)
       ) {
      if ((int)plVar4[3] == 0) goto LAB_02c5c150;
      plVar4[4] = lVar5;
      Managed_WriteBarrier(plVar4 + 4,lVar5);
      uStack_38 = TimeSpan_get_Hours_0x6000a6f(&uStack_28,0);
      lVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_38);
      if ((lVar5 == 0) ||
         (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)) {
        if ((*(uint *)(plVar4 + 3) & 0xfffffffe) == 0) goto LAB_02c5c150;
        plVar4[5] = lVar5;
        Managed_WriteBarrier(plVar4 + 5,lVar5);
        uStack_3c = TimeSpan_get_Minutes_0x6000a70(&uStack_28,0);
        lVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_3c);
        if ((lVar5 == 0) ||
           (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)) {
          if (*(uint *)(plVar4 + 3) < 3) {
LAB_02c5c150:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          plVar4[6] = lVar5;
          Managed_WriteBarrier(plVar4 + 6,lVar5);
          uStack_40 = TimeSpan_get_Seconds_0x6000a71(&uStack_28,0);
          lVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_40);
          if ((lVar5 == 0) ||
             (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)) {
            puVar1 = PTR_DAT_05e63630;
            if ((*(uint *)(plVar4 + 3) & 0xfffffffc) != 0) {
              plVar4[7] = lVar5;
              Managed_WriteBarrier(plVar4 + 7,lVar5);
              uVar7 = String_Format_0x600029f(*(undefined8 *)puVar1,plVar4,0);
              if (plVar8 != (long *)0x0) {
                (**(code **)(*plVar8 + 0x558))(plVar8,uVar7,*(undefined8 *)(*plVar8 + 0x560));
                return;
              }
              goto LAB_02c5c160;
            }
            goto LAB_02c5c150;
          }
        }
      }
    }
    uVar7 = func_0x029f5d20();
    func_0x029f5bc0(uVar7,0);
  }
LAB_02c5c160:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

