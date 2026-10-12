/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b52238, Ghidra VA 02c52238. */

void Raid_Helper_Purchase_Popup__OnClick_Purchase(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c164 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c164 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  uVar5 = **(undefined8 **)(lVar3 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar4 & 1) != 0) {
    return;
  }
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  if (**(long **)(lVar3 + 0xb8) != 0) {
    uVar4 = Raid_manager__get_Is_Helper_Active();
    if ((uVar4 & 1) != 0) {
      Raid_Helper_Purchase_Popup__Reload(param_1);
      return;
    }
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),1,0,0);
      lVar3 = *(long *)puVar2;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar2;
      }
      if (**(long **)(lVar3 + 0xb8) != 0) {
        Raid_manager__Helper_Purchase();
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

