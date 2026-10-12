/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6197c, Ghidra VA 02c6197c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Fish_Item_PickNewDirection(long param_1)

{
  float fVar1;
  float fVar2;
  undefined8 uVar3;
  float fVar4;
  
  fVar2 = (float)Random_get_value_0x6000ba9(0);
  fVar1 = 1.0;
  if (fVar2 <= 0.5) {
    fVar1 = -1.0;
  }
  fVar2 = (float)Random_Range_0x6000ba6(_UNK_0116c1bc,_UNK_0116c190,0);
  if (cRam000000000625b52c == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b52c = '\x01';
  }
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  fVar4 = SQRT(fVar2 * fVar2 + 1.0);
  if (fVar4 <= _UNK_0116c240) {
    if (cRam000000000625b271 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59608);
      cRam000000000625b271 = '\x01';
    }
    uVar3 = **(undefined8 **)(*(long *)PTR_DAT_05e59608 + 0xb8);
  }
  else {
    uVar3 = CONCAT44(fVar2 / fVar4,fVar1 / fVar4);
  }
  *(undefined8 *)(param_1 + 0xb4) = uVar3;
  Fish_Item_UpdateFlip(param_1);
  return;
}

