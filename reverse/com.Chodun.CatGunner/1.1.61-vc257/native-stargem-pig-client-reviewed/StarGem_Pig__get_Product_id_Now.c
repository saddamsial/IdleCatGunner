/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba11fc, Ghidra VA 02ca11fc. */

void StarGem_Pig__get_Product_id_Now(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  
  puVar2 = PTR_DAT_05e5e3e0;
  if ((bRam000000000625c481 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c481 = 1;
  }
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  StarGem_Pig__Product_id_return(uVar1);
  return;
}

