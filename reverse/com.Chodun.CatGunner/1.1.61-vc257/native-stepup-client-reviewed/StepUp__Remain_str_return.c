/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba37d8, Ghidra VA 02ca37d8. */

void StepUp__Remain_str_return(undefined8 param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  long *plVar4;
  long lVar5;
  long lVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  double dVar10;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  int iStack_34;
  undefined8 uStack_28;
  
  puVar3 = PTR_DAT_05e5a180;
  uStack_28 = param_1;
  if ((bRam000000000625c4a0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59768);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e63f08);
    func_0x029f5a50(PTR_DAT_05e63f10);
    bRam000000000625c4a0 = 1;
  }
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar10 = (double)TimeSpan_get_TotalDays_0x6000a72(&uStack_28,0);
  iVar1 = -0x80000000;
  if (dVar10 != INFINITY) {
    iVar1 = (int)dVar10;
  }
  if (iVar1 < 1) {
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iStack_34 = TimeSpan_get_Hours_0x6000a6f(&uStack_28,0);
    puVar3 = PTR_DAT_05e58a10;
    uVar9 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
    uStack_38 = TimeSpan_get_Minutes_0x6000a70(&uStack_28,0);
    uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar3 + 0x48),&uStack_38);
    uStack_3c = TimeSpan_get_Seconds_0x6000a71(&uStack_28,0);
    uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar3 + 0x48),&uStack_3c);
    String_Format_0x600029e(*(undefined8 *)PTR_DAT_05e63f10,uVar9,uVar7,uVar8,0);
    return;
  }
  plVar4 = (long *)func_0x029f5b40(*(undefined8 *)PTR_DAT_05e59768,4);
  puVar2 = PTR_DAT_05e58a10;
  iStack_34 = iVar1;
  lVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
  if (plVar4 != (long *)0x0) {
    if ((lVar5 == 0) || (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)
       ) {
      if ((int)plVar4[3] == 0) goto LAB_02ca3ac8;
      plVar4[4] = lVar5;
      Managed_WriteBarrier(plVar4 + 4,lVar5);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uStack_38 = TimeSpan_get_Hours_0x6000a6f(&uStack_28,0);
      lVar5 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_38);
      if ((lVar5 == 0) ||
         (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)) {
        if ((*(uint *)(plVar4 + 3) & 0xfffffffe) == 0) goto LAB_02ca3ac8;
        plVar4[5] = lVar5;
        Managed_WriteBarrier(plVar4 + 5,lVar5);
        uStack_3c = TimeSpan_get_Minutes_0x6000a70(&uStack_28,0);
        lVar5 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_3c);
        if ((lVar5 == 0) ||
           (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)) {
          if (*(uint *)(plVar4 + 3) < 3) {
LAB_02ca3ac8:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          plVar4[6] = lVar5;
          Managed_WriteBarrier(plVar4 + 6,lVar5);
          uStack_40 = TimeSpan_get_Seconds_0x6000a71(&uStack_28,0);
          lVar5 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_40);
          if ((lVar5 == 0) ||
             (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar4 + 0x40)), lVar6 != 0)) {
            puVar3 = PTR_DAT_05e63f08;
            if ((*(uint *)(plVar4 + 3) & 0xfffffffc) != 0) {
              plVar4[7] = lVar5;
              Managed_WriteBarrier(plVar4 + 7,lVar5);
              String_Format_0x600029f(*(undefined8 *)puVar3,plVar4,0);
              return;
            }
            goto LAB_02ca3ac8;
          }
        }
      }
    }
    uVar9 = func_0x029f5d20();
    func_0x029f5bc0(uVar9,0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

