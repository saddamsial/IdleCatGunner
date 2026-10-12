/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b26dc0, Ghidra VA 02c26dc0. */

void Dia_Attraction_Target_Disable(long param_1,undefined8 param_2)

{
  long lVar1;
  undefined8 uVar2;
  long lVar3;
  
  if ((bRam000000000625bfb5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62d40);
    func_0x029f5a50(PTR_DAT_05e62d28);
    func_0x029f5a50(PTR_DAT_05e62d30);
    bRam000000000625bfb5 = 1;
  }
  if (*(long *)(param_1 + 0x28) != 0) {
    func_0x0452e0a8(*(long *)(param_1 + 0x28),param_2,*(undefined8 *)PTR_DAT_05e62d40);
    lVar1 = *(long *)(param_1 + 0x28);
    if (lVar1 != 0) {
      lVar3 = *(long *)(param_1 + 0x20);
      if (*(int *)(lVar1 + 0x18) == 0) {
        if (lVar3 == 0) goto LAB_02c26e88;
        uVar2 = 0;
        *(undefined8 *)(lVar3 + 0x5f8) = 0;
      }
      else {
        lVar1 = func_0x0452c8d8(lVar1,*(int *)(lVar1 + 0x18) + -1,*(undefined8 *)PTR_DAT_05e62d30);
        if ((lVar1 == 0) || (uVar2 = Component_get_transform_0x6000c82(lVar1,0), lVar3 == 0))
        goto LAB_02c26e88;
        *(undefined8 *)(lVar3 + 0x5f8) = uVar2;
      }
      Managed_WriteBarrier(lVar3 + 0x5f8,uVar2);
      return;
    }
  }
LAB_02c26e88:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

