/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b547cc, Ghidra VA 02c547cc. */

undefined4 Raid_Mission_manager_Current_Value(int param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c179 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c179 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  uVar5 = **(undefined8 **)(lVar3 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar4 & 1) != 0) {
    return 0;
  }
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  if (**(long **)(lVar3 + 0xb8) != 0) {
    Raid_manager_Season_Check_0x600090a();
    lVar3 = *(long *)puVar2;
    if (param_1 == 0) {
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar2;
      }
      if (**(long **)(lVar3 + 0xb8) != 0) {
        return *(undefined4 *)(**(long **)(lVar3 + 0xb8) + 0x7c);
      }
    }
    else {
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar2;
      }
      if (**(long **)(lVar3 + 0xb8) != 0) {
        return *(undefined4 *)(**(long **)(lVar3 + 0xb8) + 0x80);
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

