/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3740c, Ghidra VA 02c3740c. */

undefined1 Buff_manager_get_IsPermanentBuff(void)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d920;
  if ((bRam000000000625c074 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c074 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  return *(undefined1 *)(*(long *)(lVar2 + 0xb8) + 0xb);
}

