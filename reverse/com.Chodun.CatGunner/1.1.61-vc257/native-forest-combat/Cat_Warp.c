/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b42da4, Ghidra VA 02c42da4. */

void Cat_Warp(undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 *puVar3;
  undefined8 *puVar4;
  long lVar5;
  long lVar6;
  undefined8 uVar7;
  undefined4 uVar8;
  
  if ((bRam000000000625c0ba & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    bRam000000000625c0ba = 1;
  }
  if (*(long *)(param_4 + 0x30) != 0) {
    Rigidbody_set_position_0x60000a0(param_1,param_2,param_3,*(long *)(param_4 + 0x30),0);
    lVar5 = *(long *)(param_4 + 0x30);
    if (cRam000000000625b26f == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
    puVar1 = PTR_DAT_05e58bf8;
    if (lVar5 != 0) {
      puVar3 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      Rigidbody_set_linearVelocity_0x6000096(*puVar3,puVar3[1],puVar3[2],lVar5,0);
      lVar5 = Component_get_transform_0x6000c82(param_4,0);
      puVar2 = PTR_DAT_05e631d8;
      if (lVar5 != 0) {
        Transform_set_position_0x6000f4e(param_1,param_2,param_3,lVar5,0);
        lVar5 = *(long *)puVar2;
        lVar6 = *(long *)(param_4 + 0xb8);
        *(undefined1 *)(param_4 + 0x1f8) = 0;
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        if (lVar6 != 0) {
          lVar5 = *(long *)(*(long *)puVar2 + 0xb8);
          Transform_set_localEulerAngles_0x6000f54
                    (*(undefined4 *)(lVar5 + 0x2c),*(undefined4 *)(lVar5 + 0x30),
                     *(undefined4 *)(lVar5 + 0x34),lVar6,0);
          if (cRam000000000625b26f == '\0') {
            func_0x029f5a50(PTR_DAT_05e58bf8);
            cRam000000000625b26f = '\x01';
          }
          lVar5 = *(long *)puVar1;
          puVar4 = *(undefined8 **)(lVar5 + 0xb8);
          uVar8 = *(undefined4 *)(puVar4 + 1);
          *(undefined8 *)(param_4 + 0x230) = *puVar4;
          *(undefined4 *)(param_4 + 0x238) = uVar8;
          puVar4 = *(undefined8 **)(lVar5 + 0xb8);
          uVar7 = *puVar4;
          uVar8 = *(undefined4 *)(puVar4 + 1);
          *(undefined8 *)(param_4 + 0x178) = 0;
          *(undefined8 *)(param_4 + 0x188) = uVar7;
          *(undefined4 *)(param_4 + 400) = uVar8;
          if (iRam0000000006484da8 != 0) {
            func_0x02ae4790(1L << (param_4 + 0x178U >> 0xc & 0x3f),
                            (param_4 + 0x178U >> 0x12 & 0x7fff) * 8 + 0x62b8d80);
          }
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

