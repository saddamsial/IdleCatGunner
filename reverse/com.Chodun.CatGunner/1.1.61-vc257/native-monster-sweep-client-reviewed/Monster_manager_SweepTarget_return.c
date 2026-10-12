/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4ede8, Ghidra VA 02c4ede8. */

void Monster_manager_SweepTarget_return(long param_1,int *param_2,int *param_3,int *param_4)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c143 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c143 = 1;
  }
  lVar3 = *(long *)puVar2;
  *param_2 = *(int *)(param_1 + 0x20);
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  *param_3 = *(int *)(param_1 + 0x24);
  *param_4 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Power_Monster_return(&uStack_60,0);
  while( true ) {
    if (99 < *param_4) {
      return;
    }
    Monster_manager_SweepRequiredPower_return(&uStack_a0,param_1,*param_2,*param_3);
    uStack_78 = uStack_98;
    uStack_80 = uStack_a0;
    uStack_68 = uStack_88;
    uStack_70 = uStack_90;
    uVar4 = InfVal_op_GreaterThanOrEqual_0x6000081(&uStack_60,&uStack_80,0);
    if ((uVar4 & 1) == 0) break;
    *param_4 = *param_4 + 1;
    iVar1 = *param_3;
    *param_3 = iVar1 + 1;
    if (4 < iVar1 + 1) {
      *param_3 = 0;
      *param_2 = *param_2 + 1;
    }
  }
  return;
}

