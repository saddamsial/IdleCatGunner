/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b430c4, Ghidra VA 02c430c4. */

/* WARNING: Possible PIC construction at 0x02c4317c: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x02c43180) */
/* WARNING: Removing unreachable block (ram,0x02c43200) */
/* WARNING: Removing unreachable block (ram,0x02c43214) */

void Cat__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  ulong uVar5;
  
  puVar3 = PTR_DAT_05e63280;
  puVar2 = PTR_DAT_05e63278;
  puVar1 = PTR_DAT_05e631d8;
  if ((bRam000000000625c0bc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e63280);
    func_0x029f5a50(PTR_DAT_05e63278);
    func_0x029f5a50(PTR_DAT_05e63268);
    func_0x029f5a50(PTR_DAT_05e63270);
    bRam000000000625c0bc = 1;
  }
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar2);
  func_0x045a69e0(uVar4,*(undefined8 *)puVar3);
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = uVar4;
  uVar5 = *(ulong *)(*(long *)puVar1 + 0xb8);
  if (iRam0000000006484da8 != 0) {
    func_0x02ae4790(1L << (uVar5 >> 0xc & 0x3f),(uVar5 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
  }
  return;
}

