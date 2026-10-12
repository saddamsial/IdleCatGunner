/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7ac48, Ghidra VA 02c7ac48. */

undefined8 Pet_Ingame_manager_GetMainCat(void)

{
  undefined *puVar1;
  undefined8 uVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5d5b0;
  if ((bRam000000000625c31d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    bRam000000000625c31d = 1;
  }
  lVar3 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
  if (((lVar3 == 0) || (lVar3 = *(long *)(lVar3 + 0x20), lVar3 == 0)) ||
     (*(long *)(lVar3 + 0x18) == 0)) {
    uVar2 = 0;
  }
  else {
    if ((int)*(long *)(lVar3 + 0x18) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    uVar2 = *(undefined8 *)(lVar3 + 0x20);
  }
  return uVar2;
}

