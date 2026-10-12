/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7a91c, Ghidra VA 02c7a91c. */

void Pet_Warp(undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4)

{
  undefined4 *puVar1;
  long lVar2;
  
  if (*(long *)(param_4 + 0x28) != 0) {
    Rigidbody_set_position_0x60000a0(*(long *)(param_4 + 0x28),0);
    lVar2 = *(long *)(param_4 + 0x28);
    if (cRam000000000625b26f == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
    if (lVar2 != 0) {
      puVar1 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      Rigidbody_set_linearVelocity_0x6000096(*puVar1,puVar1[1],puVar1[2],lVar2,0);
      lVar2 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar2 != 0) {
        Transform_set_position_0x6000f4e(param_1,param_2,param_3,lVar2,0);
        *(undefined1 *)(param_4 + 100) = 0;
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

