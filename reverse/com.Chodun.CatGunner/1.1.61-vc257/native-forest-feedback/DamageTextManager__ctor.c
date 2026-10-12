/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a83344, Ghidra VA 02b83344. */

void DamageTextManager__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  char cVar3;
  undefined8 uVar4;
  long lVar5;
  undefined4 uVar6;
  
  puVar2 = PTR_DAT_05e5d728;
  puVar1 = PTR_DAT_05e5d720;
  if ((bRam000000000625b8e2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d728);
    func_0x029f5a50(PTR_DAT_05e5d720);
    bRam000000000625b8e2 = 1;
  }
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  func_0x03e3f490(uVar4,*(undefined8 *)puVar2);
  *(undefined8 *)(param_1 + 0x30) = uVar4;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x30),uVar4);
  cVar3 = cRam000000000625b95b;
  *(undefined4 *)(param_1 + 0x3c) = 0xffffffff;
  if (cVar3 == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b95b = '\x01';
  }
  cVar3 = cRam000000000625b61d;
  puVar1 = PTR_DAT_05e58bf8;
  lVar5 = *(long *)PTR_DAT_05e58bf8;
  uVar6 = *(undefined4 *)(*(long *)(lVar5 + 0xb8) + 0x44);
  *(undefined8 *)(param_1 + 0x40) = *(undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x3c);
  *(undefined4 *)(param_1 + 0x48) = uVar6;
  if (cVar3 == '\0') {
    func_0x029f5a50(puVar1);
    lVar5 = *(long *)puVar1;
    cRam000000000625b61d = '\x01';
  }
  uVar6 = *(undefined4 *)(*(long *)(lVar5 + 0xb8) + 0x20);
  *(undefined8 *)(param_1 + 0x4c) = *(undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x18);
  *(undefined4 *)(param_1 + 0x54) = uVar6;
  Object__ctor_0x600100e(param_1,0);
  return;
}

