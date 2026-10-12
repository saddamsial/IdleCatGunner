/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b42f24, Ghidra VA 02c42f24. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat__ctor(long param_1)

{
  undefined8 uVar1;
  undefined *puVar2;
  undefined *puVar3;
  char cVar4;
  undefined8 uVar5;
  long lVar6;
  undefined8 uVar7;
  undefined4 uVar8;
  undefined8 uVar9;
  undefined8 uVar10;
  
  if ((bRam000000000625c0bb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63268);
    func_0x029f5a50(PTR_DAT_05e63270);
    bRam000000000625c0bb = 1;
  }
  uVar7 = _UNK_011703b8;
  uVar9 = NEON_fmov(0x41400000,4);
  *(undefined4 *)(param_1 + 0x20) = 0x40a00000;
  *(undefined8 *)(param_1 + 0xa4) = uVar7;
  uVar1 = _UNK_0116dc08;
  uVar7 = _UNK_0116dc00;
  *(undefined4 *)(param_1 + 0x128) = 0x24;
  *(undefined8 *)(param_1 + 0x134) = uVar1;
  *(undefined8 *)(param_1 + 300) = uVar7;
  uVar10 = _UNK_0116d4f8;
  uVar5 = _UNK_0116d4f0;
  *(undefined8 *)(param_1 + 0x120) = uVar9;
  puVar3 = PTR_DAT_05e63270;
  uVar1 = _UNK_0116d148;
  uVar7 = _UNK_0116d140;
  *(undefined8 *)(param_1 + 0x194) = 0x4040000041c80000;
  *(undefined8 *)(param_1 + 0x158) = uVar10;
  *(undefined8 *)(param_1 + 0x150) = uVar5;
  *(undefined8 *)(param_1 + 0x168) = uVar1;
  *(undefined8 *)(param_1 + 0x160) = uVar7;
  *(undefined4 *)(param_1 + 0x19c) = 0x40;
  *(undefined4 *)(param_1 + 0x1c0) = 0x41200000;
  cVar4 = cRam000000000625b26f;
  puVar2 = PTR_DAT_05e63268;
  uVar7 = _UNK_01170ab8;
  *(undefined4 *)(param_1 + 0x170) = 0x41000000;
  *(undefined8 *)(param_1 + 0x1b8) = uVar7;
  if (cVar4 == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b26f = '\x01';
  }
  lVar6 = *(long *)PTR_DAT_05e58bf8;
  uVar8 = *(undefined4 *)(*(undefined8 **)(lVar6 + 0xb8) + 1);
  *(undefined8 *)(param_1 + 0x1c4) = **(undefined8 **)(lVar6 + 0xb8);
  *(undefined4 *)(param_1 + 0x1cc) = uVar8;
  uVar5 = *(undefined8 *)puVar3;
  uVar7 = **(undefined8 **)(lVar6 + 0xb8);
  uVar8 = *(undefined4 *)(*(undefined8 **)(lVar6 + 0xb8) + 1);
  *(undefined1 *)(param_1 + 0x1f8) = 1;
  *(undefined8 *)(param_1 + 0x1d0) = uVar7;
  uVar1 = _UNK_0116f248;
  uVar7 = _UNK_0116f240;
  *(undefined4 *)(param_1 + 0x1d8) = uVar8;
  uVar10 = **(undefined8 **)(lVar6 + 0xb8);
  uVar8 = *(undefined4 *)(*(undefined8 **)(lVar6 + 0xb8) + 1);
  *(undefined8 *)(param_1 + 0x220) = uVar1;
  *(undefined8 *)(param_1 + 0x218) = uVar7;
  *(undefined4 *)(param_1 + 0x228) = 0x41000000;
  *(undefined8 *)(param_1 + 0x20c) = uVar10;
  *(undefined4 *)(param_1 + 0x214) = uVar8;
  uVar7 = func_0x029f5cec(uVar5);
  func_0x037167c8(uVar7,*(undefined8 *)puVar2);
  *(undefined8 *)(param_1 + 0x240) = uVar7;
  func_0x029f59f4(param_1 + 0x240,uVar7);
  uVar7 = _UNK_011703c0;
  *(undefined4 *)(param_1 + 0x268) = 0xffffffff;
  *(undefined8 *)(param_1 + 0x298) = uVar7;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

