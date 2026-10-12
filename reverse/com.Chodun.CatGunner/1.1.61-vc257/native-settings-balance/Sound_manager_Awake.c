/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b223c0, Ghidra VA 02c223c0. */

void Sound_manager_Awake(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 extraout_x1;
  undefined8 extraout_x1_00;
  ulong uVar5;
  undefined8 uVar6;
  long lVar7;
  long *plVar8;
  
  if ((bRam000000000625bf6e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62be8);
    func_0x029f5a50(PTR_DAT_05e62bf0);
    func_0x029f5a50(PTR_DAT_05e62bf8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625bf6e = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  puVar2 = PTR_DAT_05e5dd70;
  uVar6 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar3 & 1) != 0) {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    uVar6 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar6,param_1,0);
    if ((uVar3 & 1) != 0) {
      lVar4 = Component_get_gameObject_0x6000c83(param_1,0);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar1);
      }
      puVar1 = PTR_DAT_05e591c0;
      uVar6 = 0;
      if ((bRam000000000626c761 & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e591c0,0);
        bRam000000000626c761 = 1;
        uVar6 = extraout_x1;
      }
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
        uVar6 = extraout_x1_00;
      }
      puVar1 = PTR_DAT_05ed5bd8;
      if ((bRam000000000626c760 & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05ed5bd8,uVar6);
        func_0x029f5a50(PTR_DAT_05e591c0);
        bRam000000000626c760 = 1;
      }
      if (*(long *)(*(long *)puVar1 + 0x38) == 0) {
        func_0x02a2ea54();
      }
      uVar6 = 0;
      if (lVar4 != 0) {
        uVar6 = *(undefined8 *)(lVar4 + 0x10);
      }
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      if (pcRam000000000626c7b8 == (code *)0x0) {
        pcRam000000000626c7b8 = (code *)func_0x029f5a0c(&UNK_01186649);
      }
                    /* WARNING: Could not recover jumptable at 0x057e6204. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (*pcRam000000000626c7b8)(0,uVar6);
      return;
    }
  }
  if (cRam000000000625c02d == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625c02d = '\x01';
  }
  **(long **)(*(long *)puVar2 + 0xb8) = param_1;
  func_0x029f59f4(*(undefined8 *)(*(long *)puVar2 + 0xb8),param_1);
  if (*(long *)(param_1 + 0x40) != 0) {
    func_0x03df078c(*(long *)(param_1 + 0x40),*(undefined8 *)PTR_DAT_05e62be8);
    puVar2 = PTR_DAT_05e62bf0;
    lVar4 = *(long *)(param_1 + 0x30);
    if (lVar4 != 0) {
      if (0 < (int)*(ulong *)(lVar4 + 0x18)) {
        uVar3 = 0;
        uVar5 = *(ulong *)(lVar4 + 0x18) & 0xffffffff;
        do {
          if (uVar5 <= uVar3) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar7 = *(long *)(lVar4 + 0x20 + uVar3 * 8);
          if (lVar7 != 0) {
            uVar6 = *(undefined8 *)(lVar7 + 0x18);
            if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar5 = Object_op_Equality_0x6000dec(uVar6,0,0);
            if ((uVar5 & 1) == 0) {
              if (*(long *)(param_1 + 0x40) == 0) goto LAB_02c2269c;
              func_0x03df05f0(*(long *)(param_1 + 0x40),*(undefined4 *)(lVar7 + 0x10),lVar7,
                              *(undefined8 *)puVar2);
            }
          }
          uVar5 = (ulong)*(uint *)(lVar4 + 0x18);
          uVar3 = uVar3 + 1;
        } while ((long)uVar3 < (long)(int)*(uint *)(lVar4 + 0x18));
      }
      plVar8 = (long *)(param_1 + 0x20);
      lVar4 = *plVar8;
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Equality_0x6000dec(lVar4,0,0);
      if ((uVar3 & 1) == 0) {
        return;
      }
      lVar4 = Component_get_gameObject_0x6000c83(param_1,0);
      if (lVar4 != 0) {
        lVar4 = func_0x030a0224(lVar4,*(undefined8 *)PTR_DAT_05e62bf8);
        *plVar8 = lVar4;
        func_0x029f59f4(plVar8,lVar4);
        if (*plVar8 != 0) {
          AudioSource_set_playOnAwake_0x600002a(*plVar8,0,0);
          lVar4 = *plVar8;
          if (lVar4 != 0) {
            if ((bRam000000000626a66c & 1) == 0) {
              func_0x029f5a50(PTR_DAT_05ed5860,0,0);
              bRam000000000626a66c = 1;
            }
            if (lVar4 != 0) {
              lVar7 = *(long *)(lVar4 + 0x10);
              if (lVar7 == 0) {
                func_0x057f539c(lVar4,0);
              }
              if (pcRam000000000626a6c0 == (code *)0x0) {
                pcRam000000000626a6c0 = (code *)func_0x029f5a0c(&UNK_0117701b);
              }
                    /* WARNING: Could not recover jumptable at 0x05788dd4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
              (*pcRam000000000626a6c0)(lVar7,0);
              return;
            }
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper();
          }
        }
      }
    }
  }
LAB_02c2269c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

