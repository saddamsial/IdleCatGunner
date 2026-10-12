/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4a824, Ghidra VA 02c4a824. */

void Mine_manager_ClearOres(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  
  if ((bRam000000000625c11b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e633d0);
    bRam000000000625c11b = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar4 = *(long *)(param_1 + 0x20);
  if (lVar4 != 0) {
    if (0 < (int)*(ulong *)(lVar4 + 0x18)) {
      uVar5 = 0;
      uVar2 = *(ulong *)(lVar4 + 0x18) & 0xffffffff;
      do {
        if (uVar2 <= uVar5) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar3 = *(long *)(lVar4 + 0x20 + uVar5 * 8);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar2 = Object_op_Inequality_0x6000ded(lVar3,0,0);
        if ((uVar2 & 1) != 0) {
          if ((lVar3 == 0) || (lVar3 = Component_get_gameObject_0x6000c83(lVar3,0), lVar3 == 0)) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper();
          }
          GameObject_SetActive_0x6000cfe(lVar3,0,0);
        }
        uVar2 = (ulong)*(uint *)(lVar4 + 0x18);
        uVar5 = uVar5 + 1;
      } while ((long)uVar5 < (long)(int)*(uint *)(lVar4 + 0x18));
    }
    puVar1 = PTR_DAT_05e633d0;
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_Log_0x600033c(*(undefined8 *)puVar1,0);
    return;
  }
  return;
}

