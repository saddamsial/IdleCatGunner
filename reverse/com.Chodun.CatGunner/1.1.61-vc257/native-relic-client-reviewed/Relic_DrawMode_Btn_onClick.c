/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3040c, Ghidra VA 02c3040c. */

void Relic_DrawMode_Btn_onClick(long param_1)

{
  if (*(long *)(param_1 + 0x28) != 0) {
    *(undefined4 *)(*(long *)(param_1 + 0x28) + 0x60) = *(undefined4 *)(param_1 + 0x20);
    Relic_DownPanel_UI_Reload();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

