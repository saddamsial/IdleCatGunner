/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b30a08, Ghidra VA 02c30a08. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Relic_Draw_Panel__ctor(long param_1)

{
  *(undefined8 *)(param_1 + 0x58) = _UNK_0116fb70;
  *(undefined4 *)(param_1 + 0x60) = 0x3e99999a;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

