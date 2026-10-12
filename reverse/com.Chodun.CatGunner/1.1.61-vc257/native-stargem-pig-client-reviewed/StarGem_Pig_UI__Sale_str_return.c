/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba244c, Ghidra VA 02ca244c. */

void StarGem_Pig_UI__Sale_str_return(int param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  undefined4 uStack_24;
  
  puVar1 = PTR_DAT_05e648b8;
  if ((bRam000000000625c490 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e648b8);
    func_0x029f5a50(PTR_DAT_05e648e8);
    bRam000000000625c490 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (2 < param_1) {
    param_1 = 3;
  }
  if (param_1 < 2) {
    param_1 = 1;
  }
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  puVar1 = PTR_DAT_05e648e8;
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 8);
  if (lVar2 != 0) {
    if (param_1 - 1U < *(uint *)(lVar2 + 0x18)) {
      uStack_24 = *(undefined4 *)(lVar2 + (ulong)(param_1 - 1U) * 4 + 0x20);
      uVar3 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_24);
      String_Format_0x600029c(*(undefined8 *)puVar1,uVar3,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

