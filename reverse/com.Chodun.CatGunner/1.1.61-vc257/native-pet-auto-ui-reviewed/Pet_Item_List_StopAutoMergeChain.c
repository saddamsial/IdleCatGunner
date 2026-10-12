/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b839c8, Ghidra VA 02c839c8. */

void Pet_Item_List_StopAutoMergeChain(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uStack_48;
  undefined8 uStack_40;
  long lStack_38;
  
  if ((bRam000000000625c367 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63da0);
    func_0x029f5a50(PTR_DAT_05e63da8);
    func_0x029f5a50(PTR_DAT_05e63db0);
    func_0x029f5a50(PTR_DAT_05e63db8);
    bRam000000000625c367 = 1;
  }
  uStack_48 = 0;
  uStack_40 = 0;
  lVar4 = *(long *)(param_1 + 0x48);
  lStack_38 = 0;
  if (lVar4 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar4,0);
    *(undefined8 *)(param_1 + 0x48) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x48),0);
  }
  *(undefined8 *)(param_1 + 0x50) = 0xffffffffffffffff;
  *(undefined8 *)(param_1 + 0x58) = 0xffffffffffffffff;
  puVar2 = PTR_DAT_05e63da8;
  puVar1 = PTR_DAT_05e63da0;
  if (*(long *)(param_1 + 0x40) != 0) {
    func_0x0452d690(&uStack_48,*(long *)(param_1 + 0x40),*(undefined8 *)PTR_DAT_05e63db8);
    while( true ) {
      uVar3 = func_0x03fa4e10(&uStack_48,*(undefined8 *)puVar2);
      if ((uVar3 & 1) == 0) {
        func_0x03fa4e0c(&uStack_48,*(undefined8 *)puVar1);
        Pet_Item_List_AlignGrid_0x6000c47(param_1);
        return;
      }
      if (lStack_38 == 0) break;
      if (*(char *)(lStack_38 + 0x6d) != '\0') {
        Pet_Item_EndAutoMerge_0x6000c08(lStack_38,0);
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

