/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b58ce4, Ghidra VA 02c58ce4. */

void Raid_manager_Game_Exit(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  puVar2 = PTR_DAT_05e5d5b0;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c1b3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c1b3 = 1;
  }
  Raid_manager_SendLog_Result_0x600092f(param_1,2);
  uVar4 = *(undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) != 0) {
    if (*(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8) == 0) goto LAB_02c58e70;
    Cat_manager_Helper_Off_0x600077b();
  }
  if (**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8) != 0) {
    Admob_HideBannerAd_0x6000193(**(long **)(*(long *)PTR_DAT_05e5d910 + 0xb8),0);
    if (*(long *)(param_1 + 0xd0) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xd0),0,0);
      if (*(long *)(param_1 + 0x40) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),0,0);
        if (*(long *)(param_1 + 0xc0) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xc0),1,0);
          if (*(long *)(param_1 + 200) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 200),0,0);
            if (cRam000000000625ba57 == '\0') {
              func_0x029f5a50(PTR_DAT_05e5dd70);
              cRam000000000625ba57 = '\x01';
            }
            if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
              Sound_manager_BGM_Change_Main_0x600054c
                        (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0);
              if (*(long *)(param_1 + 0xb8) != 0) {
                MonoBehaviour_StopCoroutine_0x6000d45(param_1,*(long *)(param_1 + 0xb8),0);
              }
              uVar4 = Raid_manager_Exit_Cor_0x600091c();
              MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar4,0);
              return;
            }
          }
        }
      }
    }
  }
LAB_02c58e70:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

