/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba3518, Ghidra VA 02ca3518. */

void StepUp_LoadFromSaveData(long param_1,long param_2)

{
  undefined8 uVar1;
  ulong uVar2;
  long lVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  
  if (param_2 == 0) {
    return;
  }
  lVar6 = *(long *)(param_2 + 0x3d0);
  if (lVar6 != 0) {
    uVar5 = *(ulong *)(lVar6 + 0x18);
    uVar4 = (uint)uVar5;
    if (0 < (int)uVar4) {
      lVar3 = *(long *)(param_1 + 0x38);
      uVar2 = 0;
      if (4 < (int)uVar4) {
        uVar4 = 5;
      }
      do {
        if ((uVar5 & 0xffffffff) == uVar2) {
LAB_02ca35b4:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        if (*(uint *)(lVar3 + 0x18) <= uVar2) goto LAB_02ca35b4;
        *(undefined1 *)(lVar3 + 0x20 + uVar2) = *(undefined1 *)(lVar6 + 0x20 + uVar2);
        uVar2 = uVar2 + 1;
      } while (uVar4 != uVar2);
    }
  }
  uVar1 = LoadData_DateParseSafe_0x600047d(*(undefined8 *)(param_2 + 0x3d8),0,0,0);
  *(undefined8 *)(param_1 + 0x40) = uVar1;
  StepUp_Hud_Reload(param_1);
  return;
}

