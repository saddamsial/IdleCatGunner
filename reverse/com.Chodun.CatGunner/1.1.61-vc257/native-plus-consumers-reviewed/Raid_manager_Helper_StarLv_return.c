/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b51b44, Ghidra VA 02c51b44. */

int Raid_manager_Helper_StarLv_return(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  long lVar5;
  ulong uVar6;
  long lVar7;
  int iVar8;
  undefined8 uVar9;
  int iVar10;
  
  puVar3 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1c8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5e058);
    bRam000000000625c1c8 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar5 = *(long *)puVar3;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar3;
  }
  lVar7 = *(long *)puVar1;
  uVar9 = **(undefined8 **)(lVar5 + 0xb8);
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0(lVar7);
  }
  uVar6 = Object_op_Equality_0x6000dec(uVar9,0,0);
  puVar2 = PTR_DAT_05e5e058;
  if ((uVar6 & 1) == 0) {
    lVar5 = *(long *)PTR_DAT_05e5e058;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar2;
    }
    lVar7 = *(long *)puVar1;
    uVar9 = **(undefined8 **)(lVar5 + 0xb8);
    if (*(int *)(lVar7 + 0xe4) == 0) {
      func_0x029f5bd0(lVar7);
    }
    uVar6 = Object_op_Equality_0x6000dec(uVar9,0,0);
    if ((uVar6 & 1) == 0) {
      iVar8 = 0;
      iVar10 = 0x7fffffff;
      while( true ) {
        lVar5 = *(long *)puVar3;
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar3;
        }
        if ((**(long **)(lVar5 + 0xb8) == 0) ||
           (lVar5 = *(long *)(**(long **)(lVar5 + 0xb8) + 0x88), lVar5 == 0)) break;
        if (*(int *)(lVar5 + 0x18) <= iVar8) {
          if (iVar10 == 0x7fffffff) {
            return 0;
          }
          return iVar10;
        }
        lVar5 = *(long *)puVar2;
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar2;
        }
        if (**(long **)(lVar5 + 0xb8) == 0) break;
        iVar4 = StarUpgrade_manager_Lv_return_0x6000ade(**(long **)(lVar5 + 0xb8),iVar8,0);
        iVar8 = iVar8 + 1;
        if (iVar4 <= iVar10) {
          iVar10 = iVar4;
        }
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return 0;
}

