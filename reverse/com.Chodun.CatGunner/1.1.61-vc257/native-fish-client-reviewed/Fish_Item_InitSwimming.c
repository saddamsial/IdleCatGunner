/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61374, Ghidra VA 02c61374. */

void Fish_Item_InitSwimming(long param_1)

{
  undefined4 uVar1;
  
  uVar1 = Random_Range_0x6000ba6(0x41700000,0x420c0000,0);
  *(undefined4 *)(param_1 + 0xbc) = uVar1;
  Fish_Item_PickNewDirection(param_1);
  uVar1 = Random_Range_0x6000ba6(0x40000000,0x40a00000,0);
  *(undefined4 *)(param_1 + 0xc0) = uVar1;
  *(undefined4 *)(param_1 + 0xc4) = uVar1;
  return;
}

