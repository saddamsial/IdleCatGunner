/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b562c8, Ghidra VA 02c562c8. */

void Raid_Ingame_UI_Level_Reload(long param_1,int param_2)

{
  uint uVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  long lVar5;
  uint uVar6;
  long *plVar7;
  int iStack_24;
  
  puVar3 = PTR_DAT_05e61f18;
  if ((bRam000000000625c192 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e61f18);
    bRam000000000625c192 = 1;
  }
  plVar7 = *(long **)(param_1 + 0x28);
  iStack_24 = param_2;
  uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_24);
  uVar4 = String_Format_0x600029c(*(undefined8 *)puVar3,uVar4,0);
  if (plVar7 != (long *)0x0) {
    (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
    lVar5 = *(long *)(param_1 + 0x60);
    if ((lVar5 == 0) || (*(long *)(lVar5 + 0x18) == 0)) {
      return;
    }
    iVar2 = 0;
    uVar6 = (uint)*(long *)(lVar5 + 0x18);
    if (uVar6 != 0) {
      iVar2 = (param_2 + -1) / (int)uVar6;
    }
    uVar1 = (param_2 + -1) - iVar2 * uVar6;
    if (uVar6 <= uVar1) {
LAB_02c563ec:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    plVar7 = *(long **)(param_1 + 0x50);
    if (plVar7 != (long *)0x0) {
      lVar5 = lVar5 + (long)(int)uVar1 * 0x10;
      (**(code **)(*plVar7 + 0x2a8))
                (*(undefined4 *)(lVar5 + 0x20),*(undefined4 *)(lVar5 + 0x24),
                 *(undefined4 *)(lVar5 + 0x28),*(undefined4 *)(lVar5 + 0x2c),plVar7,
                 *(undefined8 *)(*plVar7 + 0x2b0));
      lVar5 = *(long *)(param_1 + 0x60);
      if (lVar5 != 0) {
        iVar2 = 0;
        if (uVar6 != 0) {
          iVar2 = param_2 / (int)uVar6;
        }
        uVar6 = param_2 - iVar2 * uVar6;
        if (*(uint *)(lVar5 + 0x18) <= uVar6) goto LAB_02c563ec;
        plVar7 = *(long **)(param_1 + 0x58);
        if (plVar7 != (long *)0x0) {
          lVar5 = lVar5 + (long)(int)uVar6 * 0x10;
          (**(code **)(*plVar7 + 0x2a8))
                    (*(undefined4 *)(lVar5 + 0x20),*(undefined4 *)(lVar5 + 0x24),
                     *(undefined4 *)(lVar5 + 0x28),*(undefined4 *)(lVar5 + 0x2c),plVar7,
                     *(undefined8 *)(*plVar7 + 0x2b0));
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

