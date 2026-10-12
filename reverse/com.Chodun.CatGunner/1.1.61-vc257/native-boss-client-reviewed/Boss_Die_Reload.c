/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b44df0, Ghidra VA 02c44df0. */

void Boss_Die_Reload(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined4 *puVar3;
  long lVar4;
  
  if ((bRam000000000625c0d0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd30);
    func_0x029f5a50(PTR_DAT_05e632e8);
    bRam000000000625c0d0 = 1;
  }
  puVar1 = PTR_DAT_05e5dd30;
  lVar2 = *(long *)(param_1 + 0x48);
  if (lVar2 != 0) {
    if (*(uint *)(lVar2 + 0x18) <= *(uint *)(param_1 + 0x28)) {
LAB_02c44f50:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar4 = *(long *)(lVar2 + (long)(int)*(uint *)(param_1 + 0x28) * 8 + 0x20);
    lVar2 = *(long *)PTR_DAT_05e5dd30;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 8);
    if ((lVar2 != 0) && (lVar2 = *(long *)(lVar2 + 0x60), lVar2 != 0)) {
      if (*(uint *)(lVar2 + 0x18) <= *(uint *)(param_1 + 0x28)) goto LAB_02c44f50;
      if (lVar4 != 0) {
        SpriteRenderer_set_sprite_0x6000197
                  (lVar4,*(undefined8 *)(lVar2 + (long)(int)*(uint *)(param_1 + 0x28) * 8 + 0x20),0)
        ;
        if (*(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8) != 0) {
          Boss_manager_Boss_Destroyed();
          if (*(long *)(param_1 + 0x38) != 0) {
            Animator_SetTrigger_0x6000036
                      (*(long *)(param_1 + 0x38),*(undefined8 *)PTR_DAT_05e632e8,0);
            lVar2 = *(long *)(param_1 + 0x70);
            if (lVar2 != 0) {
              MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar2,0);
              *(undefined8 *)(param_1 + 0x70) = 0;
              Managed_WriteBarrier((long *)(param_1 + 0x70),0);
            }
            lVar2 = *(long *)(param_1 + 0x40);
            if (cRam000000000625b26f == '\0') {
              func_0x029f5a50(PTR_DAT_05e58bf8);
              cRam000000000625b26f = '\x01';
            }
            if (lVar2 != 0) {
              puVar3 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
              Rigidbody_set_linearVelocity_0x6000096(*puVar3,puVar3[1],puVar3[2],lVar2,0);
              return;
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

