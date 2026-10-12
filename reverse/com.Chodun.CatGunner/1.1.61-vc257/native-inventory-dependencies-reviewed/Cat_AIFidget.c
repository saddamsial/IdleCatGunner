/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b40cb4, Ghidra VA 02c40cb4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_AIFidget(long param_1)

{
  float fVar1;
  undefined4 uVar2;
  float fVar3;
  float fStack_28;
  float fStack_24;
  
  fVar3 = *(float *)(param_1 + 0x250);
  fVar1 = (float)Time_get_deltaTime_0x6000ee5(0);
  fVar3 = fVar3 + fVar1;
  *(float *)(param_1 + 0x250) = fVar3;
  uVar2 = _UNK_0116c07c;
  if (*(float *)(param_1 + 0x254) <= fVar3) {
    *(undefined4 *)(param_1 + 0x250) = 0;
    uVar2 = Random_Range_0x6000ba6(uVar2,0x40600000,0);
    *(undefined4 *)(param_1 + 0x254) = uVar2;
    fVar1 = (float)Random_Range_0x6000ba6(0,0x43b40000,0);
    fVar1 = fVar1 * _UNK_0116c26c;
    fVar3 = (float)Random_Range_0x6000ba6(_UNK_0116c190,_UNK_0116bf64,0);
    func_0x05afb270(fVar1,&fStack_24,&fStack_28);
    *(undefined4 *)(param_1 + 0x25c) = 0;
    *(float *)(param_1 + 600) = fVar3 * fStack_24;
    *(float *)(param_1 + 0x260) = fVar3 * fStack_28;
  }
  return;
}

