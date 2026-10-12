/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4a944, Ghidra VA 02c4a944. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Mine_manager__ctor(long param_1)

{
  char cVar1;
  undefined8 uVar2;
  undefined4 uVar3;
  
  *(undefined4 *)(param_1 + 0x78) = 0x42700000;
  uVar2 = _UNK_0116fb78;
  *(undefined4 *)(param_1 + 0xa0) = 100;
  cVar1 = cRam000000000625b26f;
  *(undefined4 *)(param_1 + 0x90) = 0;
  *(undefined8 *)(param_1 + 0x88) = uVar2;
  *(undefined8 *)(param_1 + 0x10c) = 0x4100000041a00000;
  if (cVar1 == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b26f = '\x01';
  }
  uVar3 = *(undefined4 *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
  uVar2 = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
  *(undefined8 *)(param_1 + 0x120) = _UNK_0116fc18;
  *(undefined4 *)(param_1 + 0x11c) = uVar3;
  *(undefined8 *)(param_1 + 0x114) = uVar2;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

