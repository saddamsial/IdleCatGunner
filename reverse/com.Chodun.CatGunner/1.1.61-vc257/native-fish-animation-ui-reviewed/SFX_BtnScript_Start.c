/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b221f4, Ghidra VA 02c221f4. */

void SFX_BtnScript_Start(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e5ea38;
  if ((bRam000000000625bf6b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5ea38);
    func_0x029f5a50(PTR_DAT_05e62be0);
    func_0x029f5a50(PTR_DAT_05e5bcb8);
    bRam000000000625bf6b = 1;
  }
  lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar1);
  puVar1 = PTR_DAT_05e62be0;
  if (lVar2 != 0) {
    lVar2 = *(long *)(lVar2 + 0x100);
    uVar3 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5bcb8);
    UnityAction__ctor_0x6001049(uVar3,param_1,*(undefined8 *)puVar1,0);
    if (lVar2 != 0) {
      UnityEvent_AddListener_0x600104c(lVar2,uVar3,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

