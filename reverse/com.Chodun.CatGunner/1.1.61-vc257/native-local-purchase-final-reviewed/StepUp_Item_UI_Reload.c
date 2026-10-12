/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba480c, Ghidra VA 02ca480c. */

void StepUp_Item_UI_Reload(long param_1)

{
  char cVar1;
  undefined *puVar2;
  undefined *puVar3;
  byte bVar4;
  long lVar5;
  ulong uVar6;
  undefined8 uVar7;
  
  puVar3 = PTR_DAT_05e5e4b8;
  if ((bRam000000000625c4af & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    bRam000000000625c4af = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  lVar5 = *(long *)puVar3;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar3;
  }
  uVar7 = **(undefined8 **)(lVar5 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar6 = Object_op_Equality_0x6000dec(uVar7,0,0);
  if ((uVar6 & 1) != 0) {
    return;
  }
  lVar5 = *(long *)puVar3;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar3;
  }
  if ((**(long **)(lVar5 + 0xb8) != 0) &&
     (lVar5 = *(long *)(**(long **)(lVar5 + 0xb8) + 0x38), lVar5 != 0)) {
    if (*(uint *)(lVar5 + 0x18) <= *(uint *)(param_1 + 0x20)) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    cVar1 = *(char *)(lVar5 + (int)*(uint *)(param_1 + 0x20) + 0x20);
    bVar4 = StepUp_Is_Purchasable_0x6000e11();
    if (*(long *)(param_1 + 0x50) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x50),cVar1 == '\0' & (bVar4 ^ 1),0);
      if (*(long *)(param_1 + 0x58) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),cVar1 == '\0' & (bVar4 ^ 1),0);
        if (*(long *)(param_1 + 0x60) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x60),cVar1 != '\0',0);
          if (*(long *)(param_1 + 0x68) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),bVar4 & 1,0);
            if (*(long *)(param_1 + 0x70) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x70),bVar4 & 1,0);
              return;
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

