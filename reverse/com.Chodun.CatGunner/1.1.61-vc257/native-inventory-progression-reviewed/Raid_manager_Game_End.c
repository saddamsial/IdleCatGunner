/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b59258, Ghidra VA 02c59258. */

void Raid_manager_Game_End(long param_1)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  uint uVar5;
  long lVar6;
  ulong uVar7;
  char *pcVar8;
  int *piVar9;
  undefined8 uVar10;
  
  puVar3 = PTR_DAT_05e5d338;
  if ((bRam000000000625c1b5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    bRam000000000625c1b5 = 1;
  }
  lVar6 = *(long *)puVar3;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar3;
  }
  pcVar8 = *(char **)(lVar6 + 0xb8);
  if (*pcVar8 == '\0') {
    return;
  }
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    pcVar8 = *(char **)(*(long *)puVar3 + 0xb8);
  }
  iVar1 = *(int *)(param_1 + 0xb0);
  iVar2 = *(int *)(param_1 + 0x80);
  *pcVar8 = '\0';
  if (iVar2 < iVar1) {
    *(int *)(param_1 + 0x80) = iVar1;
  }
  Raid_manager_EnsureBestArray_0x600092b(param_1);
  uVar5 = Raid_manager_Buff_GunNum_return_0x6000927(param_1);
  puVar4 = PTR_DAT_05e5e068;
  puVar3 = PTR_DAT_05e591c0;
  lVar6 = *(long *)(param_1 + 0xf8);
  if (lVar6 != 0) {
    if (*(uint *)(lVar6 + 0x18) <= uVar5) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    piVar9 = (int *)(lVar6 + (long)(int)uVar5 * 4 + 0x20);
    if (*piVar9 < *(int *)(param_1 + 0xb0)) {
      *piVar9 = *(int *)(param_1 + 0xb0);
    }
    Raid_manager_SendLog_Result_0x600092f(param_1,1);
    uVar10 = **(undefined8 **)(*(long *)puVar4 + 0xb8);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar7 = Object_op_Inequality_0x6000ded(uVar10,0,0);
    if ((uVar7 & 1) != 0) {
      if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c59410;
      Raid_Mission_manager_Refresh_Clear_0x60008c6();
    }
    if ((*(long *)(param_1 + 0xf0) != 0) && (*(long *)(param_1 + 0x40) != 0)) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),1,0);
      Raid_manager_Reward_Panel_Reload_0x60008fe(param_1);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xb,0,0);
        return;
      }
    }
  }
LAB_02c59410:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

