/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b26534, Ghidra VA 02c26534. */

void Alert_Reload(long param_1,undefined8 param_2)

{
  long *plVar1;
  long lVar2;
  
  plVar1 = *(long **)(param_1 + 0x20);
  if (plVar1 != (long *)0x0) {
    (**(code **)(*plVar1 + 0x558))(plVar1,param_2,*(undefined8 *)(*plVar1 + 0x560));
    lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar2 != 0) {
      GameObject_SetActive_0x6000cfe(lVar2,1,0);
      lVar2 = Component_get_transform_0x6000c82(param_1,0);
      if (lVar2 != 0) {
        Transform_SetAsLastSibling_0x6000f7e(lVar2,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

