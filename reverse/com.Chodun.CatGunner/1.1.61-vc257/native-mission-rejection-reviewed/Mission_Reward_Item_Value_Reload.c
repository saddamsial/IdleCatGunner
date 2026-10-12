/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b04394, Ghidra VA 02c04394. */

void Mission_Reward_Item_Value_Reload(long param_1,ulong param_2,byte param_3,uint param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined *puVar4;
  ulong uVar5;
  long lVar6;
  ulong extraout_x1;
  ulong extraout_x1_00;
  ulong extraout_x1_01;
  ulong extraout_x1_02;
  ulong extraout_x1_03;
  ulong extraout_x1_04;
  
  iVar3 = (int)param_2;
  if ((bRam000000000625be5e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625be5e = 1;
    param_2 = extraout_x1;
  }
  if (*(long *)(param_1 + 0x78) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x78),iVar3 == 0,0);
    param_2 = extraout_x1_00;
    if (*(long *)(param_1 + 0x80) != 0) {
      param_3 = iVar3 == 1 & param_3;
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x80),iVar3 == 1 ^ param_3,0);
      param_2 = extraout_x1_01;
      if (*(long *)(param_1 + 0x88) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x88),iVar3 == 2,0);
        param_2 = extraout_x1_02;
        if (*(long *)(param_1 + 0x98) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x98),param_3,0);
          param_2 = extraout_x1_03;
          if (*(long *)(param_1 + 0xa0) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xa0),param_3,0);
            puVar4 = PTR_DAT_05e5dd50;
            param_2 = extraout_x1_04;
            if (*(long *)(param_1 + 0x90) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x90),param_4 & 1,0);
              uVar1 = *(undefined4 *)(param_1 + 0x20);
              uVar2 = *(undefined4 *)(param_1 + 0x24);
              if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar5 = Mission_manager_is_AD_Reward_0x600035d(uVar1,uVar2,0);
              puVar4 = PTR_DAT_05e5d920;
              if ((uVar5 & 1) == 0) {
                param_2 = 0;
              }
              else {
                lVar6 = *(long *)PTR_DAT_05e5d920;
                if (*(int *)(lVar6 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar6 = *(long *)puVar4;
                }
                param_2 = (ulong)(*(char *)(*(long *)(lVar6 + 0xb8) + 9) == '\0' && iVar3 != 2);
              }
              if (*(long *)(param_1 + 0xa8) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xa8),param_2,0);
                return;
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper(0,param_2);
}

