/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b169a4, Ghidra VA 02c169a4. */

void SaveSystem_PlayerData_return(undefined8 param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  long *plVar3;
  
  if ((bRam000000000625bef3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e598b8);
    bRam000000000625bef3 = 1;
  }
  uVar2 = JsonUtility_ToJson_0x6000003(param_1,0);
  plVar3 = (long *)Encoding_get_UTF8_0x60017eb(0);
  puVar1 = PTR_DAT_05e598b8;
  if (plVar3 != (long *)0x0) {
    uVar2 = (**(code **)(*plVar3 + 0x268))(plVar3,uVar2,*(undefined8 *)(*plVar3 + 0x270));
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    Convert_ToBase64String_0x60005c4(uVar2,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

