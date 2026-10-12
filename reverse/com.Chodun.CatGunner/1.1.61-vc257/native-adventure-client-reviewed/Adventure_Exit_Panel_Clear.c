/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b34538, Ghidra VA 02c34538. */

void Adventure_Exit_Panel_Clear(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c055 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625c055 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x10);
  if (lVar2 != 0) {
    Adventure_manager_Adventure_ForceFinish_0x6000651
              (lVar2,*(undefined4 *)(param_1 + 0x20),*(undefined4 *)(param_1 + 0x24),0);
    lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar2 != 0) {
      GameObject_SetActive_0x6000cfe(lVar2,0,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

