/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b65958, Ghidra VA 02c65958. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Bullet_SpawnMissile(float param_1,float param_2,float param_3,float param_4,float param_5,
                        float param_6,undefined4 param_7,float param_8,long param_9,
                        undefined4 param_10,undefined8 *param_11,undefined8 param_12,byte param_13,
                        undefined4 param_14,undefined8 param_15,undefined8 param_16,float param_17)

{
  undefined *puVar1;
  char cVar2;
  long lVar3;
  float *pfVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  float fVar8;
  
  if ((bRam000000000625c24b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e639d0);
    bRam000000000625c24b = 1;
  }
  Bullet_Skin_Reload_0x6000a23(param_9,param_10);
  Bullet_Mesh_Reload_0x6000a24(param_9,param_10);
  Bullet_ResetState_0x6000a27(param_9);
  *(undefined4 *)(param_9 + 0x98) = 5;
  cVar2 = cRam000000000625bae8;
  *(undefined4 *)(param_9 + 0xa0) = param_14;
  *(undefined4 *)(param_9 + 0x9c) = param_7;
  *(undefined1 *)(param_9 + 0xa4) = 1;
  *(float *)(param_9 + 0xa8) = param_1;
  *(float *)(param_9 + 0xac) = param_2;
  *(float *)(param_9 + 0xb0) = param_3;
  *(float *)(param_9 + 0xb4) = param_4;
  *(float *)(param_9 + 0xb8) = param_5;
  *(float *)(param_9 + 0xbc) = param_6;
  *(float *)(param_9 + 0xc4) = param_8;
  *(undefined4 *)(param_9 + 200) = 0;
  if (cVar2 == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625bae8 = '\x01';
  }
  puVar1 = PTR_DAT_05e59000;
  param_4 = param_4 - param_1;
  param_6 = param_6 - param_3;
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  *(float *)(param_9 + 0xc0) = SQRT(param_4 * param_4 + param_6 * param_6) * param_17;
  if (*(long *)(param_9 + 0x58) != 0) {
    Rigidbody_set_isKinematic_0x600009b(*(long *)(param_9 + 0x58),1,0);
    lVar3 = Component_get_transform_0x6000c82(param_9,0);
    if (lVar3 != 0) {
      param_5 = param_5 - param_2;
      Transform_set_position_0x6000f4e(param_1,param_2,param_3,lVar3,0);
      *(float *)(param_9 + 0x6c) = param_1;
      *(float *)(param_9 + 0x70) = param_2;
      *(float *)(param_9 + 0x74) = param_3;
      fVar8 = param_6 * param_6 + param_4 * param_4 + param_5 * param_5;
      if (_UNK_0116c268 < fVar8) {
        lVar3 = Component_get_transform_0x6000c82(param_9,0);
        if (cRam000000000625b52e == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          cRam000000000625b52e = '\x01';
        }
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        fVar8 = SQRT(fVar8);
        if (fVar8 <= _UNK_0116c240) {
          if (cRam000000000625b26f == '\0') {
            func_0x029f5a50(PTR_DAT_05e58bf8);
            cRam000000000625b26f = '\x01';
          }
          pfVar4 = *(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
          param_4 = *pfVar4;
          param_5 = pfVar4[1];
          param_6 = pfVar4[2];
        }
        else {
          param_4 = param_4 / fVar8;
          param_5 = param_5 / fVar8;
          param_6 = param_6 / fVar8;
        }
        if (lVar3 == 0) goto LAB_02c65c40;
        Transform_set_forward_0x6000f58(param_4,param_5,param_6,lVar3,0);
      }
      uVar7 = param_11[1];
      uVar6 = *param_11;
      uVar5 = param_11[2];
      *(undefined8 *)(param_9 + 0x40) = param_11[3];
      *(undefined8 *)(param_9 + 0x38) = uVar5;
      *(undefined8 *)(param_9 + 0x30) = uVar7;
      *(undefined8 *)(param_9 + 0x28) = uVar6;
      func_0x029f59f4(param_9 + 0x28,0);
      *(undefined8 *)(param_9 + 0x48) = param_12;
      func_0x029f59f4((undefined8 *)(param_9 + 0x48),param_12);
      *(byte *)(param_9 + 0x24) = param_13 & 1;
      lVar3 = Component_get_gameObject_0x6000c83(param_9,0);
      if (lVar3 != 0) {
        GameObject_SetActive_0x6000cfe(lVar3,1,0);
        puVar1 = PTR_DAT_05e639d0;
        if (*(long *)(param_9 + 0x60) != 0) {
          ParticleSystem_Clear_0x6000010(*(long *)(param_9 + 0x60),0);
          MonoBehaviour_Invoke_0x6000d3d(param_8 + 0.5,param_9,*(undefined8 *)puVar1,0);
          return;
        }
      }
    }
  }
LAB_02c65c40:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

