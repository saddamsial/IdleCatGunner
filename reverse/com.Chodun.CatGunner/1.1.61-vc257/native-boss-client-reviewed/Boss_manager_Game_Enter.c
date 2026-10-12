/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b45fdc, Ghidra VA 02c45fdc. */

void Boss_manager_Game_Enter(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  undefined8 uVar5;
  long lVar6;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c0db & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c0db = 1;
  }
  puVar3 = PTR_DAT_05e5dc20;
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  lVar6 = *(long *)puVar3;
  iVar1 = *(int *)(lVar6 + 0xe4);
  **(undefined1 **)(lVar4 + 0xb8) = 0;
  if (iVar1 == 0) {
    func_0x029f5bd0(lVar6);
    lVar6 = *(long *)puVar3;
  }
  puVar2 = PTR_DAT_05e62670;
  lVar4 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x10);
  if (lVar4 != 0) {
    Tree_manager_Game_Exit_0x6000f03(lVar4,0);
    lVar4 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
    if (lVar4 != 0) {
      Setting_EcoMode_Off_0x600052f(lVar4,0);
      if (*(long *)(param_1 + 0x40) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),0,0);
        if (*(long *)(param_1 + 0x48) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),1,0);
          *(undefined2 *)(param_1 + 0x7c) = 0;
          *(undefined1 *)(param_1 + 0x7e) = 0;
          *(undefined4 *)(param_1 + 0x78) = *(undefined4 *)(param_1 + 0x20);
          puVar2 = PTR_DAT_05e5d368;
          if (*(long *)(param_1 + 0x118) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x118),1,0);
            Boss_manager_Boss_Spawn(param_1);
            puVar3 = PTR_DAT_05e5d5b0;
            if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
              UI_manager_UI_Reload_0x60005fa(**(long **)(*(long *)puVar2 + 0xb8),3,0);
              if (*(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 8) != 0) {
                Cat_manager_Warp_0x600077c
                          (*(undefined4 *)(param_1 + 0x90),*(undefined4 *)(param_1 + 0x94),
                           *(undefined4 *)(param_1 + 0x98));
                if (*(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 8) != 0) {
                  Cat_manager_Balance_Reload_0x6000779();
                  if (cRam000000000625ba57 == '\0') {
                    func_0x029f5a50(PTR_DAT_05e5dd70);
                    cRam000000000625ba57 = '\x01';
                  }
                  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                    Sound_manager_PlaySfx_0x600054a
                              (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),10,0,0);
                    uVar5 = Boss_manager_Enter_Cor(param_1);
                    MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar5,0);
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

