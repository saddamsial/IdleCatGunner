/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb2b50, Ghidra VA 02cb2b50. */

long Upgrade_manager_SaveData_return(long param_1)

{
  undefined *puVar1;
  undefined4 uVar2;
  long lVar3;
  uint uVar4;
  long lVar5;
  long lVar6;
  
  puVar1 = PTR_DAT_05e5d790;
  if ((bRam000000000625c557 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c557 = 1;
  }
  lVar3 = func_0x029f5b40(*(undefined8 *)puVar1,3);
  if (lVar3 != 0) {
    if (0 < *(int *)(lVar3 + 0x18)) {
      lVar6 = 0;
      do {
        lVar5 = *(long *)(param_1 + 0x20);
        if (lVar5 == 0) goto LAB_02cb2c0c;
        if (*(uint *)(lVar5 + 0x18) <= (uint)lVar6) {
LAB_02cb2c10:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar5 = *(long *)(lVar5 + lVar6 * 8 + 0x20);
        if (lVar5 == 0) goto LAB_02cb2c0c;
        uVar2 = ObscuredInt_op_Implicit_0x6000412
                          (*(undefined8 *)(lVar5 + 0x18),*(undefined8 *)(lVar5 + 0x20),0);
        uVar4 = (uint)*(undefined8 *)(lVar3 + 0x18);
        if (uVar4 <= (uint)lVar6) goto LAB_02cb2c10;
        *(undefined4 *)(lVar3 + 0x20 + lVar6 * 4) = uVar2;
        lVar6 = lVar6 + 1;
      } while ((int)lVar6 < (int)uVar4);
    }
    return lVar3;
  }
LAB_02cb2c0c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

