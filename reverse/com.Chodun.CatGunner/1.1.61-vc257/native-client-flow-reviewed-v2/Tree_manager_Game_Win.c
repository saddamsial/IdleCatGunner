/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bad174, Ghidra VA 02cad174. */

void Tree_manager_Game_Win(long param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  long lVar8;
  ulong uVar9;
  undefined8 uVar10;
  int iVar11;
  char *pcVar12;
  int *piVar13;
  undefined8 *puVar14;
  undefined1 uVar15;
  int *piVar16;
  int *piVar17;
  float fVar18;
  int iStack_58;
  int iStack_54;
  
  puVar5 = PTR_DAT_05e5d338;
  if ((bRam000000000625c520 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e5d498);
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c520 = 1;
  }
  lVar8 = *(long *)puVar5;
  iStack_58 = 0;
  iStack_54 = 0;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar5;
  }
  pcVar12 = *(char **)(lVar8 + 0xb8);
  if (*pcVar12 == '\0') {
    return;
  }
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    pcVar12 = *(char **)(*(long *)puVar5 + 0xb8);
  }
  *pcVar12 = '\0';
  fVar18 = (float)Time_get_realtimeSinceStartup_0x6000ef0(0);
  *(float *)(param_1 + 0x3c) = *(float *)(param_1 + 0x3c) + (fVar18 - *(float *)(param_1 + 0x38));
  puVar7 = PTR_DAT_05e5dc20;
  if (*(long *)(param_1 + 0xa0) == 0) goto LAB_02cad544;
  GameSlider_Value_Reload(0x3f800000,*(long *)(param_1 + 0xa0),0);
  piVar16 = (int *)(param_1 + 0x28);
  iVar3 = *piVar16;
  piVar17 = (int *)(param_1 + 0x2c);
  iVar4 = *piVar17;
  iVar11 = iVar4;
  if (*(int *)(*(long *)puVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    iVar11 = *piVar17;
  }
  puVar6 = PTR_DAT_05e5d4d8;
  piVar13 = piVar17;
  if (3 < iVar11) {
    iVar11 = *piVar16;
    *piVar17 = 0;
    piVar13 = piVar16;
  }
  lVar8 = *(long *)puVar6;
  *piVar13 = iVar11 + 1;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar8 = *(long *)puVar6;
  }
  if (*(int *)(*(long *)(lVar8 + 0xb8) + 0x6c) < 1) {
LAB_02cad3a4:
    uVar15 = 0;
  }
  else {
    fVar18 = (float)Random_get_value_0x6000ba9(0);
    lVar8 = *(long *)puVar6;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar8 = *(long *)puVar6;
    }
    if ((float)*(int *)(*(long *)(lVar8 + 0xb8) + 0x6c) <= fVar18 * 100.0) goto LAB_02cad3a4;
    iVar11 = *piVar16;
    iVar1 = *piVar17;
    iStack_58 = iVar1;
    iStack_54 = iVar11;
    if (*(int *)(*(long *)puVar7 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if (iVar1 < 4) {
      piVar13 = &iStack_58;
      iVar11 = iVar1;
    }
    else {
      piVar13 = &iStack_54;
      iStack_58 = 0;
    }
    iVar1 = *(int *)(param_1 + 0x30);
    *piVar13 = iVar11 + 1;
    if (iVar1 <= iStack_58 + iStack_54 * 10) goto LAB_02cad3a4;
    *piVar16 = iStack_54;
    uVar15 = 1;
    *piVar17 = iStack_58;
  }
  iVar11 = *(int *)(param_1 + 0x2c) + *(int *)(param_1 + 0x28) * 10;
  if (*(int *)(param_1 + 0x30) <= iVar11) {
    lVar8 = *(long *)puVar5;
    *(int *)(param_1 + 0x30) = iVar11;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar9 = Gamemanager_is_ProgramDestroyed_0x6000082(0);
    if ((uVar9 & 1) == 0) {
      if (**(long **)(*(long *)PTR_DAT_05e5d498 + 0xb8) == 0) goto LAB_02cad544;
      Rank_manager_SubmitScore_0x6000416(**(long **)(*(long *)PTR_DAT_05e5d498 + 0xb8),0,0,0);
    }
    Tree_manager_Contents_Lock_Reload_0x6000efe();
    puVar5 = PTR_DAT_05e5d540;
    if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    AppsFlyerInit_SendLog_WaveClear_0x600021e(iVar3,iVar4,0);
    if (iVar4 == 4) {
      uVar2 = *(undefined4 *)(param_1 + 0x40);
      if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      AppsFlyerInit_SendLog_StageClear_0x600021d(iVar3,4,uVar2,0);
    }
  }
  *(undefined1 *)(param_1 + 0x50) = uVar15;
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  puVar5 = PTR_DAT_05e5dd50;
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a
              (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xb,0,0);
    lVar8 = *(long *)puVar5;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar8 = *(long *)puVar5;
    }
    lVar8 = *(long *)(*(long *)(lVar8 + 0xb8) + 8);
    if (lVar8 != 0) {
      Mission_manager_MissionValue_Increase_0x600035e(lVar8,1,0);
      if (*(long *)(param_1 + 0x58) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),1,0);
        uVar10 = Tree_manager_Loading_Then_Start(param_1);
        puVar14 = (undefined8 *)(param_1 + 200);
        *puVar14 = uVar10;
        Managed_WriteBarrier(puVar14,uVar10);
        MonoBehaviour_StartCoroutine_0x6000d43(param_1,*puVar14,0);
        return;
      }
    }
  }
LAB_02cad544:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

