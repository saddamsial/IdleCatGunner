/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6b244, Ghidra VA 02c6b244. */

void Safe_HUD_Reload(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c28b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c28b = 1;
  }
  uVar2 = Safe_HUD_get_Is_Unlocked();
  lVar4 = *(long *)puVar1;
  uVar5 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0(lVar4);
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar3 & 1) != 0) {
    if (*(long *)(param_1 + 0x28) == 0) goto LAB_02c6b31c;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),(uVar2 ^ 0xffffffff) & 1,0);
  }
  uVar5 = *(undefined8 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar3 & 1) != 0) {
    if (*(long *)(param_1 + 0x20) == 0) {
LAB_02c6b31c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),0,0);
  }
  Safe_HUD_SetHover(param_1,0);
  return;
}

