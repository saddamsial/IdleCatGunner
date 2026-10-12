/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4aa88, Ghidra VA 02c4aa88. */

undefined4 _Enter_Cor_d__32_MoveNext(long param_1)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  long lVar4;
  undefined4 uVar5;
  float fVar6;
  
  if ((bRam000000000625c11d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d368);
    func_0x029f5a50(PTR_DAT_05e5bed0);
    bRam000000000625c11d = 1;
  }
  iVar1 = *(int *)(param_1 + 0x10);
  lVar4 = *(long *)(param_1 + 0x20);
  if (iVar1 == 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  }
  else {
    if (iVar1 != 1) {
      if (iVar1 != 0) {
        return 0;
      }
      lVar2 = **(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8);
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if (lVar2 != 0) {
        UI_manager_Loading_On_0x60005fd(lVar2,0);
        uVar5 = Time_get_unscaledTime_0x6000ee6(0);
        *(undefined4 *)(param_1 + 0x28) = uVar5;
        if ((lVar4 != 0) && (*(long *)(lVar4 + 0x30) != 0)) {
          GameObject_SetActive_0x6000cfe(*(long *)(lVar4 + 0x30),1,0);
          uVar3 = Mine_manager_PlaceOres(lVar4);
          uVar3 = MonoBehaviour_StartCoroutine_0x6000d43(lVar4,uVar3,0);
          *(undefined8 *)(param_1 + 0x18) = uVar3;
          Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar3);
          *(undefined4 *)(param_1 + 0x10) = 1;
          return 1;
        }
      }
      goto LAB_02c4ac50;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    fVar6 = (float)Time_get_unscaledTime_0x6000ee6(0);
    fVar6 = fVar6 - *(float *)(param_1 + 0x28);
    if (fVar6 < 1.5) {
      uVar3 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5bed0);
      WaitForSecondsRealtime__ctor_0x6000e2a(1.5 - fVar6,uVar3,0);
      *(undefined8 *)(param_1 + 0x18) = uVar3;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar3);
      *(undefined4 *)(param_1 + 0x10) = 2;
      return 1;
    }
  }
  if (**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8) != 0) {
    UI_manager_Loading_Off_0x60005fe(**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8),0);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if ((**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) &&
       (Sound_manager_BGM_Change_SpeedRun_0x600054b(**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0)
       , lVar4 != 0)) {
      Mine_manager_Game_Start(lVar4);
      return 0;
    }
  }
LAB_02c4ac50:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

