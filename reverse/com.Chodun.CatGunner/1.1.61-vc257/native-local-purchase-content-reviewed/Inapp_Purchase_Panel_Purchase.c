/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba5ea0, Ghidra VA 02ca5ea0. */

void Inapp_Purchase_Panel_Purchase(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d920;
  if ((bRam000000000625c4c4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c4c4 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  if (cRam000000000625b960 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5d920);
    cRam000000000625b960 = '\x01';
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (**(long **)(lVar2 + 0xb8) != 0) {
    Shop_manager_Purchase_0x6000d77
              (**(long **)(lVar2 + 0xb8),*(undefined4 *)(param_1 + 0x20),
               *(undefined8 *)PTR_DAT_05e59050,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

