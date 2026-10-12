/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1d4b0, Ghidra VA 02c1d4b0. */

void AutoUpgrade_UI_Reload(long param_1)

{
  char cVar1;
  undefined *puVar2;
  undefined *puVar3;
  byte bVar4;
  byte bVar5;
  long lVar6;
  undefined8 uVar7;
  long *plVar8;
  byte bVar9;
  
  puVar2 = PTR_DAT_05e5d920;
  if ((bRam000000000625bf35 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625bf35 = 1;
  }
  puVar3 = PTR_DAT_05e62670;
  lVar6 = *(long *)puVar2;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar2;
  }
  puVar2 = PTR_DAT_05e5d4e8;
  cVar1 = **(char **)(*(long *)puVar3 + 0xb8);
  if (*(char *)(*(long *)(lVar6 + 0xb8) + 10) == '\0') {
    if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    bVar4 = Upgrade_manager_get_AutoUpgradeAd_Active(0);
    bVar9 = 0;
  }
  else {
    bVar4 = 0;
    bVar9 = 1;
  }
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  bVar5 = Upgrade_manager_get_AutoUpgradeAd_WatchedToday(0);
  if (*(long *)(param_1 + 0x20) != 0) {
    bVar9 = bVar9 | bVar4 & 1;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),bVar9 == 0,0);
    if (*(long *)(param_1 + 0x28) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),bVar9,0);
      if (*(long *)(param_1 + 0x30) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),cVar1 == '\0',0);
        if (*(long *)(param_1 + 0x38) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),cVar1 != '\0',0);
          if (*(long *)(param_1 + 0x48) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),bVar9 == 0 & (bVar5 ^ 1),0);
            if (*(long *)(param_1 + 0x40) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),bVar5 & bVar9 == 0,0);
              if ((*(long *)(param_1 + 0x50) != 0) &&
                 (lVar6 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x50),0),
                 lVar6 != 0)) {
                GameObject_SetActive_0x6000cfe(lVar6,bVar4 & 1,0);
                if ((bVar4 & 1) != 0) {
                  plVar8 = *(long **)(param_1 + 0x50);
                  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                    func_0x029f5bd0();
                  }
                  Upgrade_manager_get_AutoUpgradeAd_Remain(0);
                  uVar7 = AutoUpgrade_UI_TimeStr();
                  if (plVar8 == (long *)0x0) goto LAB_02c1d6a4;
                  (**(code **)(*plVar8 + 0x558))(plVar8,uVar7,*(undefined8 *)(*plVar8 + 0x560));
                }
                *(byte *)(param_1 + 0x58) = bVar4 & 1;
                return;
              }
            }
          }
        }
      }
    }
  }
LAB_02c1d6a4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

