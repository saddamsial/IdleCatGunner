/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b41c7c, Ghidra VA 02c41c7c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_CalcBulletDir(float param_1,undefined1 param_2 [16],float param_3,float param_4,
                      undefined1 param_5 [16],float param_6)

{
  undefined8 uVar1;
  float fVar2;
  
  fVar2 = (param_4 - param_1) * (param_4 - param_1) + (param_6 - param_3) * (param_6 - param_3);
  if (fVar2 <= _UNK_0116c200) {
    if (cRam000000000625b5d7 == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b5d7 = '\x01';
    }
    uVar1 = *(undefined8 *)PTR_DAT_05e58bf8;
  }
  else {
    if (cRam000000000625b52e == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625b52e = '\x01';
    }
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if (SQRT(fVar2) <= _UNK_0116c240) {
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      uVar1 = *(undefined8 *)PTR_DAT_05e58bf8;
    }
  }
  return;
}

