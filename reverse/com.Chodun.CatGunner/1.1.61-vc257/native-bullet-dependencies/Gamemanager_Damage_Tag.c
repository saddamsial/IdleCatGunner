/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7ff50, Ghidra VA 02b7ff50. */

undefined8 Gamemanager_Damage_Tag(long param_1,undefined8 *param_2)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  undefined8 uVar4;
  undefined8 *puVar5;
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
  
  puVar5 = &uStack_90;
  if ((bRam000000000625b8c8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d560);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d568);
    func_0x029f5a50(PTR_DAT_05e5d570);
    bRam000000000625b8c8 = 1;
  }
  if ((param_1 == 0) || (lVar2 = Component_get_gameObject_0x6000c83(param_1,0), lVar2 == 0)) {
LAB_02b800f0:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar3 = GameObject_get_activeInHierarchy_0x6000d00(lVar2,0);
  puVar1 = PTR_DAT_05e5d560;
  if ((uVar3 & 1) != 0) {
    uVar4 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e5d560);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e591c0);
    }
    uVar3 = Object_op_Implicit_0x6000da6(uVar4,0);
    if ((uVar3 & 1) != 0) {
      lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar1);
      if ((lVar2 != 0) && (*(long *)(lVar2 + 0x20) != 0)) {
        uVar4 = Component_get_tag_0x6000ca1(*(long *)(lVar2 + 0x20),0);
        uVar3 = String_op_Equality_0x600025a(uVar4,*(undefined8 *)PTR_DAT_05e5d568,0);
        if ((uVar3 & 1) == 0) {
          uVar3 = String_op_Equality_0x600025a(uVar4,*(undefined8 *)PTR_DAT_05e5d570,0);
          if ((uVar3 & 1) == 0) {
            return 0;
          }
          lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar1);
          if (lVar2 != 0) {
            lVar2 = *(long *)(lVar2 + 0x20);
            InfVal_op_Implicit_0x600003f(&uStack_70,1,0);
            if (lVar2 != 0) {
              uStack_88 = uStack_68;
              uStack_90 = uStack_70;
              uStack_78 = uStack_58;
              uStack_80 = uStack_60;
              goto LAB_02b800c8;
            }
          }
        }
        else {
          lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar1);
          if ((lVar2 != 0) && (lVar2 = *(long *)(lVar2 + 0x20), lVar2 != 0)) {
            uStack_48 = param_2[1];
            uStack_50 = *param_2;
            uStack_38 = param_2[3];
            uStack_40 = param_2[2];
            puVar5 = &uStack_50;
LAB_02b800c8:
            Enemy_Damaged_0x600097d(lVar2,puVar5,0);
            return 1;
          }
        }
      }
      goto LAB_02b800f0;
    }
  }
  return 0;
}

