/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a835c4, Ghidra VA 02b835c4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long DamageTextManager_RequestHudNumber(long param_1)

{
  long *plVar1;
  long lVar2;
  
  if ((bRam000000000625b8e4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d730);
    bRam000000000625b8e4 = 1;
  }
  lVar2 = *(long *)(param_1 + 0x10);
  if (lVar2 == 0) {
    lVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5d730);
    Object__ctor_0x600100e(lVar2,0);
    *(int *)(param_1 + 0x24) = *(int *)(param_1 + 0x24) + 1;
    if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  else {
    *(undefined8 *)(param_1 + 0x10) = *(undefined8 *)(lVar2 + 0x20);
    Managed_WriteBarrier();
    *(ulong *)(param_1 + 0x20) =
         CONCAT44((int)((ulong)*(undefined8 *)(param_1 + 0x20) >> 0x20) +
                  (int)((ulong)_UNK_0116fbf8 >> 0x20),
                  (int)*(undefined8 *)(param_1 + 0x20) + (int)_UNK_0116fbf8);
  }
  plVar1 = (long *)(param_1 + 0x18);
  *(long *)(lVar2 + 0x20) = *plVar1;
  Managed_WriteBarrier();
  *plVar1 = lVar2;
  Managed_WriteBarrier(plVar1,lVar2);
  DamageTextObject_Reset_0x60000fe(lVar2);
  return lVar2;
}

