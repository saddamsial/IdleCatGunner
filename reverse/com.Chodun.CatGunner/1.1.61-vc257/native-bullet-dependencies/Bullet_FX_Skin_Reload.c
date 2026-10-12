/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6723c, Ghidra VA 02c6723c. */

void Bullet_FX_Skin_Reload(long param_1,uint param_2)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  long *plVar4;
  long lVar5;
  
  if ((bRam000000000625c257 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c257 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if (*(uint *)(param_1 + 0x30) == param_2) {
    uVar3 = *(undefined8 *)(param_1 + 0x20);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
    if ((uVar2 & 1) != 0) {
      if (*(long *)(param_1 + 0x20) != 0) {
        ParticleSystem_Clear_0x600000f(*(long *)(param_1 + 0x20),1,0);
        if (*(long *)(param_1 + 0x20) != 0) {
          ParticleSystem_Play_0x600000a(*(long *)(param_1 + 0x20),1,0);
          return;
        }
      }
      goto LAB_02c673c8;
    }
  }
  plVar4 = (long *)(param_1 + 0x20);
  lVar5 = *plVar4;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(lVar5,0,0);
  if ((uVar2 & 1) != 0) {
    if (*plVar4 == 0) goto LAB_02c673c8;
    ParticleSystem_Stop_0x600000c(*plVar4,1,0,0);
    if ((*plVar4 == 0) || (lVar5 = Component_get_gameObject_0x6000c83(*plVar4,0), lVar5 == 0))
    goto LAB_02c673c8;
    GameObject_SetActive_0x6000cfe(lVar5,0,0);
  }
  lVar5 = *(long *)(param_1 + 0x28);
  if (lVar5 != 0) {
    if (*(uint *)(lVar5 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *plVar4 = *(long *)(lVar5 + (long)(int)param_2 * 8 + 0x20);
    func_0x029f59f4(plVar4);
    if ((*plVar4 != 0) && (lVar5 = Component_get_gameObject_0x6000c83(*plVar4,0), lVar5 != 0)) {
      GameObject_SetActive_0x6000cfe(lVar5,1,0);
      if (*plVar4 != 0) {
        ParticleSystem_Clear_0x600000f(*plVar4,1,0);
        if (*plVar4 != 0) {
          ParticleSystem_Play_0x600000a(*plVar4,1,0);
          *(uint *)(param_1 + 0x30) = param_2;
          return;
        }
      }
    }
  }
LAB_02c673c8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

