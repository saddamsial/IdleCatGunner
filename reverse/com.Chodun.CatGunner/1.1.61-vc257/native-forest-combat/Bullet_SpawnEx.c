/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b655a8, Ghidra VA 02c655a8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Bullet_SpawnEx(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                   undefined4 param_5,undefined4 param_6,undefined4 param_7,float param_8,
                   long param_9,undefined4 param_10,undefined8 *param_11,undefined8 param_12,
                   uint param_13,undefined4 param_14,undefined4 param_15)

{
  undefined *puVar1;
  float fVar2;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  
  puVar1 = PTR_DAT_05e639d0;
  if ((bRam000000000625c24a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e639d0);
    bRam000000000625c24a = 1;
  }
  Bullet_Skin_Reload(param_9,param_10);
  Bullet_Mesh_Reload(param_9,param_10);
  Bullet_ResetState(param_9);
  *(undefined4 *)(param_9 + 0x98) = param_14;
  *(undefined4 *)(param_9 + 0x9c) = param_7;
  *(undefined4 *)(param_9 + 0xa0) = param_15;
  uStack_a8 = param_11[1];
  uStack_b0 = *param_11;
  uStack_98 = param_11[3];
  uStack_a0 = param_11[2];
  Bullet_SetupLinear_0x6000a28
            (param_1,param_2,param_3,param_4,param_5,param_6,param_9,&uStack_b0,param_12,
             param_13 & 1);
  fVar2 = *(float *)(param_9 + 0x50);
  if (*(float *)(param_9 + 0x50) <= _UNK_0116c174) {
    fVar2 = _UNK_0116c174;
  }
  if (50.0 / fVar2 <= param_8) {
    param_8 = 50.0 / fVar2;
  }
  MonoBehaviour_Invoke_0x6000d3d(param_8,param_9,*(undefined8 *)puVar1,0);
  return;
}

