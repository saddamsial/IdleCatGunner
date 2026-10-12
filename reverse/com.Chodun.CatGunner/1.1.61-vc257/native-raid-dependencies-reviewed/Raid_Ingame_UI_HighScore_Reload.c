/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b56570, Ghidra VA 02c56570. */

void Raid_Ingame_UI_HighScore_Reload(long param_1,int param_2,int param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined8 uVar6;
  ulong uVar7;
  undefined8 uVar8;
  long *plVar9;
  int iStack_44;
  
  if ((bRam000000000625c194 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e63650);
    func_0x029f5a50(PTR_DAT_05e63658);
    func_0x029f5a50(PTR_DAT_05e63660);
    bRam000000000625c194 = 1;
  }
  puVar5 = PTR_DAT_05e63660;
  puVar4 = PTR_DAT_05e63658;
  puVar3 = PTR_DAT_05e63650;
  puVar2 = PTR_DAT_05e5e528;
  if (*(long *)(param_1 + 0x38) != 0) {
    iVar1 = param_2;
    if (param_2 <= param_3) {
      iVar1 = param_3;
    }
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),param_3 < param_2,0);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar6 = LocalizationManager_GetTranslation_0x60011b3(*(undefined8 *)puVar5,1,0,1,0,0,0,1,0);
    uVar7 = String_IsNullOrEmpty_0x6000277(uVar6,0);
    plVar9 = *(long **)(param_1 + 0x40);
    uVar8 = *(undefined8 *)puVar4;
    if ((uVar7 & 1) == 0) {
      uVar8 = uVar6;
    }
    iStack_44 = iVar1;
    uVar6 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_44);
    uVar6 = String_Format_0x600029c(*(undefined8 *)puVar3,uVar6,0);
    uVar8 = String_Format_0x600029c(uVar8,uVar6,0);
    if (plVar9 != (long *)0x0) {
      (**(code **)(*plVar9 + 0x558))(plVar9,uVar8,*(undefined8 *)(*plVar9 + 0x560));
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

