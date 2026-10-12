/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9afe0, Ghidra VA 02b9afe0. */

void Bounce_Bounce_Start(long param_1)

{
  long lVar1;
  ulong uVar2;
  
  if ((bRam000000000625b9b1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e368);
    bRam000000000625b9b1 = 1;
  }
  *(undefined4 *)(param_1 + 0x20) = 0;
  if (*(char *)(param_1 + 0x34) == '\0') {
    *(undefined1 *)(param_1 + 0x34) = 1;
    lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar2 = GameObject_get_activeInHierarchy_0x6000d00(lVar1,0);
    if ((uVar2 & 1) != 0) {
      MonoBehaviour_StartCoroutine_0x6000d41(param_1,*(undefined8 *)PTR_DAT_05e5e368,0);
      return;
    }
  }
  return;
}

