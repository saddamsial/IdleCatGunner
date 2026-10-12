/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b558b0, Ghidra VA 02c558b0. */

void Raid_Mission_UI_Remain_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long *plVar4;
  long lVar5;
  long lVar6;
  long *plVar7;
  undefined8 uVar8;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c18f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59768);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e63630);
    bRam000000000625c18f = 1;
  }
  uVar8 = *(undefined8 *)(param_1 + 0x28);
  uStack_28 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar8,0,0);
  puVar2 = PTR_DAT_05e5a180;
  puVar1 = PTR_DAT_05e59768;
  if ((uVar3 & 1) != 0) {
    return;
  }
  uStack_28 = Raid_Mission_manager_get_Season_Remain();
  plVar7 = *(long **)(param_1 + 0x28);
  plVar4 = (long *)func_0x029f5b40(*(undefined8 *)puVar1,4);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uStack_34 = TimeSpan_get_Days_0x6000a6e(&uStack_28,0);
  puVar1 = PTR_DAT_05e58a10;
  lVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_34);
  if (plVar4 != (long *)0x0) {
    if ((lVar5 == 0) || (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)
       ) {
      if ((int)plVar4[3] == 0) goto LAB_02c55b30;
      plVar4[4] = lVar5;
      Managed_WriteBarrier(plVar4 + 4,lVar5);
      uStack_38 = TimeSpan_get_Hours_0x6000a6f(&uStack_28,0);
      lVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_38);
      if ((lVar5 == 0) ||
         (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)) {
        if ((*(uint *)(plVar4 + 3) & 0xfffffffe) == 0) goto LAB_02c55b30;
        plVar4[5] = lVar5;
        Managed_WriteBarrier(plVar4 + 5,lVar5);
        uStack_3c = TimeSpan_get_Minutes_0x6000a70(&uStack_28,0);
        lVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_3c);
        if ((lVar5 == 0) ||
           (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)) {
          if (*(uint *)(plVar4 + 3) < 3) {
LAB_02c55b30:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          plVar4[6] = lVar5;
          Managed_WriteBarrier(plVar4 + 6,lVar5);
          uStack_40 = TimeSpan_get_Seconds_0x6000a71(&uStack_28,0);
          lVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_40);
          if ((lVar5 == 0) ||
             (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)) {
            if ((*(uint *)(plVar4 + 3) & 0xfffffffc) != 0) {
              plVar4[7] = lVar5;
              Managed_WriteBarrier(plVar4 + 7,lVar5);
              uVar8 = String_Format_0x600029f(*(undefined8 *)PTR_DAT_05e63630,plVar4,0);
              if (plVar7 != (long *)0x0) {
                (**(code **)(*plVar7 + 0x558))(plVar7,uVar8,*(undefined8 *)(*plVar7 + 0x560));
                return;
              }
              goto LAB_02c55b40;
            }
            goto LAB_02c55b30;
          }
        }
      }
    }
    uVar8 = func_0x029f5d20();
    func_0x029f5bc0(uVar8,0);
  }
LAB_02c55b40:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

