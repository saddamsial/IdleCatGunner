/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6c35c, Ghidra VA 02c6c35c. */

bool Safe_manager_Can_Purchase(long param_1,uint param_2)

{
  uint uVar1;
  undefined *puVar2;
  bool bVar3;
  int iVar4;
  long lVar5;
  
  if ((bRam000000000625c294 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c294 = 1;
  }
  puVar2 = PTR_DAT_05e5d338;
  bVar3 = false;
  uVar1 = *(int *)(param_1 + 0x28) + 6;
  if (0xf < (int)uVar1) {
    uVar1 = 0x10;
  }
  if (((int)param_2 < 0x10) && ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) == param_2)) {
    lVar5 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar2;
    }
    iVar4 = ObscuredInt_op_Implicit_0x6000412
                      (*(undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x90),
                       *(undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x98),0);
    bVar3 = *(int *)(param_1 + 0x28) * 0x32 + 0x32 <= iVar4;
  }
  return bVar3;
}

