/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba5890, Ghidra VA 02ca5890. */

undefined8 IAP_PriceText_ResolveId(long param_1,long param_2)

{
  undefined *puVar1;
  int iVar2;
  undefined8 uVar3;
  uint uVar4;
  undefined8 *puVar5;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined4 uStack_28;
  
  if ((bRam000000000625c4bf & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64318);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    func_0x029f5a50(PTR_DAT_05e641c8);
    func_0x029f5a50(PTR_DAT_05e641d8);
    func_0x029f5a50(PTR_DAT_05e63ec0);
    func_0x029f5a50(PTR_DAT_05e64268);
    func_0x029f5a50(PTR_DAT_05e64288);
    bRam000000000625c4bf = 1;
  }
  switch(*(undefined4 *)(param_1 + 0x20)) {
  case 0:
    if (param_2 != 0) {
      uVar4 = 0;
code_r0x02ca5b60:
      if ((bRam000000000625c452 & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e641e0,uVar4,0);
        func_0x029f5a50(PTR_DAT_05e64248);
        func_0x029f5a50(PTR_DAT_05e64298);
        func_0x029f5a50(PTR_DAT_05e642a0);
        func_0x029f5a50(PTR_DAT_05e642c0);
        func_0x029f5a50(PTR_DAT_05e642d0);
        bRam000000000625c452 = 1;
      }
      if (uVar4 < 3) {
        puVar5 = (undefined8 *)PTR_DAT_05e64298;
        if (((uVar4 != 0) && (puVar5 = (undefined8 *)PTR_DAT_05e642c0, uVar4 != 1)) &&
           (puVar5 = (undefined8 *)PTR_DAT_05e641e0, uVar4 != 2)) {
          return 0;
        }
      }
      else {
        puVar5 = (undefined8 *)PTR_DAT_05e64248;
        if (((uVar4 != 3) && (puVar5 = (undefined8 *)PTR_DAT_05e642a0, uVar4 != 4)) &&
           (puVar5 = (undefined8 *)PTR_DAT_05e642d0, uVar4 != 5)) {
          return 0;
        }
      }
      return *puVar5;
    }
    break;
  case 1:
    if (param_2 != 0) {
      uVar4 = 1;
      goto code_r0x02ca5b60;
    }
    break;
  case 2:
    if (param_2 != 0) {
      uVar4 = 2;
      goto code_r0x02ca5b60;
    }
    break;
  case 3:
    if (param_2 != 0) {
      uVar4 = 3;
      goto code_r0x02ca5b60;
    }
    break;
  case 4:
    if (param_2 != 0) {
      uVar4 = 4;
      goto code_r0x02ca5b60;
    }
    break;
  case 5:
    if (param_2 != 0) {
      uVar4 = 5;
      goto code_r0x02ca5b60;
    }
    break;
  case 6:
    uStack_28 = 0;
    uStack_38 = *(undefined8 *)PTR_DAT_05e64318;
    goto code_r0x02ca5bf8;
  case 7:
    uStack_38 = *(undefined8 *)PTR_DAT_05e64318;
    uStack_28 = 1;
    goto code_r0x02ca5bf8;
  case 8:
    uStack_38 = *(undefined8 *)PTR_DAT_05e64318;
    uStack_28 = 2;
    goto code_r0x02ca5bf8;
  case 9:
    uStack_38 = *(undefined8 *)PTR_DAT_05e64318;
    uStack_28 = 3;
    goto code_r0x02ca5bf8;
  case 10:
    uStack_38 = *(undefined8 *)PTR_DAT_05e64318;
    uStack_28 = 4;
code_r0x02ca5bf8:
    uStack_30 = 0xffffffffffffffff;
    uVar3 = Enum_ToString_0x6000e16(&uStack_38,0);
    return uVar3;
  case 0xb:
    if (param_2 != 0) {
      iVar2 = 0;
code_r0x02ca5a48:
      if ((bRam000000000625c453 & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e64208,iVar2,0);
        func_0x029f5a50(PTR_DAT_05e5e170);
        bRam000000000625c453 = 1;
      }
      puVar5 = (undefined8 *)PTR_DAT_05e64208;
      if ((iVar2 == 1) || (puVar5 = (undefined8 *)PTR_DAT_05e5e170, iVar2 == 0)) {
        uVar3 = *puVar5;
      }
      else {
        uVar3 = 0;
      }
      return uVar3;
    }
    break;
  case 0xc:
    if (param_2 != 0) {
      iVar2 = 1;
      goto code_r0x02ca5a48;
    }
    break;
  case 0xd:
    puVar5 = (undefined8 *)PTR_DAT_05e641c8;
    goto code_r0x02ca5c44;
  case 0xe:
    puVar5 = (undefined8 *)PTR_DAT_05e63ec0;
    goto code_r0x02ca5c44;
  case 0xf:
    if (param_2 != 0) {
      uVar4 = 0;
code_r0x02ca5c1c:
      if ((bRam000000000625c42a & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e64200,uVar4,0);
        func_0x029f5a50(PTR_DAT_05e64238);
        func_0x029f5a50(PTR_DAT_05e64260);
        func_0x029f5a50(PTR_DAT_05e64270);
        func_0x029f5a50(PTR_DAT_05e64278);
        func_0x029f5a50(PTR_DAT_05e642a8);
        func_0x029f5a50(PTR_DAT_05e642b0);
        bRam000000000625c42a = 1;
      }
      if (uVar4 < 3) {
        puVar5 = (undefined8 *)PTR_DAT_05e64260;
        if (((uVar4 != 0) && (puVar5 = (undefined8 *)PTR_DAT_05e64200, uVar4 != 1)) &&
           (puVar5 = (undefined8 *)PTR_DAT_05e64278, uVar4 != 2)) {
          return 0;
        }
      }
      else if (uVar4 < 5) {
        puVar5 = (undefined8 *)PTR_DAT_05e64238;
        if ((uVar4 != 3) && (puVar5 = (undefined8 *)PTR_DAT_05e642a8, uVar4 != 4)) {
          return 0;
        }
      }
      else {
        puVar5 = (undefined8 *)PTR_DAT_05e642b0;
        if ((uVar4 != 5) && (puVar5 = (undefined8 *)PTR_DAT_05e64270, uVar4 != 6)) {
          return 0;
        }
      }
      return *puVar5;
    }
    break;
  case 0x10:
    if (param_2 != 0) {
      uVar4 = 1;
      goto code_r0x02ca5c1c;
    }
    break;
  case 0x11:
    if (param_2 != 0) {
      uVar4 = 2;
      goto code_r0x02ca5c1c;
    }
    break;
  case 0x12:
    if (param_2 != 0) {
      uVar4 = 3;
      goto code_r0x02ca5c1c;
    }
    break;
  case 0x13:
    if (param_2 != 0) {
      uVar4 = 4;
      goto code_r0x02ca5c1c;
    }
    break;
  case 0x14:
    if (param_2 != 0) {
      uVar4 = 5;
      goto code_r0x02ca5c1c;
    }
    break;
  case 0x15:
    if (param_2 != 0) {
      uVar4 = 6;
      goto code_r0x02ca5c1c;
    }
    break;
  case 0x16:
  case 0x17:
  case 0x18:
  case 0x19:
  case 0x1a:
    if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    puVar1 = PTR_DAT_05e641b0;
    if ((bRam000000000625c40f & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e641b0,0);
      bRam000000000625c40f = 1;
    }
    uVar3 = Int32_ToString_0x600080e(&stack0xffffffffffffffec,0);
    uVar3 = String_Concat_0x6000298(*(undefined8 *)puVar1,uVar3,0);
    return uVar3;
  case 0x1b:
  case 0x1c:
  case 0x1d:
    if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    puVar1 = PTR_DAT_05e642f8;
    if ((bRam000000000625c413 & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e642f8,0);
      bRam000000000625c413 = 1;
    }
    uVar3 = Int32_ToString_0x600080e(&stack0xffffffffffffffec,0);
    uVar3 = String_Concat_0x6000298(*(undefined8 *)puVar1,uVar3,0);
    return uVar3;
  case 0x1e:
    if (*(int *)(*(long *)PTR_DAT_05e5e0b8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar2 = 0;
    goto PlusPack_Product_id_return;
  case 0x1f:
    if (*(int *)(*(long *)PTR_DAT_05e5e0b8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar2 = 1;
    goto PlusPack_Product_id_return;
  case 0x20:
    if (*(int *)(*(long *)PTR_DAT_05e5e0b8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar2 = 2;
PlusPack_Product_id_return:
    if ((bRam000000000625c3ec & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e64130,0);
      func_0x029f5a50(PTR_DAT_05e64138);
      func_0x029f5a50(PTR_DAT_05e64140);
      bRam000000000625c3ec = 1;
    }
    puVar5 = (undefined8 *)PTR_DAT_05e64138;
    if (((iVar2 == 2) || (puVar5 = (undefined8 *)PTR_DAT_05e64140, iVar2 == 1)) ||
       (puVar5 = (undefined8 *)PTR_DAT_05e64130, iVar2 == 0)) {
      uVar3 = *puVar5;
    }
    else {
      uVar3 = 0;
    }
    return uVar3;
  case 0x21:
  case 0x22:
  case 0x23:
    if (*(int *)(*(long *)PTR_DAT_05e5e3e0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    puVar1 = PTR_DAT_05e64440;
    if ((bRam000000000625c476 & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e64440);
      bRam000000000625c476 = 1;
    }
    uVar3 = Int32_ToString_0x600080e(&stack0xffffffffffffffec,0);
    uVar3 = String_Concat_0x6000298(*(undefined8 *)puVar1,uVar3,0);
    return uVar3;
  case 0x24:
    puVar5 = (undefined8 *)PTR_DAT_05e64288;
    goto code_r0x02ca5c44;
  case 0x25:
    puVar5 = (undefined8 *)PTR_DAT_05e641d8;
    goto code_r0x02ca5c44;
  case 0x26:
    puVar5 = (undefined8 *)PTR_DAT_05e64268;
code_r0x02ca5c44:
    return *puVar5;
  default:
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

