/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bac804, Ghidra VA 02cac804. */

uint Tree_Grid_Spread(undefined8 param_1,uint param_2)

{
  uint uVar1;
  
  uVar1 = (param_2 | param_2 << 8) & 0xff00ff;
  uVar1 = (uVar1 | uVar1 << 4) & 0xf0f0f0f;
  uVar1 = (uVar1 | uVar1 << 2) & 0x33333333;
  return (uVar1 | uVar1 << 1) & 0x55555555;
}

