/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3065c, Ghidra VA 02c3065c. */

long Relic_Draw_Panel_Draw_Single(undefined8 param_1,undefined8 param_2)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e63060;
  if ((bRam000000000625c028 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63060);
    bRam000000000625c028 = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  _Draw_Single_d__18__ctor_0x600068a(lVar2,0,0);
  if (lVar2 != 0) {
    *(undefined8 *)(lVar2 + 0x20) = param_1;
    Managed_WriteBarrier((undefined8 *)(lVar2 + 0x20),param_1);
    *(undefined8 *)(lVar2 + 0x28) = param_2;
    Managed_WriteBarrier((undefined8 *)(lVar2 + 0x28),param_2);
    return lVar2;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

