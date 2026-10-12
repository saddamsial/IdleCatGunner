/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5412c, Ghidra VA 02c5412c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Raid_Mission_manager_Balance_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long *plVar3;
  long lVar4;
  long lVar5;
  undefined8 uVar6;
  
  puVar2 = PTR_DAT_05e635f8;
  puVar1 = PTR_DAT_05e635f0;
  if ((bRam000000000625c177 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e635f0);
    func_0x029f5a50(PTR_DAT_05e635f8);
    bRam000000000625c177 = 1;
  }
  plVar3 = (long *)func_0x029f5b40(*(undefined8 *)puVar1,8);
  lVar4 = func_0x029f5cec(*(undefined8 *)puVar2);
  Object__ctor_0x600100e(lVar4,0);
  uVar6 = _UNK_01170310;
  if (lVar4 == 0) {
LAB_02c5448c:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  *(undefined4 *)(lVar4 + 0x18) = 300;
  *(undefined8 *)(lVar4 + 0x10) = uVar6;
  if (plVar3 == (long *)0x0) goto LAB_02c5448c;
  lVar5 = func_0x029f5bd4(lVar4,*(undefined8 *)(*plVar3 + 0x40));
  if (lVar5 != 0) {
    if ((int)plVar3[3] == 0) goto LAB_02c5449c;
    plVar3[4] = lVar4;
    Managed_WriteBarrier(plVar3 + 4,lVar4);
    lVar4 = func_0x029f5cec(*(undefined8 *)puVar2);
    Object__ctor_0x600100e(lVar4,0);
    uVar6 = _UNK_0116f920;
    if (lVar4 == 0) goto LAB_02c5448c;
    *(undefined4 *)(lVar4 + 0x18) = 500;
    *(undefined8 *)(lVar4 + 0x10) = uVar6;
    lVar5 = func_0x029f5bd4(lVar4,*(undefined8 *)(*plVar3 + 0x40));
    if (lVar5 != 0) {
      if ((*(uint *)(plVar3 + 3) & 0xfffffffe) == 0) goto LAB_02c5449c;
      plVar3[5] = lVar4;
      Managed_WriteBarrier(plVar3 + 5,lVar4);
      lVar4 = func_0x029f5cec(*(undefined8 *)puVar2);
      Object__ctor_0x600100e(lVar4,0);
      uVar6 = _UNK_0116fc20;
      if (lVar4 == 0) goto LAB_02c5448c;
      *(undefined4 *)(lVar4 + 0x18) = 800;
      *(undefined8 *)(lVar4 + 0x10) = uVar6;
      lVar5 = func_0x029f5bd4(lVar4,*(undefined8 *)(*plVar3 + 0x40));
      if (lVar5 != 0) {
        if (*(uint *)(plVar3 + 3) < 3) goto LAB_02c5449c;
        plVar3[6] = lVar4;
        Managed_WriteBarrier(plVar3 + 6,lVar4);
        lVar4 = func_0x029f5cec(*(undefined8 *)puVar2);
        Object__ctor_0x600100e(lVar4,0);
        if (lVar4 == 0) goto LAB_02c5448c;
        *(undefined4 *)(lVar4 + 0x18) = 200;
        *(undefined8 *)(lVar4 + 0x10) = 0x100000001;
        lVar5 = func_0x029f5bd4(lVar4,*(undefined8 *)(*plVar3 + 0x40));
        if (lVar5 != 0) {
          if ((*(uint *)(plVar3 + 3) & 0xfffffffc) == 0) goto LAB_02c5449c;
          plVar3[7] = lVar4;
          Managed_WriteBarrier(plVar3 + 7,lVar4);
          lVar4 = func_0x029f5cec(*(undefined8 *)puVar2);
          Object__ctor_0x600100e(lVar4,0);
          uVar6 = _UNK_011703c8;
          if (lVar4 == 0) goto LAB_02c5448c;
          *(undefined4 *)(lVar4 + 0x18) = 300;
          *(undefined8 *)(lVar4 + 0x10) = uVar6;
          lVar5 = func_0x029f5bd4(lVar4,*(undefined8 *)(*plVar3 + 0x40));
          if (lVar5 != 0) {
            if (*(uint *)(plVar3 + 3) < 5) goto LAB_02c5449c;
            plVar3[8] = lVar4;
            Managed_WriteBarrier(plVar3 + 8,lVar4);
            lVar4 = func_0x029f5cec(*(undefined8 *)puVar2);
            Object__ctor_0x600100e(lVar4,0);
            uVar6 = _UNK_01170198;
            if (lVar4 == 0) goto LAB_02c5448c;
            *(undefined4 *)(lVar4 + 0x18) = 400;
            *(undefined8 *)(lVar4 + 0x10) = uVar6;
            lVar5 = func_0x029f5bd4(lVar4,*(undefined8 *)(*plVar3 + 0x40));
            if (lVar5 != 0) {
              if (*(uint *)(plVar3 + 3) < 6) goto LAB_02c5449c;
              plVar3[9] = lVar4;
              Managed_WriteBarrier(plVar3 + 9,lVar4);
              lVar4 = func_0x029f5cec(*(undefined8 *)puVar2);
              Object__ctor_0x600100e(lVar4,0);
              uVar6 = _UNK_0116fc28;
              if (lVar4 == 0) goto LAB_02c5448c;
              *(undefined4 *)(lVar4 + 0x18) = 500;
              *(undefined8 *)(lVar4 + 0x10) = uVar6;
              lVar5 = func_0x029f5bd4(lVar4,*(undefined8 *)(*plVar3 + 0x40));
              if (lVar5 != 0) {
                if (*(uint *)(plVar3 + 3) < 7) goto LAB_02c5449c;
                plVar3[10] = lVar4;
                Managed_WriteBarrier(plVar3 + 10,lVar4);
                lVar4 = func_0x029f5cec(*(undefined8 *)puVar2);
                Object__ctor_0x600100e(lVar4,0);
                uVar6 = _UNK_0116ff48;
                if (lVar4 == 0) goto LAB_02c5448c;
                *(undefined4 *)(lVar4 + 0x18) = 600;
                *(undefined8 *)(lVar4 + 0x10) = uVar6;
                lVar5 = func_0x029f5bd4(lVar4,*(undefined8 *)(*plVar3 + 0x40));
                if (lVar5 != 0) {
                  if ((*(uint *)(plVar3 + 3) & 0xfffffff8) != 0) {
                    plVar3[0xb] = lVar4;
                    Managed_WriteBarrier(plVar3 + 0xb,lVar4);
                    *(long *)(param_1 + 0x20) = (long)plVar3;
                    Managed_WriteBarrier((long *)(param_1 + 0x20),plVar3);
                    Raid_Mission_manager_EnsureArrays(param_1);
                    return;
                  }
                  goto LAB_02c5449c;
                }
              }
            }
          }
        }
      }
    }
  }
  uVar6 = func_0x029f5d20();
  func_0x029f5bc0(uVar6,0);
LAB_02c5449c:
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

