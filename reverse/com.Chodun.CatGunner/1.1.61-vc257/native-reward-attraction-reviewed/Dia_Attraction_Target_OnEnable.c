/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b26e94, Ghidra VA 02c26e94. */

void Dia_Attraction_Target_OnEnable(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5e520;
  if ((bRam000000000625bfb7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e520);
    bRam000000000625bfb7 = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    Dia_Attraction_Target_Enable(**(long **)(*(long *)puVar1 + 0xb8),param_1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

