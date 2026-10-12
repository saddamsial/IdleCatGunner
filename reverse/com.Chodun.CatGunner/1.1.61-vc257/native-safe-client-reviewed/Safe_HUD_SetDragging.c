/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6b68c, Ghidra VA 02c6b68c. */

void Safe_HUD_SetDragging(long param_1,ulong param_2)

{
  undefined *puVar1;
  uint uVar2;
  ulong uVar3;
  undefined8 uVar4;
  long lVar5;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c28c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c28c = 1;
  }
  uVar4 = *(undefined8 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) != 0) {
    lVar5 = *(long *)(param_1 + 0x20);
    if ((param_2 & 1) == 0) {
      uVar2 = 0;
    }
    else {
      uVar2 = Safe_HUD_get_Is_Unlocked();
    }
    if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    GameObject_SetActive_0x6000cfe(lVar5,uVar2 & 1,0);
  }
  if ((param_2 & 1) != 0) {
    return;
  }
  Safe_HUD_SetHover(param_1,0);
  return;
}

