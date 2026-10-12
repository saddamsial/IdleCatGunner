/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b381d4, Ghidra VA 02c381d4. */

void Buff_manager__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long lVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e631b8;
  if ((bRam000000000625c07d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631b8);
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    bRam000000000625c07d = 1;
  }
  puVar1 = PTR_DAT_05e58a10;
  uVar5 = *(undefined8 *)puVar2;
  if (*(int *)(*(long *)(PTR_DAT_05e58a10 + 0xe0) + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Type_GetTypeFromHandle_0x6000b54(uVar5,0);
  if (*(int *)(*(long *)(puVar1 + 0x98) + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)(puVar1 + 0x98));
  }
  lVar4 = Enum_GetValues_0x6000e08(uVar5,0);
  puVar2 = PTR_DAT_05e5d4c0;
  if (lVar4 != 0) {
    uVar3 = Array_get_Length_0x6000d2e(lVar4,0);
    *(undefined4 *)(*(long *)(*(long *)puVar2 + 0xb8) + 8) = uVar3;
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

