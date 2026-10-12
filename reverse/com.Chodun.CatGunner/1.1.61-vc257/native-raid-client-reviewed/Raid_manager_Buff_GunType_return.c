/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5971c, Ghidra VA 02c5971c. */

undefined4 Raid_manager_Buff_GunType_return(int param_1)

{
  uint uVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  long lVar8;
  
  puVar4 = PTR_DAT_05e5dd40;
  puVar3 = PTR_DAT_05e591c0;
  if ((bRam000000000625c1bd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c1bd = 1;
  }
  uVar2 = param_1 % 5;
  uVar7 = **(undefined8 **)(*(long *)puVar4 + 0xb8);
  uVar1 = uVar2 + 5;
  if (uVar2 < 0xfffffffb) {
    uVar1 = uVar2;
  }
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  puVar3 = PTR_DAT_05e62660;
  lVar8 = 0;
  if ((uVar5 & 1) != 0) {
    lVar8 = **(long **)(*(long *)puVar4 + 0xb8);
    if (lVar8 == 0) goto LAB_02c59860;
    lVar8 = *(long *)(lVar8 + 0x20);
  }
  lVar6 = *(long *)PTR_DAT_05e62660;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar3;
  }
  lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x18);
  if (lVar6 == 0) {
LAB_02c59860:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if ((*(uint *)(lVar6 + 0x18) & 0xfffffffe) != 0) {
    if (lVar8 != 0) {
      uVar1 = *(int *)(lVar6 + 0x24) + uVar1;
      if ((int)uVar1 < (int)*(uint *)(lVar8 + 0x18)) {
        if (uVar1 < *(uint *)(lVar8 + 0x18)) {
          lVar8 = *(long *)(lVar8 + (long)(int)uVar1 * 8 + 0x20);
          if (lVar8 != 0) {
            return *(undefined4 *)(lVar8 + 0x18);
          }
          goto LAB_02c59860;
        }
        goto LAB_02c59864;
      }
    }
    return 2;
  }
LAB_02c59864:
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

