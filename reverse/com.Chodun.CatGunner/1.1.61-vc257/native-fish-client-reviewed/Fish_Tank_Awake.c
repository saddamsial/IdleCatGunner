/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b63064, Ghidra VA 02c63064. */

void Fish_Tank_Awake(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  long lVar3;
  long lVar4;
  uint uVar5;
  
  puVar1 = PTR_DAT_05e5be98;
  if ((bRam000000000625c232 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5be98);
    bRam000000000625c232 = 1;
  }
  uVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar1);
  *(undefined8 *)(param_1 + 0x60) = uVar2;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x60),uVar2);
  lVar3 = *(long *)(param_1 + 0x20);
  if (lVar3 != 0) {
    lVar4 = 4;
    do {
      uVar5 = (int)lVar4 - 4;
      if ((int)*(uint *)(lVar3 + 0x18) <= (int)uVar5) {
        return;
      }
      if (*(uint *)(lVar3 + 0x18) <= uVar5) {
LAB_02c63140:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar3 = *(long *)(lVar3 + lVar4 * 8);
      if (lVar3 == 0) break;
      Fish_Item_EnsureInit(lVar3);
      *(long *)(lVar3 + 0x70) = param_1;
      Managed_WriteBarrier((long *)(lVar3 + 0x70),param_1);
      lVar3 = *(long *)(param_1 + 0x20);
      if (lVar3 == 0) break;
      if (*(uint *)(lVar3 + 0x18) <= uVar5) goto LAB_02c63140;
      if (*(long *)(lVar3 + lVar4 * 8) == 0) break;
      Fish_Item_Deactivate();
      lVar3 = *(long *)(param_1 + 0x20);
      lVar4 = lVar4 + 1;
    } while (lVar3 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

