/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baea78, Ghidra VA 02caea78. */

undefined8 TutorialArrow_UI_IsValid(undefined8 param_1,long param_2)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c532 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c532 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(param_2,0,0);
  if ((uVar2 & 1) == 0) {
    return 0;
  }
  if (param_2 != 0) {
    uVar3 = Component_get_gameObject_0x6000c83(param_2,0);
    lVar4 = *(long *)puVar1;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0(lVar4);
    }
    uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
    if ((uVar2 & 1) == 0) {
      return 0;
    }
    lVar4 = Component_get_gameObject_0x6000c83(param_2,0);
    if (lVar4 != 0) {
      uVar3 = GameObject_get_activeInHierarchy_0x6000d00(lVar4,0);
      return uVar3;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

