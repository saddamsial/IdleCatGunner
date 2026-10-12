/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b66980, Ghidra VA 02c66980. */

void Bullet_HitPierce(undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4,
                     long param_5,ulong param_6,undefined4 param_7)

{
  char cVar1;
  undefined *puVar2;
  uint uVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  
  if ((bRam000000000625c250 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d560);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e639e0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c250 = 1;
  }
  if ((param_6 & 1) == 0) {
    Bullet_SpawnFX_0x6000a33(param_1,param_2,param_3,param_4);
    Bullet_DieAndWait_0x6000a31(param_4);
    return;
  }
  if (param_5 == 0) goto LAB_02c66c18;
  lVar4 = func_0x02fe5f2c(param_5,*(undefined8 *)PTR_DAT_05e5d560);
  puVar2 = PTR_DAT_05e591c0;
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)PTR_DAT_05e591c0);
  }
  uVar5 = Object_op_Inequality_0x6000ded(lVar4,0,0);
  if ((uVar5 & 1) != 0) {
    if (lVar4 == 0) goto LAB_02c66c18;
    uVar6 = *(undefined8 *)(lVar4 + 0x20);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar5 & 1) != 0) {
      if (*(long *)(lVar4 + 0x20) == 0) goto LAB_02c66c18;
      if (*(char *)(*(long *)(lVar4 + 0x20) + 0x24) == '\0') {
        if (*(long *)(param_4 + 0xd0) != 0) {
          HashSet_int_Add_ReferencedThunk
                    (*(long *)(param_4 + 0xd0),param_7,*(undefined8 *)PTR_DAT_05e639e0);
          lVar4 = *(long *)(lVar4 + 0x20);
          *(int *)(param_4 + 0xd8) = *(int *)(param_4 + 0xd8) + 1;
          if (lVar4 != 0) {
            uVar3 = InfVal_op_GreaterThanOrEqual_0x6000081(param_4 + 0x28,lVar4 + 0x28,0);
            uStack_68 = *(undefined8 *)(param_4 + 0x30);
            uStack_70 = *(undefined8 *)(param_4 + 0x28);
            uStack_58 = *(undefined8 *)(param_4 + 0x40);
            uStack_60 = *(undefined8 *)(param_4 + 0x38);
            uVar6 = *(undefined8 *)(param_4 + 0x48);
            cVar1 = *(char *)(param_4 + 0x24);
            if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uStack_88 = uStack_68;
            uStack_90 = uStack_70;
            uStack_78 = uStack_58;
            uStack_80 = uStack_60;
            Gamemanager_Damage_Collider_0x6000085
                      (param_1,param_2,param_3,param_5,&uStack_90,uVar6,cVar1 != '\0',0);
            if (*(char *)(param_4 + 0xdc) == '\0') {
              *(undefined1 *)(param_4 + 0xdc) = 1;
              Bullet_SpawnFX_0x6000a33(param_1,param_2,param_3,param_4);
            }
            if (**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8) != 0) {
              if ((*(int *)(**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8) + 0x20) == 5) ||
                 (1 < *(int *)(param_4 + 0xd8) && (uVar3 & 1) == 0)) {
                Bullet_DieAndWait_0x6000a31(param_4);
              }
              return;
            }
          }
        }
        goto LAB_02c66c18;
      }
    }
  }
  if (*(long *)(param_4 + 0xd0) != 0) {
    HashSet_int_Add_ReferencedThunk
              (*(long *)(param_4 + 0xd0),param_7,*(undefined8 *)PTR_DAT_05e639e0);
    return;
  }
LAB_02c66c18:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

