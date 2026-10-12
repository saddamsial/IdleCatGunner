/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1884, Ghidra VA 02cb1884. */

void Upgrade_Ingame_OnPointerDown(long param_1)

{
  undefined8 uVar1;
  long *plVar2;
  
  plVar2 = (long *)(param_1 + 0xd0);
  if (*plVar2 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,*plVar2,0);
  }
  uVar1 = Upgrade_Ingame_HoldUpgradeRoutine(param_1);
  uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  *(undefined8 *)(param_1 + 0xd0) = uVar1;
  if (iRam0000000006484da8 != 0) {
    func_0x02ae4790(1L << ((ulong)plVar2 >> 0xc & 0x3f),
                    ((ulong)plVar2 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
  }
  return;
}

