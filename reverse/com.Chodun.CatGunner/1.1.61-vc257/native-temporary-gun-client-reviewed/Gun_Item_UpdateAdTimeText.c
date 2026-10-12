/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b707e4, Ghidra VA 02c707e4. */

void Gun_Item_UpdateAdTimeText(long param_1)

{
  int iVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 uVar4;
  long *plVar5;
  undefined8 uVar6;
  double dVar7;
  double dVar8;
  int iStack_38;
  int iStack_34;
  
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c2c5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e59000);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63b78);
    bRam000000000625c2c5 = 1;
  }
  uVar6 = *(undefined8 *)(param_1 + 0x60);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar6,0,0);
  if ((uVar3 & 1) != 0) {
    return;
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) {
    dVar7 = (double)Gun_manager_get_AD_Gun_RemainSec
                              (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8),0);
    dVar8 = 0.0;
    if (0.0 <= dVar7) {
      dVar8 = dVar7;
    }
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    puVar2 = PTR_DAT_05e58a10;
    plVar5 = *(long **)(param_1 + 0x60);
    iVar1 = -0x80000000;
    if ((double)(long)dVar8 != INFINITY) {
      iVar1 = (int)dVar8;
    }
    iStack_34 = iVar1 / 0x3c;
    uVar6 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
    iStack_38 = iVar1 % 0x3c;
    uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&iStack_38);
    uVar6 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e63b78,uVar6,uVar4,0);
    if (plVar5 != (long *)0x0) {
      (**(code **)(*plVar5 + 0x558))(plVar5,uVar6,*(undefined8 *)(*plVar5 + 0x560));
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

