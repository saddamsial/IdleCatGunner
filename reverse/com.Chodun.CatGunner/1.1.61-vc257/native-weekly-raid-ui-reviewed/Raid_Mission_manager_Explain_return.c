/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b52e0c, Ghidra VA 02c52e0c. */

undefined8 Raid_Mission_manager_Explain_return(long param_1,uint param_2)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  undefined4 uStack_24;
  
  if ((bRam000000000625c175 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e635c0);
    func_0x029f5a50(PTR_DAT_05e635c8);
    func_0x029f5a50(PTR_DAT_05e635d0);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c175 = 1;
  }
  if (7 < param_2) {
    return *(undefined8 *)PTR_DAT_05e59050;
  }
  lVar4 = *(long *)(param_1 + 0x20);
  if (lVar4 != 0) {
    if (*(uint *)(lVar4 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar4 = *(long *)(lVar4 + (ulong)param_2 * 8 + 0x20);
    if (lVar4 != 0) {
      puVar1 = (undefined8 *)PTR_DAT_05e635c0;
      if (*(int *)(lVar4 + 0x10) != 0) {
        puVar1 = (undefined8 *)PTR_DAT_05e635d0;
      }
      uVar5 = *puVar1;
      if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = LocalizationManager_GetTranslation_0x60011b3(uVar5,1,0,1,0,0,0,1,0);
      uVar3 = String_IsNullOrEmpty_0x6000277(uVar2,0);
      if ((uVar3 & 1) != 0) {
        uVar2 = String_Concat_0x6000298(*(undefined8 *)PTR_DAT_05e635c8,uVar5,0);
        if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
        }
        Debug_LogWarning_0x6000346(uVar2,0);
        return uVar5;
      }
      uStack_24 = *(undefined4 *)(lVar4 + 0x14);
      uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_24);
      uVar5 = String_Format_0x600029c(uVar2,uVar5,0);
      return uVar5;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

