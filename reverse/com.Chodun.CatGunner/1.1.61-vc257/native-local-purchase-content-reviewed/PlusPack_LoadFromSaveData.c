/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b914e8, Ghidra VA 02c914e8. */

void PlusPack_LoadFromSaveData(undefined8 param_1,long param_2)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 *puVar5;
  long lVar6;
  long lVar7;
  ulong uVar8;
  
  puVar3 = PTR_DAT_05e64160;
  puVar2 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c3f3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64160);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c3f3 = 1;
  }
  uVar4 = func_0x029f5b40(*(undefined8 *)puVar3,3);
  lVar6 = *(long *)puVar2;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0(lVar6);
    lVar6 = *(long *)puVar2;
  }
  puVar5 = (undefined8 *)(*(long *)(lVar6 + 0xb8) + 8);
  *puVar5 = uVar4;
  Managed_WriteBarrier(puVar5,uVar4);
  if (((param_2 != 0) && (*(long *)(param_2 + 0x218) != 0)) &&
     (uVar1 = *(uint *)(*(long *)(param_2 + 0x218) + 0x18), 0 < (int)uVar1)) {
    uVar8 = 0;
    if (2 < (int)uVar1) {
      uVar1 = 3;
    }
    do {
      lVar6 = *(long *)puVar2;
      if (*(int *)(lVar6 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)puVar2;
      }
      lVar7 = *(long *)(param_2 + 0x218);
      if (lVar7 == 0) {
LAB_02c91610:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (*(uint *)(lVar7 + 0x18) <= uVar8) {
LAB_02c91614:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 8);
      uVar4 = LoadData_DateParseSafe_0x600047d(*(undefined8 *)(lVar7 + uVar8 * 8 + 0x20),0,0,0);
      if (lVar6 == 0) goto LAB_02c91610;
      if (*(uint *)(lVar6 + 0x18) <= uVar8) goto LAB_02c91614;
      lVar7 = uVar8 * 8;
      uVar8 = uVar8 + 1;
      *(undefined8 *)(lVar6 + lVar7 + 0x20) = uVar4;
    } while (uVar1 != uVar8);
  }
  return;
}

