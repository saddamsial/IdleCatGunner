/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2ff28, Ghidra VA 02c2ff28. */

void Draw_Relic_Btn_onClick(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d4d8;
  if ((bRam000000000625c025 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    bRam000000000625c025 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if ((*(long *)(param_1 + 0x28) != 0) &&
     (lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x70), lVar2 != 0)) {
    Relic_manager_Relic_Draw
              (lVar2,*(undefined4 *)(*(long *)(param_1 + 0x28) + 0x60),
               *(undefined4 *)(param_1 + 0x24),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

