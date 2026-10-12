/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b30e08, Ghidra VA 02c30e08. */

bool _Draw_Single_d__18_MoveNext(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long lVar4;
  long lVar5;
  undefined4 uVar6;
  
  if ((bRam000000000625c038 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c038 = 1;
  }
  iVar1 = *(int *)(param_1 + 0x10);
  lVar4 = *(long *)(param_1 + 0x20);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar4 != 0) {
      lVar3 = *(long *)(lVar4 + 0x38);
      *(undefined1 *)(lVar4 + 0x78) = 1;
      if (lVar3 != 0) {
        lVar5 = 0;
        do {
          if ((int)*(uint *)(lVar3 + 0x18) <= (int)(uint)lVar5) {
            if (*(long *)(lVar4 + 0x20) != 0) {
              Relic_Item_Demo_Reload(*(long *)(lVar4 + 0x20),*(undefined8 *)(param_1 + 0x28));
              if (*(long *)(lVar4 + 0x30) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(lVar4 + 0x30),1,0);
                uVar6 = *(undefined4 *)(lVar4 + 0x58);
                uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
                WaitForSeconds__ctor_0x6000e26(uVar6,uVar2,0);
                *(undefined8 *)(param_1 + 0x18) = uVar2;
                Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
                *(undefined4 *)(param_1 + 0x10) = 1;
                goto LAB_02c30f44;
              }
            }
            break;
          }
          if (*(uint *)(lVar3 + 0x18) <= (uint)lVar5) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar3 = *(long *)(lVar3 + lVar5 * 8 + 0x20);
          if (lVar3 == 0) break;
          GameObject_SetActive_0x6000cfe(lVar3,0,0);
          lVar3 = *(long *)(lVar4 + 0x38);
          lVar5 = lVar5 + 1;
        } while (lVar3 != 0);
      }
    }
  }
  else {
    if (iVar1 != 1) {
LAB_02c30f44:
      return iVar1 == 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar4 != 0) {
      *(undefined1 *)(lVar4 + 0x78) = 0;
      if (*(long *)(lVar4 + 0x40) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(lVar4 + 0x40),1,0);
        *(undefined8 *)(lVar4 + 0x80) = 0;
        Managed_WriteBarrier((undefined8 *)(lVar4 + 0x80),0);
        goto LAB_02c30f44;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

