/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4171c, Ghidra VA 02c4171c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 Cat_IsValidTarget(undefined8 param_1,long param_2)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0ad & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0ad = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(param_2,0,0);
  if ((uVar2 & 1) == 0) {
    return 0;
  }
  if ((param_2 != 0) && (lVar3 = Component_get_gameObject_0x6000c83(param_2,0), lVar3 != 0)) {
    uVar2 = GameObject_get_activeInHierarchy_0x6000d00(lVar3,0);
    if ((uVar2 & 1) == 0) {
      return 0;
    }
    lVar3 = Component_get_transform_0x6000c82(param_2,0);
    if (lVar3 != 0) {
      Transform_get_position_0x6000f4d(lVar3,0);
      uVar4 = Cat_IsOnScreen_0x600072e(param_1);
      return uVar4;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

