/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a83b64, Ghidra VA 02b83b64. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void DamageTextManager_ReleaseDamageTextObject(long param_1,long param_2)

{
  long *plVar1;
  
  if (param_2 != 0) {
    DamageTextObject_ReleaseSprites_0x60000ff(param_2);
    plVar1 = (long *)(param_1 + 0x10);
    *(long *)(param_2 + 0x20) = *plVar1;
    Managed_WriteBarrier();
    *plVar1 = param_2;
    Managed_WriteBarrier(plVar1,param_2);
    *(ulong *)(param_1 + 0x20) =
         CONCAT44((int)((ulong)*(undefined8 *)(param_1 + 0x20) >> 0x20) +
                  (int)((ulong)_UNK_011706d0 >> 0x20),
                  (int)*(undefined8 *)(param_1 + 0x20) + (int)_UNK_011706d0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

