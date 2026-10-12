/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6b984, Ghidra VA 02c6b984. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Safe_HUD__ctor(long param_1)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = cRam000000000625b279;
  *(undefined8 *)(param_1 + 0x30) = _UNK_01170318;
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

