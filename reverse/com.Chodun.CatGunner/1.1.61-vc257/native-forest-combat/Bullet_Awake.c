/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b652a0, Ghidra VA 02c652a0. */

void Bullet_Awake(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  undefined8 *puVar3;
  
  puVar1 = PTR_DAT_05e613d0;
  if ((bRam000000000625c248 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e613d0);
    bRam000000000625c248 = 1;
  }
  uVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar1);
  puVar3 = (undefined8 *)(param_1 + 0x80);
  *puVar3 = uVar2;
  if (iRam0000000006484da8 != 0) {
    func_0x02ae4790(1L << ((ulong)puVar3 >> 0xc & 0x3f),
                    ((ulong)puVar3 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
  }
  return;
}

