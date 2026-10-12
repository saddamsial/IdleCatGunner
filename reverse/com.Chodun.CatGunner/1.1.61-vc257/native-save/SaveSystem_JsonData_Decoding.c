/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b174a8, Ghidra VA 02c174a8. */

long SaveSystem_JsonData_Decoding(undefined8 param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  long *plVar3;
  long lVar4;
  long lVar5;
  long lVar6;
  undefined8 *puVar7;
  undefined8 uVar8;
  
  puVar1 = PTR_DAT_05e598b8;
  if ((bRam000000000625bef8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e598b8);
    func_0x029f5a50(PTR_DAT_05e62738);
    bRam000000000625bef8 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Convert_FromBase64String_0x60005cc(param_1,0);
  plVar3 = (long *)Encoding_get_UTF8_0x60017eb(0);
  puVar1 = PTR_DAT_05e62738;
  if (plVar3 != (long *)0x0) {
    uVar2 = (**(code **)(*plVar3 + 0x388))(plVar3,uVar2,*(undefined8 *)(*plVar3 + 0x390));
    lVar6 = *(long *)puVar1;
    puVar7 = *(undefined8 **)(lVar6 + 0x38);
    if (puVar7 == (undefined8 *)0x0) {
      func_0x02a2ea54(lVar6);
      puVar7 = *(undefined8 **)(lVar6 + 0x38);
    }
    uVar8 = *puVar7;
    if (*(int *)(*(long *)(PTR_DAT_05e58a10 + 0xe0) + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar8 = func_0x04860260(uVar8,0);
    lVar4 = func_0x05860d58(uVar2,uVar8,0);
    lVar6 = *(long *)(*(long *)(lVar6 + 0x38) + 8);
    if ((*(ushort *)(lVar6 + 0x135) & 1) == 0) {
      lVar6 = func_0x02a2e9f8(lVar6);
    }
    if (lVar4 != 0) {
      lVar5 = func_0x029f5bd4(lVar4,lVar6);
      if (lVar5 != 0) {
        return lVar5;
      }
      func_0x029f607c(lVar4,lVar6);
    }
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

