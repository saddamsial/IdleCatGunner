/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bad740, Ghidra VA 02cad740. */

void Tree_manager_Game_Fail(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  char *pcVar4;
  undefined8 *puVar5;
  float fVar6;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c521 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c521 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  pcVar4 = *(char **)(lVar2 + 0xb8);
  if (*pcVar4 != '\0') {
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      pcVar4 = *(char **)(*(long *)puVar1 + 0xb8);
    }
    *pcVar4 = '\0';
    fVar6 = (float)Time_get_realtimeSinceStartup_0x6000ef0(0);
    *(float *)(param_1 + 0x3c) = *(float *)(param_1 + 0x3c) + (fVar6 - *(float *)(param_1 + 0x38));
    if (*(long *)(param_1 + 0xa0) != 0) {
      GameSlider_Value_Reload_0x6000bab
                ((float)(*(int *)(param_1 + 0x94) - *(int *)(param_1 + 0x90)) /
                 (float)*(int *)(param_1 + 0x94),*(long *)(param_1 + 0xa0),0);
      if (*(long *)(param_1 + 0x60) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x60),1,0);
        if (cRam000000000625ba57 == '\0') {
          func_0x029f5a50(PTR_DAT_05e5dd70);
          cRam000000000625ba57 = '\x01';
        }
        if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
          Sound_manager_PlaySfx_0x600054a
                    (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xc,0,0);
          uVar3 = Tree_manager_Loading_Then_Start_0x6000f06(param_1);
          puVar5 = (undefined8 *)(param_1 + 200);
          *puVar5 = uVar3;
          func_0x029f59f4(puVar5,uVar3);
          MonoBehaviour_StartCoroutine_0x6000d43(param_1,*puVar5,0);
          return;
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

