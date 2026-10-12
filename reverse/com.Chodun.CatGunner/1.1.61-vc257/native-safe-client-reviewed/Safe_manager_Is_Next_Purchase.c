/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6bd28, Ghidra VA 02c6bd28. */

bool Safe_manager_Is_Next_Purchase(long param_1,uint param_2)

{
  uint uVar1;
  
  uVar1 = *(int *)(param_1 + 0x28) + 6;
  if (0xf < (int)uVar1) {
    uVar1 = 0x10;
  }
  return (int)param_2 < 0x10 && (uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) == param_2;
}

