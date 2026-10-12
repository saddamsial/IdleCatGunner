/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b30368, Ghidra VA 02c30368. */

undefined8 Relic_DownPanel_Percent_str_return(long param_1,int param_2)

{
  undefined8 *puVar1;
  undefined8 *puVar2;
  undefined *puVar3;
  
  puVar3 = PTR_DAT_05e63058;
  puVar1 = (undefined8 *)PTR_DAT_05e63050;
  puVar2 = (undefined8 *)PTR_DAT_05e63048;
  if ((bRam000000000625c027 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63058);
    func_0x029f5a50(PTR_DAT_05e63048);
    func_0x029f5a50(PTR_DAT_05e63050);
    bRam000000000625c027 = 1;
  }
  if (*(int *)(param_1 + 0x60) != param_2) {
    puVar1 = (undefined8 *)puVar3;
  }
  if (*(int *)(param_1 + 0x60) != 3) {
    puVar2 = puVar1;
  }
  return *puVar2;
}

