/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4563c, Ghidra VA 02c4563c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Boss__ctor(long param_1)

{
  undefined8 uVar1;
  
  uVar1 = _UNK_0116dfc0;
  *(undefined8 *)(param_1 + 0x60) = _UNK_0116dfc8;
  *(undefined8 *)(param_1 + 0x58) = uVar1;
  *(undefined8 *)(param_1 + 0x68) = 0xa40800000;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

