/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7a85c, Ghidra VA 02c7a85c. */

void Pet_SetAnimation(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c313 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c313 = 1;
  }
  uVar3 = *(undefined8 *)(param_1 + 0x38);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar3,0,0);
  if ((uVar2 & 1) == 0) {
    uVar2 = String_op_Equality_0x600025a(*(undefined8 *)(param_1 + 0x68),param_2,0);
    if ((uVar2 & 1) == 0) {
      *(undefined8 *)(param_1 + 0x68) = param_2;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x68),param_2);
      if (*(long *)(param_1 + 0x38) != 0) {
        SkeletonAnimation_set_AnimationName_0x600012b(*(long *)(param_1 + 0x38),param_2,0);
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

