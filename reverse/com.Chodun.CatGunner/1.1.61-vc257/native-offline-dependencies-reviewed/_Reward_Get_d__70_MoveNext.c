/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a8fa10, Ghidra VA 02b8fa10. */

bool _Reward_Get_d__70_MoveNext(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined *puVar8;
  undefined *puVar9;
  char cVar10;
  undefined4 uVar11;
  long lVar12;
  undefined8 uVar13;
  
  if ((bRam000000000625b963 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5dd30);
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e5dd48);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e5dd58);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5dd68);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625b963 = 1;
  }
  iVar1 = *(int *)(param_1 + 0x10);
  lVar12 = *(long *)(param_1 + 0x20);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar12 == 0) goto LAB_02b8ff20;
    uVar13 = *(undefined8 *)(lVar12 + 0x48);
    *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(lVar12 + 0x40);
    *(undefined8 *)(param_1 + 0x30) = uVar13;
    Managed_WriteBarrier();
    *(undefined8 *)(param_1 + 0x38) = *(undefined8 *)(lVar12 + 0x50);
    Managed_WriteBarrier();
    Admob_Clear_RewardContext_0x6000160(lVar12,0);
    *(undefined8 *)(param_1 + 0x18) = 0;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
    *(undefined4 *)(param_1 + 0x10) = 1;
    goto LAB_02b8ff08;
  }
  if (iVar1 != 1) goto LAB_02b8ff08;
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  cVar10 = cRam000000000625ba57;
  if (lVar12 == 0) {
LAB_02b8ff20:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  *(undefined4 *)(lVar12 + 0x24) = 0x41a00000;
  if (cVar10 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) == 0) goto LAB_02b8ff20;
  Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),7,0,0);
  puVar2 = PTR_DAT_05e5d920;
  lVar12 = *(long *)PTR_DAT_05e5d920;
  if (*(int *)(lVar12 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar12 = *(long *)puVar2;
  }
  if (*(char *)(*(long *)(lVar12 + 0xb8) + 9) == '\0') {
    if (*(uint *)(param_1 + 0x28) < 0x10) {
      uVar11 = *(undefined4 *)(&UNK_011b04b0 + (ulong)*(uint *)(param_1 + 0x28) * 4);
    }
    else {
      uVar11 = 0;
    }
    uVar13 = *(undefined8 *)(param_1 + 0x30);
    if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    AppsFlyerInit_SendLog_AdsReward_0x600021a(uVar11,uVar13);
  }
  puVar9 = PTR_DAT_05e5dd68;
  puVar8 = PTR_DAT_05e5dd58;
  puVar7 = PTR_DAT_05e5dd50;
  puVar6 = PTR_DAT_05e5dd30;
  puVar5 = PTR_DAT_05e5dd28;
  puVar4 = PTR_DAT_05e5d4e8;
  puVar3 = PTR_DAT_05e5d4d0;
  puVar2 = PTR_DAT_05e5d4c0;
  switch(*(undefined4 *)(param_1 + 0x28)) {
  case 0:
    lVar12 = *(long *)PTR_DAT_05e5d4c0;
    if (*(int *)(lVar12 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar12 = *(long *)puVar2;
    }
    lVar12 = **(long **)(lVar12 + 0xb8);
    if (lVar12 == 0) goto LAB_02b8ff20;
    uVar13 = 0;
    goto code_r0x02b8fe08;
  case 1:
    lVar12 = *(long *)PTR_DAT_05e5d4c0;
    if (*(int *)(lVar12 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar12 = *(long *)puVar2;
    }
    lVar12 = **(long **)(lVar12 + 0xb8);
    if (lVar12 == 0) goto LAB_02b8ff20;
    uVar13 = 1;
    goto code_r0x02b8fe08;
  case 2:
    lVar12 = *(long *)PTR_DAT_05e5dd68;
    if (*(int *)(lVar12 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar12 = *(long *)puVar9;
    }
    lVar12 = *(long *)(*(long *)(lVar12 + 0xb8) + 8);
    if (lVar12 == 0) goto LAB_02b8ff20;
    SpeedRun_manager_Bonus_Get_0x6000eb2(lVar12,0);
    break;
  case 3:
    if (**(long **)(*(long *)PTR_DAT_05e5dd48 + 0xb8) == 0) goto LAB_02b8ff20;
    Mine_manager_Bonus_Get_0x60007f7(**(long **)(*(long *)PTR_DAT_05e5dd48 + 0xb8),0);
    break;
  case 4:
    lVar12 = *(long *)PTR_DAT_05e5dd30;
    if (*(int *)(lVar12 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar12 = *(long *)puVar6;
    }
    lVar12 = *(long *)(*(long *)(lVar12 + 0xb8) + 8);
    if (lVar12 == 0) goto LAB_02b8ff20;
    Boss_manager_Bonus_Get_0x60007a7(lVar12,0);
    break;
  case 5:
    lVar12 = *(long *)PTR_DAT_05e5dd58;
    if (*(int *)(lVar12 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar12 = *(long *)puVar8;
    }
    lVar12 = *(long *)(*(long *)(lVar12 + 0xb8) + 8);
    if (lVar12 == 0) goto LAB_02b8ff20;
    Monster_manager_Bonus_Get_0x600085b(lVar12,0);
    break;
  case 6:
    lVar12 = *(long *)PTR_DAT_05e5dd50;
    if (*(int *)(lVar12 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar12 = *(long *)puVar7;
    }
    if (*(long *)(*(long *)(lVar12 + 0xb8) + 8) == 0) goto LAB_02b8ff20;
    Mission_manager_Reward_Get_By_Ad_0x600035a();
    break;
  case 7:
    if (**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8) == 0) goto LAB_02b8ff20;
    Fish_manager_FreeGacha_RewardGet_0x6000998(**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8),0);
    break;
  case 8:
    if (**(long **)(*(long *)PTR_DAT_05e5dd60 + 0xb8) == 0) goto LAB_02b8ff20;
    Rebirth_manager_UpgradeRebirth_Start_By_Ad(**(long **)(*(long *)PTR_DAT_05e5dd60 + 0xb8),0);
    break;
  case 9:
    if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) == 0) goto LAB_02b8ff20;
    Gun_manager_AdRewardGun_Acquire_0x6000a88(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8),0);
    break;
  case 10:
    if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) == 0) goto LAB_02b8ff20;
    Gun_manager_AD_Daily_Gun_RewardGet_0x6000a78(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8),0);
    break;
  case 0xb:
    lVar12 = *(long *)PTR_DAT_05e5d4d0;
    if (*(int *)(lVar12 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar12 = *(long *)puVar3;
    }
    lVar12 = *(long *)(*(long *)(lVar12 + 0xb8) + 0x28);
    if (lVar12 == 0) goto LAB_02b8ff20;
    Pet_manager_AD_Daily_Pet_RewardGet_0x6000bed(lVar12,0);
    break;
  case 0xc:
    lVar12 = *(long *)PTR_DAT_05e5d4e8;
    if (*(int *)(lVar12 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar12 = *(long *)puVar4;
    }
    if (**(long **)(lVar12 + 0xb8) == 0) goto LAB_02b8ff20;
    Upgrade_manager_AutoUpgradeAd_RewardGet_0x6000fa5(**(long **)(lVar12 + 0xb8),0);
    break;
  case 0xd:
    lVar12 = *(long *)PTR_DAT_05e5dd28;
    if (*(int *)(lVar12 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar12 = *(long *)puVar5;
    }
    lVar12 = *(long *)(*(long *)(lVar12 + 0xb8) + 0x10);
    if (lVar12 == 0) goto LAB_02b8ff20;
    Adventure_manager_AD_Reduce_RewardGet_0x6000658(lVar12,0);
    break;
  case 0xe:
    lVar12 = *(long *)PTR_DAT_05e5d4c0;
    if (*(int *)(lVar12 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar12 = *(long *)puVar2;
    }
    lVar12 = **(long **)(lVar12 + 0xb8);
    if (lVar12 == 0) goto LAB_02b8ff20;
    uVar13 = 2;
code_r0x02b8fe08:
    Buff_manager_AddBuff(lVar12,uVar13,0);
  }
  lVar12 = *(long *)(param_1 + 0x38);
  if (lVar12 != 0) {
    (**(code **)(lVar12 + 0x18))(*(undefined8 *)(lVar12 + 0x40),*(undefined8 *)(lVar12 + 0x28));
  }
LAB_02b8ff08:
  return iVar1 == 0;
}

