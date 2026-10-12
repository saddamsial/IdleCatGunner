/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b636c4, Ghidra VA 02c636c4. */

long Fish_Tank_FindFusionTarget(long param_1,long param_2)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  ulong uVar4;
  
  if ((bRam000000000625c23a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c23a = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if (param_2 != 0) {
    if (0xb < *(int *)(param_2 + 0x40)) {
      return 0;
    }
    lVar3 = *(long *)(param_1 + 0x20);
    if (lVar3 != 0) {
      uVar4 = 0;
      do {
        if ((long)(int)*(uint *)(lVar3 + 0x18) <= (long)uVar4) {
          return 0;
        }
        if (*(uint *)(lVar3 + 0x18) <= uVar4) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar3 = *(long *)(lVar3 + uVar4 * 8 + 0x20);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar2 = Object_op_Equality_0x6000dec(lVar3,param_2,0);
        if ((uVar2 & 1) == 0) {
          if (lVar3 == 0) break;
          if ((((*(char *)(lVar3 + 0x48) != '\0') && (*(char *)(lVar3 + 0x86) == '\0')) &&
              (*(int *)(lVar3 + 0x40) == *(int *)(param_2 + 0x40))) &&
             (uVar2 = Fish_Item_IsOverlapping(param_2,lVar3), (uVar2 & 1) != 0)) {
            return lVar3;
          }
        }
        lVar3 = *(long *)(param_1 + 0x20);
        uVar4 = uVar4 + 1;
      } while (lVar3 != 0);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

