/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2cf8c, Ghidra VA 02c2cf8c. */

void Adventure_manager_Exp_Balance_Reload(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  uint uVar5;
  ulong uVar6;
  int iVar7;
  long *plVar8;
  
  puVar2 = PTR_DAT_05e5d790;
  if ((bRam000000000625c000 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c000 = 1;
  }
  lVar3 = func_0x029f5b40(*(undefined8 *)puVar2,0xf);
  plVar8 = (long *)(param_1 + 0x38);
  *plVar8 = lVar3;
  Managed_WriteBarrier(plVar8,lVar3);
  lVar3 = *plVar8;
  if (lVar3 != 0) {
    uVar6 = *(ulong *)(lVar3 + 0x18);
    uVar5 = (uint)uVar6;
    if (0 < (int)uVar5) {
      uVar4 = 0;
      iVar7 = 0x14;
      do {
        if ((uVar6 & 0xffffffff) == uVar4) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        iVar1 = iVar7 * (int)uVar4;
        iVar7 = iVar7 + 3;
        *(int *)(lVar3 + 0x20 + uVar4 * 4) = iVar1 + 0x32;
        uVar4 = uVar4 + 1;
      } while ((uVar5 & ((int)uVar5 >> 0x1f ^ 0xffffffffU)) != uVar4);
    }
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

