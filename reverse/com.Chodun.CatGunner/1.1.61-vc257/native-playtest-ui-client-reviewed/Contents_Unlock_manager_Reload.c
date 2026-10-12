/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9e3d4, Ghidra VA 02b9e3d4. */

void Contents_Unlock_manager_Reload(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined *puVar3;
  bool bVar4;
  byte bVar5;
  int iVar6;
  int iVar7;
  ulong uVar8;
  ulong uVar9;
  long lVar10;
  undefined8 uVar11;
  ulong uVar12;
  
  if ((bRam000000000625b9e8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625b9e8 = 1;
  }
  puVar3 = PTR_DAT_05e5e4d0;
  if (*(long *)(param_1 + 0x20) == 0) {
    return;
  }
  if (*(int *)(*(long *)PTR_DAT_05e5e4d0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar8 = Contents_Unlock_manager_get_Is_Tutorial_0x60002aa();
  iVar6 = Contents_Unlock_manager_Next_Unlock_Stage_return_0x60002ab();
  puVar2 = PTR_DAT_05e591c0;
  lVar10 = *(long *)(param_1 + 0x20);
  if (lVar10 != 0) {
    uVar12 = 0;
    do {
      if ((long)(int)*(uint *)(lVar10 + 0x18) <= (long)uVar12) {
        return;
      }
      if (*(uint *)(lVar10 + 0x18) <= uVar12) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar10 = *(long *)(lVar10 + uVar12 * 8 + 0x20);
      if (lVar10 != 0) {
        uVar11 = *(undefined8 *)(lVar10 + 0x18);
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar9 = Object_op_Equality_0x6000dec(uVar11,0,0);
        if ((uVar9 & 1) == 0) {
          if ((uVar8 & 1) == 0) {
            uVar1 = *(undefined4 *)(lVar10 + 0x10);
            if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            bVar5 = Contents_Unlock_manager_Is_Unlocked_0x60002a9(uVar1);
            if ((bVar5 & 1) == 0) {
              uVar1 = *(undefined4 *)(lVar10 + 0x10);
              if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              iVar7 = Contents_Unlock_manager_Unlock_Stage_return_0x60002a7(uVar1);
              bVar4 = iVar7 == iVar6;
            }
            else {
              bVar4 = false;
            }
            if (*(long *)(lVar10 + 0x18) == 0) break;
            GameObject_SetActive_0x6000cfe(*(long *)(lVar10 + 0x18),bVar5 & 1 | bVar4,0);
            uVar11 = *(undefined8 *)(lVar10 + 0x20);
            if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar9 = Object_op_Inequality_0x6000ded(uVar11,0,0);
            if ((uVar9 & 1) == 0) goto LAB_02b9e55c;
            lVar10 = *(long *)(lVar10 + 0x20);
            if (lVar10 == 0) break;
          }
          else {
            lVar10 = *(long *)(lVar10 + 0x18);
            if (lVar10 == 0) break;
            bVar4 = false;
          }
          GameObject_SetActive_0x6000cfe(lVar10,bVar4,0);
        }
      }
LAB_02b9e55c:
      lVar10 = *(long *)(param_1 + 0x20);
      uVar12 = uVar12 + 1;
    } while (lVar10 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

