/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b478e0, Ghidra VA 02c478e0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Boss_manager__ctor(long param_1)

{
  undefined8 uVar1;
  
  uVar1 = _UNK_0116fb78;
  *(undefined4 *)(param_1 + 0x84) = 0x42700000;
  *(undefined4 *)(param_1 + 0x98) = 0;
  *(undefined8 *)(param_1 + 0x90) = uVar1;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

