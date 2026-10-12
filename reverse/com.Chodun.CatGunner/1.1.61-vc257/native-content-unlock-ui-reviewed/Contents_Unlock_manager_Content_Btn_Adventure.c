/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9ea54, Ghidra VA 02b9ea54. */

void Contents_Unlock_manager_Content_Btn_Adventure(void)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5e4d0;
  if ((bRam000000000625b9f0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    bRam000000000625b9f0 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Contents_Unlock_manager_Try_Open(6);
  puVar1 = PTR_DAT_05e5dd28;
  if ((uVar2 & 1) != 0) {
    lVar3 = *(long *)PTR_DAT_05e5dd28;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
    if (((lVar3 != 0) && (lVar3 = *(long *)(lVar3 + 0x40), lVar3 != 0)) &&
       (lVar3 = Component_get_gameObject_0x6000c83(lVar3,0), lVar3 != 0)) {
      GameObject_SetActive_0x6000cfe(lVar3,1,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

