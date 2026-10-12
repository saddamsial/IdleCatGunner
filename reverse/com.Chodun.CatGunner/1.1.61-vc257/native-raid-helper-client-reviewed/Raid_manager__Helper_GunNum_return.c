/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b44548, Ghidra VA 02c44548. */

int Raid_manager__Helper_GunNum_return(void)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  uint uVar5;
  ulong uVar6;
  long lVar7;
  long lVar8;
  undefined8 uVar9;
  
  puVar3 = PTR_DAT_05e5dd40;
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c1c7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e632d0);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1c7 = 1;
  }
  uVar9 = **(undefined8 **)(*(long *)puVar3 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar9,0,0);
  if ((uVar6 & 1) != 0) {
    lVar7 = **(long **)(*(long *)puVar3 + 0xb8);
    if (lVar7 == 0) {
LAB_02c446b0:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    lVar7 = *(long *)(lVar7 + 0x20);
    if (lVar7 != 0) {
      if (*(int *)(*(long *)PTR_DAT_05e5e070 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      iVar4 = Raid_manager_Buff_GunType_Now_0x6000928();
      iVar1 = *(int *)(lVar7 + 0x18);
      uVar6 = 0;
      if (iVar1 < 0x33) {
        iVar1 = 0x32;
      }
      do {
        if (iVar1 - 0x32 == uVar6) break;
        lVar8 = *(long *)(lVar7 + 0x1b0 + uVar6 * 8);
        if (lVar8 == 0) goto LAB_02c446b0;
        if (*(int *)(lVar8 + 0x18) == iVar4) {
          return (int)uVar6 + 0x32;
        }
        uVar6 = uVar6 + 1;
      } while (uVar6 != 5);
      if (*(int *)(*(long *)PTR_DAT_05e632d0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = GunTypeCode__From(iVar4,0);
      if (3 < (int)uVar5) {
        uVar5 = 4;
      }
      iVar1 = (uVar5 & ((int)uVar5 >> 0x1f ^ 0xffffffffU)) + 0x32;
      if (iVar1 < *(int *)(lVar7 + 0x18)) {
        return iVar1;
      }
      return -1;
    }
  }
  return -1;
}

