/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b9fa6c, Ghidra VA 02c9fa6c. */

void StarGem_Pig__Product_id_return(undefined4 param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  undefined4 uStack_14;
  
  puVar1 = PTR_DAT_05e64440;
  uStack_14 = param_1;
  if ((bRam000000000625c476 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64440);
    bRam000000000625c476 = 1;
  }
  uVar2 = Int32_ToString_0x600080e(&uStack_14,0);
  String_Concat_0x6000298(*(undefined8 *)puVar1,uVar2,0);
  return;
}

