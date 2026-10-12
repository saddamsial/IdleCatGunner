/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bac968, Ghidra VA 02cac968. */

void Tree_manager_Awake(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 *puVar3;
  
  puVar1 = PTR_DAT_05e5dc20;
  if ((bRam000000000625c517 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c517 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  puVar3 = (undefined8 *)(*(long *)(lVar2 + 0xb8) + 0x10);
  *puVar3 = param_1;
  if (iRam0000000006484da8 != 0) {
    func_0x02ae4790(1L << ((ulong)puVar3 >> 0xc & 0x3f),
                    ((ulong)puVar3 >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
  }
  return;
}

