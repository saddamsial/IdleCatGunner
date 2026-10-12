/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b88a30, Ghidra VA 02c88a30. */

void Rebirth_FX_Rebirth(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5dd60;
  if ((bRam000000000625c391 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd60);
    bRam000000000625c391 = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    Rebirth_manager_Rebirth_0x6000c8f();
    if (*(long *)(param_1 + 0x20) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),0,0);
      if (*(long *)(param_1 + 0x28) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),0,0);
        if (*(long *)(param_1 + 0x30) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),0,0);
          lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
          if (lVar2 != 0) {
            GameObject_SetActive_0x6000cfe(lVar2,0,0);
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

