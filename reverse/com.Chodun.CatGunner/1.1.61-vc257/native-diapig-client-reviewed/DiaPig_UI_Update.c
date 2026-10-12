/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8db08, Ghidra VA 02c8db08. */

void DiaPig_UI_Update(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  long lVar6;
  long *plVar7;
  undefined4 uStack_44;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  if ((bRam000000000625c3c2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62668);
    func_0x029f5a50(PTR_DAT_05e63f50);
    func_0x029f5a50(PTR_DAT_05e63080);
    func_0x029f5a50(PTR_DAT_05e63f70);
    bRam000000000625c3c2 = 1;
  }
  puVar2 = PTR_DAT_05e62668;
  puVar1 = PTR_DAT_05e58a10;
  uStack_34 = 0;
  if (*(char *)(param_1 + 0x58) != '\0') {
    if (**(long **)(*(long *)PTR_DAT_05e62668 + 0xb8) != 0) {
      uStack_38 = *(undefined4 *)(**(long **)(*(long *)PTR_DAT_05e62668 + 0xb8) + 0x20);
      plVar7 = *(long **)(param_1 + 0x48);
      uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_38);
      puVar3 = PTR_DAT_05e63f50;
      lVar6 = **(long **)(*(long *)puVar2 + 0xb8);
      if (lVar6 != 0) {
        uStack_44 = *(undefined4 *)(lVar6 + 0x24);
        uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_44);
        uVar4 = String_Format_0x600029d(*(undefined8 *)puVar3,uVar4,uVar5,0);
        if (plVar7 != (long *)0x0) {
          (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
          lVar6 = **(long **)(*(long *)puVar2 + 0xb8);
          if (lVar6 != 0) {
            if (*(int *)(lVar6 + 0x20) < *(int *)(lVar6 + 0x24)) {
              uStack_34 = DiaPig_GetSecondsUntilNextTick();
              plVar7 = *(long **)(param_1 + 0x40);
              uVar4 = Int32_ToString_0x600080e(&uStack_34,0);
              uVar4 = String_Concat_0x6000298(uVar4,*(undefined8 *)PTR_DAT_05e63f70,0);
              if (plVar7 != (long *)0x0) {
                (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
                return;
              }
            }
            else {
              plVar7 = *(long **)(param_1 + 0x40);
              if (plVar7 != (long *)0x0) {
                (**(code **)(*plVar7 + 0x558))
                          (plVar7,*(undefined8 *)PTR_DAT_05e63080,*(undefined8 *)(*plVar7 + 0x560));
                return;
              }
            }
          }
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

