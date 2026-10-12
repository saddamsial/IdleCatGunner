/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba0748, Ghidra VA 02ca0748. */

void StarGem_Pig__Open_Popup(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c47b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e648b0);
    bRam000000000625c47b = 1;
  }
  uVar4 = *(undefined8 *)(param_1 + 0x30);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar4,0,0);
  puVar1 = PTR_DAT_05e648b0;
  if ((uVar2 & 1) != 0) {
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)puVar1,0);
    return;
  }
  StarGem_Pig__Season_Check(param_1);
  if ((*(long *)(param_1 + 0x30) != 0) &&
     (lVar3 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar3 != 0)) {
    GameObject_SetActive_0x6000cfe(lVar3,1,0);
    if (*(long *)(param_1 + 0x30) != 0) {
      StarGem_Pig_UI__Reload();
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

