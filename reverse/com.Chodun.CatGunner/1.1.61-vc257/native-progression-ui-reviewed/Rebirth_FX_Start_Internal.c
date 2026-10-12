/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8896c, Ghidra VA 02c8896c. */

void Rebirth_FX_Start_Internal(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c390 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c390 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  **(undefined1 **)(lVar2 + 0xb8) = 0;
  lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar2 != 0) {
    GameObject_SetActive_0x6000cfe(lVar2,1,0);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),6,0,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

