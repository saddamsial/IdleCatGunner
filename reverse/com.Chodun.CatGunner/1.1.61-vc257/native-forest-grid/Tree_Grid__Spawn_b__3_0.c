/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bac8f4, Ghidra VA 02cac8f4. */

void Tree_Grid__Spawn_b__3_0(undefined8 param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  undefined8 uVar2;
  undefined4 uStack_24;
  
  uVar2 = Tree_Grid_Morton(param_1,param_2 % 10,param_2 / 10);
  uStack_24 = (undefined4)uVar2;
  uVar1 = Tree_Grid_Morton(uVar2,param_3 % 10);
  Int32_CompareTo_0x600080a(&uStack_24,uVar1,0);
  return;
}

