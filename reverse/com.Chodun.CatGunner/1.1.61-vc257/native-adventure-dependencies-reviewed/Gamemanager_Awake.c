/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7b594, Ghidra VA 02b7b594. */

void Gamemanager_Awake(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  long lVar4;
  undefined8 *puVar5;
  undefined1 auStack_40 [32];
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625b899 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58a78);
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b899 = 1;
  }
  puVar1 = PTR_DAT_05e58a78;
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  puVar5 = (undefined8 *)(*(long *)(lVar4 + 0xb8) + 200);
  *puVar5 = param_1;
  Managed_WriteBarrier(puVar5,param_1);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar3 = Application_get_platform_0x600023c(0);
  if (iVar3 != 0xb) {
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar3 = Application_get_platform_0x600023c(0);
    if (iVar3 != 8) goto LAB_02b7b66c;
  }
  QualitySettings_set_vSyncCount_0x60004d1(0,0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Application_set_targetFrameRate_0x6000239(0x3c,0);
LAB_02b7b66c:
  TouchScreenKeyboard_set_hideInput_0x6000f00(1,0);
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  InfVal_ToPrecision_0x6000089(auStack_40,*(long *)(lVar4 + 0xb8) + 0x30,5,0);
  InfVal_ToPrecision_0x6000089(auStack_40,*(long *)(*(long *)puVar2 + 0xb8) + 0x70,5,0);
  Screen_set_sleepTimeout_0x6000449(0xffffffff,0);
  return;
}

