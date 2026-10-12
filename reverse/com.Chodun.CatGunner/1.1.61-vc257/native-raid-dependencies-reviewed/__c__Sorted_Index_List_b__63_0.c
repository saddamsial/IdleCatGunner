/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5a0dc, Ghidra VA 02c5a0dc. */

ulong __c__Sorted_Index_List_b__63_0(undefined8 param_1,long param_2,undefined4 *param_3)

{
  uint uVar1;
  ulong uVar2;
  
  uVar2 = InfVal_op_Inequality_0x600007d(param_2 + 8,param_3 + 2,0);
  if ((uVar2 & 1) != 0) {
    uVar2 = InfVal_op_GreaterThan_0x600007f(param_2 + 8,param_3 + 2,0);
    uVar1 = 1;
    if ((uVar2 & 1) != 0) {
      uVar1 = 0xffffffff;
    }
    return (ulong)uVar1;
  }
  uVar2 = Int32_CompareTo_0x600080a(param_2,*param_3,0);
  return uVar2;
}

