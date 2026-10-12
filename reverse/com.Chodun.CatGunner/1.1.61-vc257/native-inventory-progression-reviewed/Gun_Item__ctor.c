/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b74cb4, Ghidra VA 02c74cb4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Gun_Item__ctor(long param_1)

{
  undefined8 uVar1;
  char cVar2;
  undefined4 uVar3;
  
  cVar2 = cRam000000000625b279;
  uVar1 = _UNK_0116da80;
  *(undefined8 *)(param_1 + 0x84) = _UNK_0116da88;
  *(undefined8 *)(param_1 + 0x7c) = uVar1;
  *(undefined8 *)(param_1 + 0x8c) = 0xffffffffffffffff;
  *(undefined4 *)(param_1 + 0xd8) = 0xffffffff;
  if (cVar2 == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b279 = '\x01';
  }
  uVar3 = *(undefined4 *)(*(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 0x14);
  *(undefined8 *)(param_1 + 0xf8) =
       *(undefined8 *)(*(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 0xc);
  *(undefined4 *)(param_1 + 0x100) = uVar3;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

