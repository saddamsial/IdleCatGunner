/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba300c, Ghidra VA 02ca300c. */

void StepUp_Hud_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e5e4b8;
  if ((bRam000000000625c4a8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    bRam000000000625c4a8 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  uVar5 = **(undefined8 **)(lVar3 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar4 & 1) == 0) {
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    if (**(long **)(lVar3 + 0xb8) == 0) goto LAB_02ca3174;
    uVar4 = StepUp_Banner_ShouldShow();
    if ((uVar4 & 1) != 0) {
      lVar3 = *(long *)puVar2;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar2;
      }
      if (**(long **)(lVar3 + 0xb8) != 0) {
        StepUp_StepUp_Start();
        lVar3 = Component_get_gameObject_0x6000c83(param_1,0);
        if (lVar3 != 0) {
          GameObject_SetActive_0x6000cfe(lVar3,1,0);
          StepUp_Hud_Time_Reload(param_1);
          lVar3 = *(long *)(param_1 + 0x30);
          if (lVar3 != 0) {
            MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar3,0);
          }
          uVar5 = StepUp_Hud_Timer_co(param_1);
          uVar5 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar5,0);
          *(undefined8 *)(param_1 + 0x30) = uVar5;
          Managed_WriteBarrier((long *)(param_1 + 0x30));
          return;
        }
      }
      goto LAB_02ca3174;
    }
  }
  lVar3 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar3 != 0) {
    GameObject_SetActive_0x6000cfe(lVar3,0,0);
    return;
  }
LAB_02ca3174:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

