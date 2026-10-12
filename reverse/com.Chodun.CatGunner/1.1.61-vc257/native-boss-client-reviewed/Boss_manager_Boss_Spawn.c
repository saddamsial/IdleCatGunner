/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b461d0, Ghidra VA 02c461d0. */

void Boss_manager_Boss_Spawn(long param_1)

{
  int iVar1;
  int iVar2;
  long lVar3;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  lVar3 = *(long *)(param_1 + 0x110);
  Boss_manager_Health_return(&uStack_40,param_1,*(undefined4 *)(param_1 + 0x20));
  if ((*(long *)(param_1 + 0x58) != 0) && (lVar3 != 0)) {
    iVar1 = *(int *)(*(long *)(param_1 + 0x58) + 0x18);
    iVar2 = 0;
    if (iVar1 != 0) {
      iVar2 = *(int *)(param_1 + 0x20) / iVar1;
    }
    uStack_58 = uStack_38;
    uStack_60 = uStack_40;
    uStack_48 = uStack_28;
    uStack_50 = uStack_30;
    Boss_Spawn(lVar3,&uStack_60,*(int *)(param_1 + 0x20) - iVar2 * iVar1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

