/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b98350, Ghidra VA 02c98350. */

void Shop_manager_ApplyVipPass(void)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar3 = PTR_DAT_05e5dd50;
  if ((bRam000000000625c44c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c44c = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  lVar4 = *(long *)puVar3;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar3;
  }
  lVar6 = *(long *)puVar2;
  iVar1 = *(int *)(lVar6 + 0xe4);
  uVar7 = *(undefined8 *)(*(undefined1 **)(lVar4 + 0xb8) + 8);
  **(undefined1 **)(lVar4 + 0xb8) = 1;
  if (iVar1 == 0) {
    func_0x029f5bd0(lVar6);
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar5 & 1) != 0) {
    lVar4 = *(long *)puVar3;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar3;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 8);
    if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Mission_manager_UI_Reload_0x600034f(lVar4,0);
  }
  puVar3 = PTR_DAT_05e5d920;
  if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Get_Dia_0x6000078(500,0);
  lVar4 = *(long *)puVar3;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar3;
  }
  lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x50);
  if (lVar4 != 0) {
    (**(code **)(lVar4 + 0x18))(*(undefined8 *)(lVar4 + 0x40),*(undefined8 *)(lVar4 + 0x28));
  }
  SaveSystem_Save_0x600048a(0);
  return;
}

