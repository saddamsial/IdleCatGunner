/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba5f54, Ghidra VA 02ca5f54. */

void Inapp_Purchase_Panel_Reload(long param_1,uint param_2)

{
  undefined *puVar1;
  long lVar2;
  
  if ((bRam000000000625c4c5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5ea38);
    bRam000000000625c4c5 = 1;
  }
  if (*(long *)(param_1 + 0x30) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),param_2 & 1,0);
    puVar1 = PTR_DAT_05e5ea38;
    if (*(long *)(param_1 + 0x28) != 0) {
      param_2 = param_2 ^ 1;
      Behaviour_set_enabled_0x6000c74(*(long *)(param_1 + 0x28),param_2 & 1,0);
      lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar1);
      if (lVar2 != 0) {
        Behaviour_set_enabled_0x6000c74(lVar2,param_2 & 1,0);
        if ((*(long *)(param_1 + 0x28) != 0) &&
           (lVar2 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x28),0), lVar2 != 0)) {
          GameObject_SetActive_0x6000cfe(lVar2,param_2 & 1,0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

