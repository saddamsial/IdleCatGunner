/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b33cdc, Ghidra VA 02c33cdc. */

void Adventure_Enter_popup_OnClick_AdventureStart(long param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined *puVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  long lVar7;
  
  if ((bRam000000000625c04e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e63120);
    func_0x029f5a50(PTR_DAT_05e62fd0);
    bRam000000000625c04e = 1;
  }
  puVar3 = PTR_DAT_05e5dd28;
  lVar7 = *(long *)(param_1 + 200);
  if (lVar7 == 0) goto LAB_02c33e6c;
  if (*(int *)(lVar7 + 0x18) != 0) {
    lVar4 = *(long *)PTR_DAT_05e5dd28;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar7 = *(long *)(param_1 + 200);
      if (lVar7 == 0) goto LAB_02c33e6c;
      lVar4 = *(long *)puVar3;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x10);
    if (lVar4 == 0) goto LAB_02c33e6c;
    uVar5 = Adventure_manager_Ticket_Use(lVar4,*(undefined4 *)(lVar7 + 0x18),0);
    if ((uVar5 & 1) != 0) {
      lVar7 = *(long *)puVar3;
      if (*(int *)(lVar7 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar7 = *(long *)puVar3;
      }
      if (*(long *)(param_1 + 200) != 0) {
        uVar1 = *(undefined4 *)(param_1 + 0x20);
        uVar2 = *(undefined4 *)(param_1 + 0x24);
        lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x10);
        uVar6 = func_0x045c302c(*(long *)(param_1 + 200),*(undefined8 *)PTR_DAT_05e63120);
        if (lVar7 != 0) {
          Adventure_manager_Adventure_Start(lVar7,uVar1,uVar2,uVar6,0);
          lVar7 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x10);
          if ((lVar7 != 0) && (lVar7 = *(long *)(lVar7 + 0x40), lVar7 != 0)) {
            Adventure_Panel_Map_Info_List_Reload(lVar7,*(undefined4 *)(param_1 + 0x20));
            lVar7 = Component_get_gameObject_0x6000c83(param_1,0);
            if (lVar7 != 0) {
              GameObject_SetActive_0x6000cfe(lVar7,0,0);
              return;
            }
          }
        }
      }
      goto LAB_02c33e6c;
    }
  }
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
    return;
  }
LAB_02c33e6c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

