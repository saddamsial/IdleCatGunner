/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baeb40, Ghidra VA 02caeb40. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void TutorialArrow_UI__ctor(long param_1)

{
  undefined8 uVar1;
  char cVar2;
  
  cVar2 = cRam000000000625b271;
  *(undefined8 *)(param_1 + 0x30) = _UNK_0116ff50;
  if (cVar2 == '\0') {
    func_0x029f5a50(PTR_DAT_05e59608);
    cRam000000000625b271 = '\x01';
  }
  uVar1 = _UNK_01170b88;
  *(undefined8 *)(param_1 + 0x38) = **(undefined8 **)(*(long *)PTR_DAT_05e59608 + 0xb8);
  *(undefined8 *)(param_1 + 0x40) = uVar1;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

