/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b35cf8, Ghidra VA 02c35cf8. */

void Adventure_PetSelect_popup_Reload(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  
  puVar1 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c066 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c066 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x28);
  if (lVar2 != 0) {
    if (*(long *)(lVar2 + 0x30) == 0) {
      iVar5 = 0;
    }
    else {
      iVar5 = *(int *)(*(long *)(lVar2 + 0x30) + 0x18);
    }
    if (*(long *)(lVar2 + 0x38) == 0) {
      iVar6 = 0;
    }
    else {
      iVar6 = *(int *)(*(long *)(lVar2 + 0x38) + 0x18);
    }
    lVar2 = *(long *)(param_1 + 0x20);
    if (lVar2 != 0) {
      uVar4 = 0;
      do {
        if ((int)*(uint *)(lVar2 + 0x18) <= (int)uVar4) {
          return;
        }
        if (*(uint *)(lVar2 + 0x18) <= uVar4) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar2 = *(long *)(lVar2 + (long)(int)uVar4 * 8 + 0x20);
        if (lVar2 == 0) break;
        *(long *)(lVar2 + 0x38) = param_1;
        Managed_WriteBarrier((long *)(lVar2 + 0x38),param_1);
        if ((int)uVar4 < iVar5) {
          uVar3 = Dispatch_Pet_Selected(uVar4,0);
        }
        else {
          uVar3 = Dispatch_Pet_Owned(uVar4 - iVar5,0);
          if (iVar6 <= (int)(uVar4 - iVar5)) {
            uVar3 = Dispatch_Pet_Owned(0x7fffffff,0);
          }
        }
        Adventure_PetSelect_Slot_Reload(lVar2,uVar3);
        lVar2 = *(long *)(param_1 + 0x20);
        uVar4 = uVar4 + 1;
      } while (lVar2 != 0);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

