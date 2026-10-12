/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7719c, Ghidra VA 02b7719c. */

void DOTweenAnimation_OnDestroy(long param_1)

{
  long lVar1;
  long *plVar2;
  
  plVar2 = (long *)(param_1 + 0x68);
  lVar1 = *plVar2;
  if ((lVar1 != 0) && (*(char *)(lVar1 + 0xe8) != '\0')) {
    TweenExtensions_Kill_0x60000a6(lVar1,0,0);
  }
  *plVar2 = 0;
  Managed_WriteBarrier(plVar2,0);
  return;
}

