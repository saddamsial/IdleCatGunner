/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b44b64, Ghidra VA 02c44b64. */

void Boss_Spawn(long param_1,undefined8 *param_2,uint param_3)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  long lVar5;
  uint uVar6;
  long lVar7;
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
  
  if ((bRam000000000625c0cf & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd30);
    func_0x029f5a50(PTR_DAT_05e632d8);
    bRam000000000625c0cf = 1;
  }
  *(uint *)(param_1 + 0x28) = param_3;
  uStack_58 = param_2[1];
  uStack_60 = *param_2;
  uStack_48 = param_2[3];
  uStack_50 = param_2[2];
  lVar5 = *(long *)(param_1 + 0x20);
  InfVal_op_Implicit_0x600003f(&uStack_80,0,0);
  if (lVar5 != 0) {
    uStack_98 = uStack_58;
    uStack_a0 = uStack_60;
    uStack_88 = uStack_48;
    uStack_90 = uStack_50;
    uStack_b8 = uStack_78;
    uStack_c0 = uStack_80;
    uStack_a8 = uStack_68;
    uStack_b0 = uStack_70;
    Enemy_Spawn_0x600097c(lVar5,&uStack_a0,&uStack_c0,0);
    puVar3 = PTR_DAT_05e632d8;
    puVar2 = PTR_DAT_05e5dd30;
    lVar5 = *(long *)(param_1 + 0x30);
    if (lVar5 != 0) {
      lVar7 = 0;
      while( true ) {
        uVar1 = *(uint *)(lVar5 + 0x18);
        uVar6 = (uint)lVar7;
        if ((int)uVar1 <= (int)uVar6) break;
        if (uVar1 <= uVar6) goto LAB_02c44d80;
        lVar5 = *(long *)(lVar5 + lVar7 * 8 + 0x20);
        if ((lVar5 == 0) || (lVar5 = GameObject_get_gameObject_0x6000d0f(lVar5,0), lVar5 == 0))
        goto LAB_02c44c60;
        GameObject_SetActive_0x6000cfe(lVar5,param_3 == uVar6,0);
        lVar5 = *(long *)(param_1 + 0x30);
        lVar7 = lVar7 + 1;
        if (lVar5 == 0) goto LAB_02c44c60;
      }
      if (uVar1 <= *(uint *)(param_1 + 0x28)) goto LAB_02c44d80;
      lVar5 = *(long *)(lVar5 + (long)(int)*(uint *)(param_1 + 0x28) * 8 + 0x20);
      if (lVar5 != 0) {
        uVar4 = func_0x030a02b4(lVar5,*(undefined8 *)puVar3);
        *(undefined8 *)(param_1 + 0x38) = uVar4;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x38),uVar4);
        lVar5 = *(long *)(param_1 + 0x48);
        if (lVar5 != 0) {
          if (*(uint *)(lVar5 + 0x18) <= param_3) {
LAB_02c44d80:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar7 = *(long *)puVar2;
          lVar5 = *(long *)(lVar5 + (long)(int)param_3 * 8 + 0x20);
          if (*(int *)(lVar7 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar7 = *(long *)puVar2;
          }
          lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 8);
          if ((lVar7 != 0) && (lVar7 = *(long *)(lVar7 + 0x68), lVar7 != 0)) {
            if (*(uint *)(lVar7 + 0x18) <= param_3) goto LAB_02c44d80;
            if (lVar5 != 0) {
              SpriteRenderer_set_sprite_0x6000197
                        (lVar5,*(undefined8 *)(lVar7 + (long)(int)param_3 * 8 + 0x20),0);
              lVar5 = Component_get_transform_0x6000c82(param_1,0);
              if (lVar5 != 0) {
                Transform_set_localPosition_0x6000f50(0xc1700000,0,0x41700000,lVar5,0);
                lVar5 = *(long *)(param_1 + 0x70);
                if (lVar5 != 0) {
                  MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar5,0);
                }
                uVar4 = Boss_WanderRoutine(param_1);
                uVar4 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar4,0);
                *(undefined8 *)(param_1 + 0x70) = uVar4;
                Managed_WriteBarrier((long *)(param_1 + 0x70),uVar4);
                return;
              }
            }
          }
        }
      }
    }
  }
LAB_02c44c60:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

