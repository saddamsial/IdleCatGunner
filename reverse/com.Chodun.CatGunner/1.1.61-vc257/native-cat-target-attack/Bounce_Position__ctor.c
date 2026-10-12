/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9c2e8, Ghidra VA 02b9c2e8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Bounce_Position__ctor(long param_1)

{
  undefined8 uVar1;
  char cVar2;
  undefined4 uVar3;
  
  cVar2 = cRam000000000625b26f;
  uVar1 = _UNK_0116ece0;
  *(undefined8 *)(param_1 + 0x2c) = _UNK_0116ece8;
  *(undefined8 *)(param_1 + 0x24) = uVar1;
  if (cVar2 == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b26f = '\x01';
  }
  uVar3 = *(undefined4 *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
  *(undefined8 *)(param_1 + 0x3c) = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
  *(undefined4 *)(param_1 + 0x44) = uVar3;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

