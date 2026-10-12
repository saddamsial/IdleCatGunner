/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6267c, Ghidra VA 02c6267c. */

void Fish_Tank_CheckFusion(undefined8 param_1,long param_2)

{
  undefined *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  
  if ((bRam000000000625c238 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c238 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (*(char *)(param_2 + 0x48) != '\0') {
    uVar2 = Fish_Tank_FindFusionTarget(param_1,param_2);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar3 = Object_op_Equality_0x6000dec(uVar2,0,0);
    if ((uVar3 & 1) == 0) {
      Fish_Tank_FuseItems(param_1,param_2,uVar2);
      return;
    }
  }
  return;
}

