/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b66180, Ghidra VA 02c66180. */

void Bullet_SpawnFX(undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4)

{
  undefined4 uVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  long lStack_38;
  
  puVar2 = PTR_DAT_05e639f0;
  if ((bRam000000000625c254 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e639f8);
    func_0x029f5a50(PTR_DAT_05e63a00);
    func_0x029f5a50(PTR_DAT_05e63a08);
    func_0x029f5a50(PTR_DAT_05e639f0);
    func_0x029f5a50(PTR_DAT_05e63a10);
    func_0x029f5a50(PTR_DAT_05e62768);
    bRam000000000625c254 = 1;
  }
  uVar1 = *(undefined4 *)(param_4 + 0x20);
  lStack_38 = 0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = FXThrottle_CanSpawn_0x6000a3e(param_1,param_2,param_3,uVar1);
  if ((uVar3 & 1) == 0) {
    return;
  }
  if (**(long **)(*(long *)PTR_DAT_05e62768 + 0xb8) != 0) {
    lVar4 = Polling_manager_Object_Polling(**(long **)(*(long *)PTR_DAT_05e62768 + 0xb8),1,0);
    puVar2 = PTR_DAT_05e639f8;
    lVar5 = *(long *)PTR_DAT_05e639f8;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0(lVar5);
      lVar5 = *(long *)puVar2;
    }
    if (**(long **)(lVar5 + 0xb8) != 0) {
      uVar3 = func_0x03e4810c(**(long **)(lVar5 + 0xb8),lVar4,&lStack_38,
                              *(undefined8 *)PTR_DAT_05e63a00);
      if ((uVar3 & 1) == 0) {
        if (lVar4 == 0) goto LAB_02c6632c;
        lStack_38 = func_0x030a02b4(lVar4,*(undefined8 *)PTR_DAT_05e63a10);
        lVar5 = *(long *)puVar2;
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0(lVar5);
          lVar5 = *(long *)puVar2;
        }
        if (**(long **)(lVar5 + 0xb8) == 0) goto LAB_02c6632c;
        func_0x03e46590(**(long **)(lVar5 + 0xb8),lVar4,lStack_38,*(undefined8 *)PTR_DAT_05e63a08);
      }
      if (lStack_38 != 0) {
        Bullet_FX_Spawn_0x6000a3b(param_1,param_2,param_3,lStack_38,*(undefined4 *)(param_4 + 0x20))
        ;
        return;
      }
    }
  }
LAB_02c6632c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

