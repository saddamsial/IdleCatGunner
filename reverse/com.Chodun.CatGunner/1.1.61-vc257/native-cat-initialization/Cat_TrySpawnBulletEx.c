/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b41e38, Ghidra VA 02c41e38. */

uint Cat_TrySpawnBulletEx
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
               long param_9,undefined4 param_10,undefined8 *param_11,undefined8 param_12,
               uint param_13)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  long lVar4;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  
  puVar2 = PTR_DAT_05e62768;
  if ((bRam000000000625c0b4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62770);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62768);
    bRam000000000625c0b4 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
    lVar4 = Polling_manager_Object_Polling_Smart_0x60004a2(**(long **)(*(long *)puVar2 + 0xb8),0,0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar3 = Object_op_Equality_0x6000dec(lVar4,0,0);
    if ((uVar3 & 1) == 0) {
      if ((lVar4 == 0) ||
         (lVar4 = func_0x030a02b4(lVar4,*(undefined8 *)PTR_DAT_05e62770), lVar4 == 0))
      goto LAB_02c41fb8;
      uStack_98 = param_11[1];
      uStack_a0 = *param_11;
      uStack_88 = param_11[3];
      uStack_90 = param_11[2];
      Bullet_SpawnEx_0x6000a25
                (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,lVar4,
                 *(undefined4 *)(param_9 + 0x40),&uStack_a0,param_12,param_13 & 1,param_10,
                 *(undefined4 *)(param_9 + 0xb4),0);
    }
    return (uVar3 ^ 0xffffffff) & 1;
  }
LAB_02c41fb8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

