/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baba50, Ghidra VA 02caba50. */

void Tree_SpeedRun_Die_Reload(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  if ((bRam000000000625c50d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62148);
    func_0x029f5a50(PTR_DAT_05e5dd68);
    bRam000000000625c50d = 1;
  }
  if (*(long *)(param_1 + 0x30) != 0) {
    lVar2 = **(long **)(*(long *)PTR_DAT_05e62148 + 0xb8);
    Transform_get_position_0x6000f4d(*(long *)(param_1 + 0x30),0);
    puVar1 = PTR_DAT_05e5dd68;
    if (lVar2 != 0) {
      Particle_Polling_Spawn(lVar2,5,0);
      lVar2 = *(long *)puVar1;
      if (*(int *)(lVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar2 = *(long *)puVar1;
      }
      lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 8);
      if (lVar2 != 0) {
        SpeedRun_manager_Tree_Destroyed_0x6000eba(lVar2,param_1);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

