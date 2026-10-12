/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a85690, Ghidra VA 02b85690. */

long DamageTextMeshManager_get_MainCamera(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long *plVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625b8ef & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625b8ef = 1;
  }
  plVar3 = (long *)(param_1 + 0x10);
  lVar4 = *plVar3;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(lVar4,0,0);
  if ((uVar2 & 1) == 0) {
    if ((*plVar3 == 0) || (lVar4 = Component_get_gameObject_0x6000c83(*plVar3,0), lVar4 == 0)) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar2 = GameObject_get_activeInHierarchy_0x6000d00(lVar4,0);
    if ((uVar2 & 1) != 0) goto LAB_02b85724;
  }
  lVar4 = Camera_get_main_0x60002b1(0);
  *plVar3 = lVar4;
  Managed_WriteBarrier(plVar3,lVar4);
LAB_02b85724:
  return *plVar3;
}

