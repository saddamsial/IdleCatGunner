/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7bfec, Ghidra VA 02c7bfec. */

void Pet_Ingame_manager_Warp(float param_1,float param_2,float param_3,long param_4)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  
  if ((bRam000000000625c31c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c31c = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar4 = *(long *)(param_4 + 0x20);
  if (lVar4 != 0) {
    uVar5 = 0;
    do {
      if ((long)(int)*(uint *)(lVar4 + 0x18) <= (long)uVar5) {
        return;
      }
      if (*(uint *)(lVar4 + 0x18) <= uVar5) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar4 = *(long *)(lVar4 + uVar5 * 8 + 0x20);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Equality_0x6000dec(lVar4,0,0);
      if ((uVar2 & 1) == 0) {
        if ((lVar4 == 0) || (lVar3 = Component_get_gameObject_0x6000c83(lVar4,0), lVar3 == 0))
        break;
        uVar2 = GameObject_get_activeSelf_0x6000cff(lVar3,0);
        if ((uVar2 & 1) != 0) {
          Pet_Warp(param_1 + *(float *)(lVar4 + 0x58),param_2 + *(float *)(lVar4 + 0x5c),
                   param_3 + *(float *)(lVar4 + 0x60),lVar4);
        }
      }
      lVar4 = *(long *)(param_4 + 0x20);
      uVar5 = uVar5 + 1;
    } while (lVar4 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

