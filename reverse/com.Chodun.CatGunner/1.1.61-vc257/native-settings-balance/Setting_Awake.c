/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1ffc0, Ghidra VA 02c1ffc0. */

void Setting_Awake(undefined8 param_1)

{
  undefined *puVar1;
  undefined8 *puVar2;
  
  puVar1 = PTR_DAT_05e62670;
  if ((bRam000000000625bf51 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62670);
    bRam000000000625bf51 = 1;
  }
  puVar2 = (undefined8 *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
  *puVar2 = param_1;
  if (iRam0000000006484da8 != 0) {
    func_0x02ae4790(1L << ((ulong)puVar2 >> 0xc & 0x3f),
                    ((ulong)puVar2 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
  }
  return;
}

