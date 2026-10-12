/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7b6dc, Ghidra VA 02b7b6dc. */

void Gamemanager_Start(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long lVar4;
  undefined4 uVar5;
  
  puVar2 = PTR_DAT_05e5d340;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625b89a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5d340);
    func_0x029f5a50(PTR_DAT_05e5d348);
    bRam000000000625b89a = 1;
  }
  uVar3 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar3,param_1,*(undefined8 *)puVar2,0);
  ObscuredCheatingDetector_StartDetection_0x600074a(uVar3,0);
  lVar4 = SaveSystem_Load_0x600048f(0);
  if (lVar4 == 0) {
    LoadData_Load_0x600047a(0,0);
  }
  else {
    LoadData_Load_0x600047a(lVar4,0);
  }
  puVar1 = PTR_DAT_05e5d348;
  uVar5 = Time_get_realtimeSinceStartup_0x6000ef0(0);
  *(undefined4 *)(param_1 + 0x30) = uVar5;
  uVar3 = Gamemanager_AutoSaveRoutine_0x600006b();
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar3,0);
  uVar3 = Gamemanager_CleanupTextCooldowns_0x6000089();
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar3,0);
  Gamemanager_Time_Hacker_Check_0x6000057(param_1);
  uVar3 = Gamemanager_NetWatch_0x6000062(param_1);
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar3,0);
  uVar3 = Gamemanager_ClockJumpWatch_0x6000063(param_1);
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar3,0);
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    Notification_manager_Init_0x600039d(**(long **)(*(long *)puVar1 + 0xb8),0);
    return;
  }
  return;
}

