/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0729c, Ghidra VA 02c0729c. */

bool _ShowAfterFrame_d__17_MoveNext(long param_1)

{
  int iVar1;
  long lVar2;
  long lVar3;
  
  iVar1 = *(int *)(param_1 + 0x10);
  if (iVar1 == 0) {
    *(undefined8 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
    *(undefined4 *)(param_1 + 0x10) = 1;
  }
  else if (iVar1 == 1) {
    lVar3 = *(long *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (((lVar3 != 0) && (*(long *)(lVar3 + 0x30) != 0)) &&
       (lVar2 = Component_get_gameObject_0x6000c83(*(long *)(lVar3 + 0x30),0), lVar2 != 0)) {
      GameObject_SetActive_0x6000cfe(lVar2,1,0);
      if (*(long *)(lVar3 + 0x30) != 0) {
        Offline_Panel_UI_Reload
                  (*(long *)(lVar3 + 0x30),*(undefined8 *)(lVar3 + 0x40),
                   *(undefined8 *)(lVar3 + 0x38));
        goto LAB_02c0731c;
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
LAB_02c0731c:
  return iVar1 == 0;
}

