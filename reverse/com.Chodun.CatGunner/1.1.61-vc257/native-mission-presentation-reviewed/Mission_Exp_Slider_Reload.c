/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b03bd4, Ghidra VA 02c03bd4. */

void Mission_Exp_Slider_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  long *plVar6;
  undefined4 uStack_44;
  undefined4 uStack_38;
  int iStack_34;
  
  puVar1 = PTR_DAT_05e5dd50;
  if ((bRam000000000625be59 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e61f18);
    func_0x029f5a50(PTR_DAT_05e61f20);
    bRam000000000625be59 = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  puVar2 = PTR_DAT_05e61f18;
  puVar1 = PTR_DAT_05e58a10;
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
  if (lVar3 != 0) {
    plVar6 = *(long **)(param_1 + 0x20);
    iStack_34 = *(int *)(lVar3 + 0x48) + 1;
    uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
    uVar4 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar4,0);
    puVar2 = PTR_DAT_05e61f20;
    if (plVar6 != (long *)0x0) {
      (**(code **)(*plVar6 + 0x558))(plVar6,uVar4,*(undefined8 *)(*plVar6 + 0x560));
      uStack_38 = *(undefined4 *)(lVar3 + 0x4c);
      plVar6 = *(long **)(param_1 + 0x28);
      uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_38);
      uStack_44 = 100;
      uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_44);
      uVar4 = String_Format_0x600029d(*(undefined8 *)puVar2,uVar4,uVar5,0);
      if (plVar6 != (long *)0x0) {
        (**(code **)(*plVar6 + 0x558))(plVar6,uVar4,*(undefined8 *)(*plVar6 + 0x560));
        if (*(long *)(param_1 + 0x30) != 0) {
          SlicedFilledImage_set_fillAmount_0x60005d0
                    ((float)*(int *)(lVar3 + 0x4c) / 100.0,*(long *)(param_1 + 0x30),0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

