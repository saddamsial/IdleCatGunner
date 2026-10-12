/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4ffc4, Ghidra VA 02c4ffc4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Monster_manager__ctor(long param_1)

{
  undefined8 uVar1;
  
  uVar1 = _UNK_0116fb78;
  *(undefined4 *)(param_1 + 0x80) = 0xffffffff;
  *(undefined4 *)(param_1 + 0xf0) = 0;
  *(undefined8 *)(param_1 + 0xe8) = uVar1;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

