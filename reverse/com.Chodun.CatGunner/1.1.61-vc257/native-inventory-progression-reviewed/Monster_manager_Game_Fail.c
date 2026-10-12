/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4e5b8, Ghidra VA 02c4e5b8. */

void Monster_manager_Game_Fail(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  ulong uVar5;
  char *pcVar6;
  undefined8 uStack_68;
  undefined8 *puStack_60;
  long lStack_58;
  undefined8 uStack_50;
  undefined8 *puStack_48;
  long lStack_40;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c140 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e634f8);
    func_0x029f5a50(PTR_DAT_05e63500);
    func_0x029f5a50(PTR_DAT_05e63508);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e63518);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c140 = 1;
  }
  lVar4 = *(long *)puVar1;
  uStack_50 = 0;
  puStack_48 = (undefined8 *)0x0;
  lStack_40 = 0;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  pcVar6 = *(char **)(lVar4 + 0xb8);
  if (*pcVar6 == '\0') {
    return;
  }
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    pcVar6 = *(char **)(*(long *)puVar1 + 0xb8);
  }
  *pcVar6 = '\0';
  Monster_manager_SendDgResult_0x6000843(param_1,1);
  Monster_manager_StopAllGameCoroutines_0x600084c(param_1);
  puVar3 = PTR_DAT_05e63500;
  puVar2 = PTR_DAT_05e634f8;
  puVar1 = PTR_DAT_05e591c0;
  if (*(long *)(param_1 + 0x178) != 0) {
    func_0x0452d690(&uStack_68,*(long *)(param_1 + 0x178),*(undefined8 *)PTR_DAT_05e63518);
    lStack_40 = lStack_58;
    puStack_48 = puStack_60;
    uStack_50 = uStack_68;
    uStack_68 = 0;
    puStack_60 = &uStack_50;
    while (uVar5 = func_0x03fa4e10(&uStack_50,*(undefined8 *)puVar3), lVar4 = lStack_40,
          (uVar5 & 1) != 0) {
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(lVar4,0,0);
      if ((uVar5 & 1) != 0) {
        if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        Monster_Freeze_0x6000836(lVar4);
      }
    }
    func_0x03fa4e0c(&uStack_50,*(undefined8 *)puVar2);
    Monster_manager_GameEnd_Panel_Reload_0x600085c(param_1);
    *(undefined1 *)(param_1 + 0xb9) = 1;
    if (*(long *)(param_1 + 0x28) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),1,0);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xc,0,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

