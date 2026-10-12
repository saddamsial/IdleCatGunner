/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b79914, Ghidra VA 02c79914. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Gun_Slot__ctor(long param_1)

{
  char cVar1;
  long lVar2;
  long lVar3;
  undefined4 uVar4;
  float fVar5;
  undefined8 uVar6;
  
  cVar1 = cRam000000000625b279;
  *(undefined8 *)(param_1 + 0x90) = _UNK_0116fa90;
  if (cVar1 == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b279 = '\x01';
  }
  lVar2 = *(long *)PTR_DAT_05e58bf8;
  lVar3 = *(long *)(lVar2 + 0xb8);
  uVar4 = *(undefined4 *)(lVar3 + 0x14);
  *(undefined8 *)(param_1 + 0xa0) = *(undefined8 *)(lVar3 + 0xc);
  *(undefined4 *)(param_1 + 0xa8) = uVar4;
  lVar2 = *(long *)(lVar2 + 0xb8);
  uVar6 = *(undefined8 *)(lVar2 + 0xc);
  fVar5 = *(float *)(lVar2 + 0x14) * _UNK_0116c27c;
  *(undefined4 *)(param_1 + 0xb8) = 0x3e19999a;
  *(ulong *)(param_1 + 0xac) = CONCAT44((float)((ulong)uVar6 >> 0x20) * 1.05,(float)uVar6 * 1.05);
  *(float *)(param_1 + 0xb4) = fVar5;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

