/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38cd0, Ghidra VA 02c38cd0. */

void Cat_Awake(long param_1)

{
  undefined *puVar1;
  long lVar2;
  long *plVar3;
  
  if ((bRam000000000625c087 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    bRam000000000625c087 = 1;
  }
  puVar1 = PTR_DAT_05e631d8;
  if (*(char *)(param_1 + 0x1b0) != '\0') {
    return;
  }
  lVar2 = *(long *)PTR_DAT_05e631d8;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  plVar3 = (long *)(*(long *)(lVar2 + 0xb8) + 0x68);
  *plVar3 = param_1;
  if (iRam0000000006484da8 != 0) {
    func_0x02ae4790(1L << ((ulong)plVar3 >> 0xc & 0x3f),
                    ((ulong)plVar3 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
  }
  return;
}

