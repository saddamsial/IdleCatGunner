/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba6150, Ghidra VA 02ca6150. */

void Inapp_Purchase_Popup_Reload(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  uint uVar3;
  long lVar4;
  
  puVar2 = PTR_DAT_05e5d920;
  if ((bRam000000000625c4c9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c4c9 = 1;
  }
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Shop_manager_Is_Purchased_0x6000db7(uVar1,0);
  lVar4 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar4 != 0) {
    GameObject_SetActive_0x6000cfe(lVar4,(uVar3 ^ 0xffffffff) & 1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

