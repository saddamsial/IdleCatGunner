/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb19b8, Ghidra VA 02cb19b8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Upgrade_Ingame__ctor(long param_1)

{
  undefined8 uVar1;
  
  uVar1 = _UNK_01170008;
  *(undefined4 *)(param_1 + 0xc4) = 0xffffffff;
  *(undefined8 *)(param_1 + 0x90) = uVar1;
  *(undefined8 *)(param_1 + 0xbc) = 0xffffffffffffffff;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

