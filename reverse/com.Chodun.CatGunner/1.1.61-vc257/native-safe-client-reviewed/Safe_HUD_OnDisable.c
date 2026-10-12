/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6b320, Ghidra VA 02c6b320. */

void Safe_HUD_OnDisable(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625c289 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c289 = 1;
  }
  lVar3 = *(long *)(param_1 + 0x48);
  if (lVar3 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar3,0);
    *(undefined8 *)(param_1 + 0x48) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x48),0);
  }
  lVar3 = Component_get_transform_0x6000c82(param_1,0);
  puVar1 = PTR_DAT_05e591c0;
  if (lVar3 != 0) {
    Transform_set_localScale_0x6000f5e
              (*(undefined4 *)(param_1 + 0x38),*(undefined4 *)(param_1 + 0x3c),
               *(undefined4 *)(param_1 + 0x40),lVar3,0);
    lVar3 = *(long *)puVar1;
    uVar4 = *(undefined8 *)(param_1 + 0x20);
    *(undefined1 *)(param_1 + 0x50) = 0;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Inequality_0x6000ded(uVar4,0,0);
    if ((uVar2 & 1) == 0) {
      return;
    }
    if (*(long *)(param_1 + 0x20) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),0,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

