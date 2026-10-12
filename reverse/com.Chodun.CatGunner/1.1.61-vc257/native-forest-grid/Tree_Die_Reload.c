/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2babeb4, Ghidra VA 02cabeb4. */

void Tree_Die_Reload(long param_1)

{
  undefined *puVar1;
  undefined4 uVar2;
  long lVar3;
  
  if ((bRam000000000625c513 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62148);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c513 = 1;
  }
  if (*(long *)(param_1 + 0x30) != 0) {
    lVar3 = **(long **)(*(long *)PTR_DAT_05e62148 + 0xb8);
    Transform_get_position_0x6000f4d(*(long *)(param_1 + 0x30),0);
    puVar1 = PTR_DAT_05e5dc20;
    if (lVar3 != 0) {
      uVar2 = 5;
      if (*(char *)(param_1 + 0x38) != '\0') {
        uVar2 = 0xf;
      }
      Particle_Polling_Spawn_0x60003fb(lVar3,uVar2,0);
      lVar3 = *(long *)puVar1;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar1;
      }
      if (*(long *)(*(long *)(lVar3 + 0xb8) + 0x10) != 0) {
        Tree_manager_Tree_Destroyed_0x6000f0c();
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

