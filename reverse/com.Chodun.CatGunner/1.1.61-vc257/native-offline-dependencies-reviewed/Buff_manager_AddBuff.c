/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b376dc, Ghidra VA 02c376dc. */

void Buff_manager_AddBuff(long param_1,uint param_2)

{
  long lVar1;
  undefined4 uVar2;
  
  lVar1 = *(long *)(param_1 + 0x38);
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (param_2 < *(uint *)(lVar1 + 0x18)) {
    lVar1 = lVar1 + (long)(int)param_2 * 4;
    uVar2 = NEON_fminnm(*(float *)(lVar1 + 0x20) + 300.0,0x44610000);
    *(undefined4 *)(lVar1 + 0x20) = uVar2;
    Buff_manager_OnBuffChanged();
    Buff_manager_TryStartCoroutine(param_1);
    Buff_manager_Btn_UI_Reload(param_1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

