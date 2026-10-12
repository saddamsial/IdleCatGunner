/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1948, Ghidra VA 02cb1948. */

void Upgrade_Ingame_StopHold(long param_1)

{
  long *plVar1;
  
  plVar1 = (long *)(param_1 + 0xd0);
  if (*plVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,*plVar1,0);
    *(undefined8 *)(param_1 + 0xd0) = 0;
    if (iRam0000000006484da8 != 0) {
      func_0x02ae4790(1L << ((ulong)plVar1 >> 0xc & 0x3f),
                      ((ulong)plVar1 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
    }
    return;
  }
  return;
}

