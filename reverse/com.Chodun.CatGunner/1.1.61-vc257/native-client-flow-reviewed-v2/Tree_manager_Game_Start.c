/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baac18, Ghidra VA 02caac18. */

void Tree_manager_Game_Start(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  long lVar5;
  ulong uVar6;
  int iVar7;
  undefined8 uVar8;
  undefined8 *puVar9;
  undefined4 uVar10;
  
  if ((bRam000000000625c51d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5dfa0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62650);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c51d = 1;
  }
  puVar2 = PTR_DAT_05e5d540;
  iVar1 = *(int *)(param_1 + 0x2c) + *(int *)(param_1 + 0x28) * 10;
  if (iVar1 == *(int *)(param_1 + 0x34)) {
    iVar7 = *(int *)(param_1 + 0x40);
  }
  else {
    iVar7 = 0;
    *(int *)(param_1 + 0x34) = iVar1;
    *(undefined8 *)(param_1 + 0x3c) = 0;
  }
  *(int *)(param_1 + 0x40) = iVar7 + 1;
  uVar10 = Time_get_realtimeSinceStartup_0x6000ef0(0);
  lVar4 = *(long *)puVar2;
  *(undefined4 *)(param_1 + 0x38) = uVar10;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  AppsFlyerInit_SendLog_StageStart_0x600021c(0);
  puVar3 = PTR_DAT_05e5d368;
  puVar2 = PTR_DAT_05e5d338;
  lVar4 = *(long *)PTR_DAT_05e5d338;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  lVar5 = **(long **)(*(long *)puVar3 + 0xb8);
  **(undefined1 **)(lVar4 + 0xb8) = 1;
  puVar2 = PTR_DAT_05e5d5b0;
  if (lVar5 != 0) {
    UI_manager_UI_Reload_0x60005fa(lVar5,0,0);
    Tree_manager_Map_Batch_0x6000f09(param_1);
    lVar4 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
    if (lVar4 != 0) {
      Cat_manager_Warp_0x600077c
                (*(undefined4 *)(param_1 + 0xd0),*(undefined4 *)(param_1 + 0xd4),
                 *(undefined4 *)(param_1 + 0xd8),lVar4,0);
      lVar4 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
      if (lVar4 != 0) {
        Cat_manager_Balance_Reload_0x6000779(lVar4,0);
        if (*(long *)(param_1 + 0xa0) != 0) {
          GameSlider_Stage_Reload
                    (*(long *)(param_1 + 0xa0),*(undefined4 *)(param_1 + 0x28),
                     *(undefined4 *)(param_1 + 0x2c),0);
          if (*(long *)(param_1 + 0xa0) != 0) {
            GameSlider_Value_Reload(0,*(long *)(param_1 + 0xa0),0);
            puVar3 = PTR_DAT_05e5dfa0;
            puVar2 = PTR_DAT_05e591c0;
            if (*(long *)(param_1 + 0xb8) != 0) {
              GameObject_SetActive_0x6000cfe
                        (*(long *)(param_1 + 0xb8),
                         *(int *)(param_1 + 0x2c) + *(int *)(param_1 + 0x28) * 10 <
                         *(int *)(param_1 + 0x30),0);
              uVar8 = **(undefined8 **)(*(long *)puVar3 + 0xb8);
              if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar6 = Object_op_Inequality_0x6000ded(uVar8,0,0);
              if ((uVar6 & 1) != 0) {
                lVar4 = **(long **)(*(long *)puVar3 + 0xb8);
                if (lVar4 == 0) goto LAB_02caaecc;
                FreeCash_manager_Hud_Reload_0x600030c(lVar4,0);
              }
              puVar3 = PTR_DAT_05e62650;
              uVar8 = **(undefined8 **)(*(long *)PTR_DAT_05e62650 + 0xb8);
              if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar6 = Object_op_Inequality_0x6000ded(uVar8,0,0);
              if ((uVar6 & 1) != 0) {
                if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02caaecc;
                OfferWall_manager_Hud_Reload_0x6000d1b(**(long **)(*(long *)puVar3 + 0xb8),0);
              }
              if (*(long *)(param_1 + 0x68) != 0) {
                GameObject_SetActive_0x6000cfe
                          (*(long *)(param_1 + 0x68),*(undefined1 *)(param_1 + 0x50),0);
                *(undefined1 *)(param_1 + 0x50) = 0;
                uVar8 = Tree_manager_Game_Cor(param_1);
                puVar9 = (undefined8 *)(param_1 + 0xc0);
                *puVar9 = uVar8;
                Managed_WriteBarrier(puVar9,uVar8);
                MonoBehaviour_StartCoroutine_0x6000d43(param_1,*puVar9,0);
                return;
              }
            }
          }
        }
      }
    }
  }
LAB_02caaecc:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

