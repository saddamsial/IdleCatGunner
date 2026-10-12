/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba0470, Ghidra VA 02ca0470. */

bool StarGem_Pig__TryGetLvFromId(long param_1,int *param_2)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625c477 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64440);
    bRam000000000625c477 = 1;
  }
  *param_2 = -1;
  uVar2 = String_IsNullOrEmpty_0x6000277(param_1,0);
  puVar1 = PTR_DAT_05e64440;
  if ((uVar2 & 1) == 0) {
    if (param_1 == 0) {
LAB_02ca0524:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar2 = String_StartsWith_0x600025e(param_1,*(undefined8 *)PTR_DAT_05e64440,0);
    if ((uVar2 & 1) != 0) {
      if (*(long *)puVar1 == 0) goto LAB_02ca0524;
      uVar3 = String_Substring_0x60002c2(param_1,*(undefined4 *)(*(long *)puVar1 + 0x10),0);
      uVar2 = Int32_TryParse_0x6000818(uVar3,param_2,0);
      if ((uVar2 & 1) != 0) {
        return *param_2 - 1U < 3;
      }
    }
  }
  return false;
}

