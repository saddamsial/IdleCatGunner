/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4cad0, Ghidra VA 02c4cad0. */

void Monster_Die_Reload(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined4 *puVar3;
  
  if ((bRam000000000625c131 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd58);
    func_0x029f5a50(PTR_DAT_05e62148);
    bRam000000000625c131 = 1;
  }
  lVar2 = *(long *)(param_1 + 0x70);
  if (lVar2 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar2,0);
    *(undefined8 *)(param_1 + 0x70) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x70),0);
  }
  lVar2 = *(long *)(param_1 + 0x28);
  if (cRam000000000625b26f == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b26f = '\x01';
  }
  puVar1 = PTR_DAT_05e5dd58;
  if (lVar2 != 0) {
    puVar3 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
    Rigidbody_set_linearVelocity_0x6000096(*puVar3,puVar3[1],puVar3[2],lVar2,0);
    lVar2 = *(long *)puVar1;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 8);
    if (lVar2 != 0) {
      Monster_manager_Monster_Destroyed(lVar2,param_1);
      if (*(long *)(param_1 + 0x38) != 0) {
        lVar2 = *(long *)(*(long *)(*(long *)PTR_DAT_05e62148 + 0xb8) + 0x10);
        Transform_get_position_0x6000f4d(*(long *)(param_1 + 0x38),0);
        if (lVar2 != 0) {
          Particle_Polling_Spawn_0x60003fb(lVar2,5,0);
          lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
          if (lVar2 != 0) {
            GameObject_SetActive_0x6000cfe(lVar2,0,0);
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

