/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2badf20, Ghidra VA 02cadf20. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Tree_manager__cctor(void)

{
  undefined8 uVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  long *plVar5;
  undefined8 uStack_130;
  undefined8 uStack_128;
  undefined8 uStack_120;
  undefined8 uStack_118;
  undefined8 uStack_110;
  undefined8 uStack_108;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  puVar3 = PTR_DAT_05e63090;
  if ((bRam000000000625c529 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63090);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c529 = 1;
  }
  lVar4 = func_0x029f5b40(*(undefined8 *)puVar3,4);
  InfVal_op_Implicit_0x600003f(&uStack_50,1,0);
  if (lVar4 != 0) {
    if (*(int *)(lVar4 + 0x18) != 0) {
      *(undefined8 *)(lVar4 + 0x28) = uStack_48;
      *(undefined8 *)(lVar4 + 0x20) = uStack_50;
      *(undefined8 *)(lVar4 + 0x38) = uStack_38;
      *(undefined8 *)(lVar4 + 0x30) = uStack_40;
      func_0x029f59f4(lVar4 + 0x20,0);
      uVar1 = _UNK_01170ac8;
      InfVal_op_Implicit_0x600004c(&uStack_70,_UNK_01170ac8,0);
      if ((*(uint *)(lVar4 + 0x18) & 0xfffffffe) != 0) {
        *(undefined8 *)(lVar4 + 0x48) = uStack_68;
        *(undefined8 *)(lVar4 + 0x40) = uStack_70;
        *(undefined8 *)(lVar4 + 0x58) = uStack_58;
        *(undefined8 *)(lVar4 + 0x50) = uStack_60;
        func_0x029f59f4(lVar4 + 0x40,0);
        InfVal_op_Implicit_0x600003f(&uStack_90,3,0);
        if (2 < *(uint *)(lVar4 + 0x18)) {
          *(undefined8 *)(lVar4 + 0x68) = uStack_88;
          *(undefined8 *)(lVar4 + 0x60) = uStack_90;
          *(undefined8 *)(lVar4 + 0x78) = uStack_78;
          *(undefined8 *)(lVar4 + 0x70) = uStack_80;
          func_0x029f59f4(lVar4 + 0x60,0);
          InfVal_op_Implicit_0x600003f(&uStack_b0,0x23,0);
          puVar2 = PTR_DAT_05e5dc20;
          if ((*(uint *)(lVar4 + 0x18) & 0xfffffffc) != 0) {
            *(undefined8 *)(lVar4 + 0x88) = uStack_a8;
            *(undefined8 *)(lVar4 + 0x80) = uStack_b0;
            *(undefined8 *)(lVar4 + 0x98) = uStack_98;
            *(undefined8 *)(lVar4 + 0x90) = uStack_a0;
            func_0x029f59f4(lVar4 + 0x80,0);
            **(long **)(*(long *)puVar2 + 0xb8) = lVar4;
            func_0x029f59f4(*(undefined8 *)(*(long *)puVar2 + 0xb8),lVar4);
            lVar4 = func_0x029f5b40(*(undefined8 *)puVar3,4);
            InfVal_op_Implicit_0x600003f(&uStack_d0,1,0);
            if (lVar4 == 0) goto LAB_02cae164;
            if (*(int *)(lVar4 + 0x18) != 0) {
              *(undefined8 *)(lVar4 + 0x28) = uStack_c8;
              *(undefined8 *)(lVar4 + 0x20) = uStack_d0;
              *(undefined8 *)(lVar4 + 0x38) = uStack_b8;
              *(undefined8 *)(lVar4 + 0x30) = uStack_c0;
              func_0x029f59f4(lVar4 + 0x20,0);
              InfVal_op_Implicit_0x600004c(&uStack_f0,uVar1,0);
              if ((*(uint *)(lVar4 + 0x18) & 0xfffffffe) != 0) {
                *(undefined8 *)(lVar4 + 0x48) = uStack_e8;
                *(undefined8 *)(lVar4 + 0x40) = uStack_f0;
                *(undefined8 *)(lVar4 + 0x58) = uStack_d8;
                *(undefined8 *)(lVar4 + 0x50) = uStack_e0;
                func_0x029f59f4(lVar4 + 0x40,0);
                InfVal_op_Implicit_0x600003f(&uStack_110,3,0);
                if (2 < *(uint *)(lVar4 + 0x18)) {
                  *(undefined8 *)(lVar4 + 0x68) = uStack_108;
                  *(undefined8 *)(lVar4 + 0x60) = uStack_110;
                  *(undefined8 *)(lVar4 + 0x78) = uStack_f8;
                  *(undefined8 *)(lVar4 + 0x70) = uStack_100;
                  func_0x029f59f4(lVar4 + 0x60,0);
                  InfVal_op_Implicit_0x600003f(&uStack_130,100,0);
                  if ((*(uint *)(lVar4 + 0x18) & 0xfffffffc) != 0) {
                    *(undefined8 *)(lVar4 + 0x88) = uStack_128;
                    *(undefined8 *)(lVar4 + 0x80) = uStack_130;
                    *(undefined8 *)(lVar4 + 0x98) = uStack_118;
                    *(undefined8 *)(lVar4 + 0x90) = uStack_120;
                    func_0x029f59f4(lVar4 + 0x80,0);
                    plVar5 = (long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
                    *plVar5 = lVar4;
                    func_0x029f59f4(plVar5,lVar4);
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
LAB_02cae164:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

