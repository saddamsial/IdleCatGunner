/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6437c, Ghidra VA 02c6437c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Fish_Tank__ctor(long param_1)

{
  undefined8 uVar1;
  
  uVar1 = _UNK_01170a10;
  *(undefined8 *)(param_1 + 0x28) = 0x1e42c80000;
  *(undefined8 *)(param_1 + 0x30) = uVar1;
  *(undefined4 *)(param_1 + 0x38) = 0x3e19999a;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

