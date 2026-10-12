/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9e588, Ghidra VA 02b9e588. */

uint Contents_Unlock_manager_Try_Open(undefined4 param_1)

{
  undefined *puVar1;
  uint uVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  long lVar5;
  undefined4 uStack_24;
  
  puVar1 = PTR_DAT_05e5e4d0;
  if ((bRam000000000625b9e9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    bRam000000000625b9e9 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Contents_Unlock_manager_Is_Unlocked(param_1);
  if ((uVar2 & 1) == 0) {
    uVar3 = Alarm_get_StageUnlock_0x60012f7(0);
    lVar5 = *(long *)puVar1;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0(lVar5);
    }
    uStack_24 = Contents_Unlock_manager_Unlock_Stage_return(param_1);
    uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_24);
    uVar3 = String_Format_0x600029c(uVar3,uVar4,0);
    UI_manager_Alert_0x6000602(uVar3,0);
  }
  return uVar2 & 1;
}

