/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b172e4, Ghidra VA 02c172e4. */

undefined8 SaveSystem_TryLoadFrom(undefined8 param_1)

{
  ulong uVar1;
  undefined8 uVar2;
  long *plVar3;
  
  if ((bRam000000000625bef7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e598b8);
    func_0x029f5a50(PTR_DAT_05e62738);
    bRam000000000625bef7 = 1;
  }
  uVar1 = File_Exists_0x60032f3(param_1,0);
  if ((uVar1 & 1) != 0) {
    uVar2 = File_ReadAllText_0x60032f8(param_1,0);
    uVar1 = String_IsNullOrEmpty_0x6000277(uVar2,0);
    if ((uVar1 & 1) == 0) {
      if (*(int *)(*(long *)PTR_DAT_05e598b8 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Convert_FromBase64String_0x60005cc(uVar2,0);
      plVar3 = (long *)Encoding_get_UTF8_0x60017eb(0);
      if (plVar3 == (long *)0x0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      uVar2 = (**(code **)(*plVar3 + 0x388))(plVar3,uVar2,*(undefined8 *)(*plVar3 + 0x390));
      uVar1 = String_IsNullOrEmpty_0x6000277(uVar2,0);
      if ((uVar1 & 1) == 0) {
        uVar2 = func_0x030f05d0(uVar2,*(undefined8 *)PTR_DAT_05e62738);
        return uVar2;
      }
    }
  }
  return 0;
}

