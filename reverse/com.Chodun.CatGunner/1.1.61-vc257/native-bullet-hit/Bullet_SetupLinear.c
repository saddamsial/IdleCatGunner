/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b657d0, Ghidra VA 02c657d0. */

void Bullet_SetupLinear(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                       float param_5,float param_6,long param_7,undefined8 *param_8,
                       undefined8 param_9,byte param_10)

{
  long lVar1;
  long lVar2;
  float fVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  float fVar7;
  
  if (*(long *)(param_7 + 0x60) != 0) {
    ParticleSystem_Stop_0x600000c(*(long *)(param_7 + 0x60),1,0,0);
    if (*(long *)(param_7 + 0x60) != 0) {
      ParticleSystem_Clear_0x600000f(*(long *)(param_7 + 0x60),1,0);
      if (*(long *)(param_7 + 0x58) != 0) {
        Rigidbody_set_isKinematic_0x600009b(*(long *)(param_7 + 0x58),0,0);
        lVar1 = Component_get_transform_0x6000c82(param_7,0);
        if (lVar1 != 0) {
          Transform_set_position_0x6000f4e(param_1,param_2,param_3,lVar1,0);
          *(undefined4 *)(param_7 + 0x6c) = param_1;
          *(undefined4 *)(param_7 + 0x70) = param_2;
          *(undefined4 *)(param_7 + 0x74) = param_3;
          lVar1 = Component_get_transform_0x6000c82(param_7,0);
          if (lVar1 != 0) {
            Transform_set_forward_0x6000f58(param_4,param_5,param_6,lVar1,0);
            lVar2 = *(long *)(param_7 + 0x58);
            lVar1 = Component_get_transform_0x6000c82(param_7,0);
            if ((lVar1 != 0) &&
               (fVar3 = (float)Transform_get_forward_0x6000f57(lVar1,0), lVar2 != 0)) {
              fVar7 = *(float *)(param_7 + 0x50);
              Rigidbody_set_linearVelocity_0x6000096
                        (fVar3 * fVar7,param_5 * fVar7,param_6 * fVar7,lVar2,0);
              uVar6 = param_8[1];
              uVar5 = *param_8;
              uVar4 = param_8[2];
              *(undefined8 *)(param_7 + 0x40) = param_8[3];
              *(undefined8 *)(param_7 + 0x38) = uVar4;
              *(undefined8 *)(param_7 + 0x30) = uVar6;
              *(undefined8 *)(param_7 + 0x28) = uVar5;
              func_0x029f59f4(param_7 + 0x28,0);
              *(undefined8 *)(param_7 + 0x48) = param_9;
              func_0x029f59f4((undefined8 *)(param_7 + 0x48),param_9);
              *(byte *)(param_7 + 0x24) = param_10 & 1;
              lVar1 = Component_get_gameObject_0x6000c83(param_7,0);
              if (lVar1 != 0) {
                GameObject_SetActive_0x6000cfe(lVar1,1,0);
                if (*(long *)(param_7 + 0x60) != 0) {
                  ParticleSystem_Play_0x600000a(*(long *)(param_7 + 0x60),1,0);
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
  Throw_NullReference_Wrapper();
}

