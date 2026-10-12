/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8c374, Ghidra VA 02c8c374. */

void DailyGun_popup_OnEnable(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  ulong uVar4;
  
  puVar1 = PTR_DAT_05e62660;
  if ((bRam000000000625c3b4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    bRam000000000625c3b4 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (**(long **)(lVar2 + 0xb8) != 0) {
    DailyGun_Week_Refresh_0x6000ccf();
    if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
      *(undefined8 *)(param_1 + 0x38) = *(undefined8 *)(**(long **)(*(long *)puVar1 + 0xb8) + 0x28);
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x38));
      lVar2 = *(long *)(param_1 + 0x20);
      if (lVar2 != 0) {
        uVar4 = 0;
        do {
          if ((long)(int)*(uint *)(lVar2 + 0x18) <= (long)uVar4) {
            DailyGun_popup_Panel_Reload(param_1);
            lVar2 = *(long *)(param_1 + 0x30);
            if (lVar2 != 0) {
              MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar2,0);
            }
            uVar3 = DailyGun_popup_Timer_Routine(param_1);
            uVar3 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar3,0);
            *(undefined8 *)(param_1 + 0x30) = uVar3;
            Managed_WriteBarrier((long *)(param_1 + 0x30));
            return;
          }
          if (*(uint *)(lVar2 + 0x18) <= uVar4) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          if (*(long *)(lVar2 + uVar4 * 8 + 0x20) != 0) {
            DailyGun_Item_First_Reload_0x6000cd7();
            lVar2 = *(long *)(param_1 + 0x20);
          }
          uVar4 = uVar4 + 1;
        } while (lVar2 != 0);
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

