/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf8f4, Ghidra VA 02caf8f4. */

void Tutorial_manager_Enter_GunBuy(undefined8 param_1)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c53c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c53c = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  iVar2 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(*(long *)(lVar3 + 0xb8) + 0x90),
                     *(undefined8 *)(*(long *)(lVar3 + 0xb8) + 0x98),0);
  if (iVar2 < 100) {
    lVar3 = *(long *)puVar1;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    iVar2 = ObscuredInt_op_Implicit_0x6000412
                      (*(undefined8 *)(*(long *)(lVar3 + 0xb8) + 0x90),
                       *(undefined8 *)(*(long *)(lVar3 + 0xb8) + 0x98),0);
    Gamemanager_Get_Dia_0x6000078(100 - iVar2,0);
  }
  uVar4 = Tutorial_manager_CheckGunPurchased(param_1);
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar4,0);
  return;
}

