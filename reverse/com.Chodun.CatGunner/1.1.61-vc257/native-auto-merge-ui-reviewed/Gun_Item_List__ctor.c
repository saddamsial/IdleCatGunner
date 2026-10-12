/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b77218, Ghidra VA 02c77218. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Gun_Item_List__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  
  puVar2 = PTR_DAT_05e63c90;
  puVar1 = PTR_DAT_05e63c88;
  if ((bRam000000000625c2f9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63c90);
    func_0x029f5a50(PTR_DAT_05e63c88);
    bRam000000000625c2f9 = 1;
  }
  uVar3 = *(undefined8 *)puVar1;
  *(undefined8 *)(param_1 + 0x30) = _UNK_0116fa88;
  *(undefined4 *)(param_1 + 0x38) = 0x3df5c28f;
  uVar3 = func_0x029f5cec(uVar3);
  func_0x0452c340(uVar3,*(undefined8 *)puVar2);
  *(undefined8 *)(param_1 + 0x40) = uVar3;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x40),uVar3);
  *(undefined8 *)(param_1 + 0x50) = 0xffffffffffffffff;
  *(undefined8 *)(param_1 + 0x58) = 0xffffffffffffffff;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

