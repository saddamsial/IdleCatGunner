/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bab214, Ghidra VA 02cab214. */

bool _Loading_Then_Start_d__34_MoveNext(long param_1)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625c509 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c509 = 1;
  }
  iVar1 = *(int *)(param_1 + 0x10);
  lVar2 = *(long *)(param_1 + 0x20);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar2 == 0) {
LAB_02cab2d0:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(long *)(lVar2 + 0x68) != 0) {
      MonoBehaviour_StopCoroutine_0x6000d45(lVar2,*(long *)(lVar2 + 0x68),0);
    }
    uVar3 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
    WaitForSeconds__ctor_0x6000e26(0x40000000,uVar3,0);
    *(undefined8 *)(param_1 + 0x18) = uVar3;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar3);
    *(undefined4 *)(param_1 + 0x10) = 1;
  }
  else if (iVar1 == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar2 == 0) goto LAB_02cab2d0;
    SpeedRun_manager_Game_Exit();
  }
  return iVar1 == 0;
}

