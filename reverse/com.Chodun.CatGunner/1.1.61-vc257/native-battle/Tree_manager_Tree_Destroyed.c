/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2babf6c, Ghidra VA 02cabf6c. */

void Tree_manager_Tree_Destroyed(long param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined *puVar4;
  long lVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  ulong uVar9;
  float fVar10;
  int iStack_5c;
  undefined4 uStack_58;
  undefined4 auStack_54 [3];
  undefined4 uStack_48;
  
  puVar4 = PTR_DAT_05e5d338;
  if ((bRam000000000625c526 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5e338);
    func_0x029f5a50(PTR_DAT_05e5dfe8);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e64a70);
    bRam000000000625c526 = 1;
  }
  lVar5 = *(long *)puVar4;
  uStack_48 = 0;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar4;
  }
  if (**(char **)(lVar5 + 0xb8) != '\0') {
    iVar3 = *(int *)(param_1 + 0x90) + -1;
    *(int *)(param_1 + 0x90) = iVar3;
    if (*(long *)(param_1 + 0xa0) == 0) goto LAB_02cac1fc;
    fVar10 = (float)(*(int *)(param_1 + 0x94) - iVar3) / (float)*(int *)(param_1 + 0x94);
    GameSlider_Value_Reload_0x6000bab(fVar10,*(long *)(param_1 + 0xa0),0);
    if ((*(int *)(param_1 + 0x28) == 0) && (*(int *)(param_1 + 0x30) <= *(int *)(param_1 + 0x2c))) {
      if (cRam000000000625ba65 == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625ba65 = '\x01';
      }
      fVar10 = fVar10 * 10.0;
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      puVar4 = PTR_DAT_05e58a10;
      iVar3 = 0;
      if ((float)(int)fVar10 != INFINITY) {
        iVar3 = (int)fVar10 * 10;
      }
      if (9 < iVar3) {
        auStack_54[0] = *(undefined4 *)(param_1 + 0x28);
        uVar6 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),auStack_54);
        uStack_58 = *(undefined4 *)(param_1 + 0x2c);
        uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&uStack_58);
        iStack_5c = iVar3;
        uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&iStack_5c);
        uVar6 = String_Format_0x600029e(*(undefined8 *)PTR_DAT_05e64a70,uVar6,uVar7,uVar8,0);
        if (*(long *)(param_1 + 0x48) == 0) goto LAB_02cac1fc;
        uVar9 = func_0x042bc0a8(*(long *)(param_1 + 0x48),uVar6,*(undefined8 *)PTR_DAT_05e5dfe8);
        if ((uVar9 & 1) == 0) {
          if (*(long *)(param_1 + 0x48) == 0) goto LAB_02cac1fc;
          func_0x042bcb98(*(long *)(param_1 + 0x48),uVar6,*(undefined8 *)PTR_DAT_05e5e338);
          uVar1 = *(undefined4 *)(param_1 + 0x28);
          uVar2 = *(undefined4 *)(param_1 + 0x2c);
          if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          AppsFlyerInit_SendLog_WaveRatio_0x600021f(uVar1,uVar2,iVar3,0);
        }
      }
    }
    puVar4 = PTR_DAT_05e5dd50;
    if (*(int *)(param_1 + 0x90) < 1) {
      Tree_manager_Game_Win(param_1);
    }
    lVar5 = *(long *)puVar4;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar4;
    }
    lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 8);
    if (lVar5 == 0) {
LAB_02cac1fc:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Mission_manager_MissionValue_Increase_0x600035e(lVar5,0,0);
  }
  return;
}

