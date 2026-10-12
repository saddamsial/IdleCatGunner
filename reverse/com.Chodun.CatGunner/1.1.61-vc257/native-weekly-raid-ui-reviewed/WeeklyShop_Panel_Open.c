/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba724c, Ghidra VA 02ca724c. */

void WeeklyShop_Panel_Open(long param_1)

{
  undefined *puVar1;
  undefined4 uVar2;
  
  puVar1 = PTR_DAT_05e5d958;
  if ((bRam000000000625c4dd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d958);
    bRam000000000625c4dd = 1;
  }
  *(undefined8 *)(param_1 + 0x20) = *(undefined8 *)puVar1;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x20));
  if (*(long *)(param_1 + 0x30) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),1,0);
    uVar2 = WeeklyShop_Get_Default_Menu(param_1);
    WeeklyShop_Menu_Open(param_1,uVar2);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

