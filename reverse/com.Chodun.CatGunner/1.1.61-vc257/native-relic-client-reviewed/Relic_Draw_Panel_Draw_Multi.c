/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b306ec, Ghidra VA 02c306ec. */

long Relic_Draw_Panel_Draw_Multi(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e63068;
  if ((bRam000000000625c029 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63068);
    bRam000000000625c029 = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  _Draw_Multi_d__19__ctor_0x6000684(lVar2,0,0);
  if (lVar2 != 0) {
    *(undefined8 *)(lVar2 + 0x20) = param_1;
    Managed_WriteBarrier((undefined8 *)(lVar2 + 0x20),param_1);
    return lVar2;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

