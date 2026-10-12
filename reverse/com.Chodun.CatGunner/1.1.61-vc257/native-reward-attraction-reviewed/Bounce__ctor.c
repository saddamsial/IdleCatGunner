/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9b078, Ghidra VA 02b9b078. */

void Bounce__ctor(long param_1)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = cRam000000000625b279;
  *(undefined4 *)(param_1 + 0x24) = 0x3f666666;
  *(undefined4 *)(param_1 + 0x2c) = 0x3e4ccccd;
  if (cVar1 == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b279 = '\x01';
  }
  uVar2 = *(undefined4 *)(*(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 0x14);
  *(undefined8 *)(param_1 + 0x38) =
       *(undefined8 *)(*(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 0xc);
  *(undefined4 *)(param_1 + 0x40) = uVar2;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

