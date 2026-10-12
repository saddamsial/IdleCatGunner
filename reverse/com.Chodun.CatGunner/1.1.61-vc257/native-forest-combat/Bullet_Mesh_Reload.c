/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b653ac, Ghidra VA 02c653ac. */

void Bullet_Mesh_Reload(long param_1,uint param_2)

{
  undefined *puVar1;
  ulong uVar2;
  long *plVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c249 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e639c8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c249 = 1;
  }
  plVar3 = (long *)(param_1 + 0x90);
  lVar4 = *plVar3;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(lVar4,0,0);
  if ((uVar2 & 1) != 0) {
    if (*plVar3 == 0) goto LAB_02c654bc;
    Bullet_Mesh_Stop_0x6000a39();
  }
  lVar4 = *(long *)(param_1 + 0x78);
  if (lVar4 != 0) {
    if (*(uint *)(lVar4 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar4 = *(long *)(lVar4 + (long)(int)param_2 * 8 + 0x20);
    if (lVar4 != 0) {
      lVar4 = func_0x02fe5f2c(lVar4,*(undefined8 *)PTR_DAT_05e639c8);
      *plVar3 = lVar4;
      func_0x029f59f4(plVar3,lVar4);
      lVar4 = *plVar3;
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Inequality_0x6000ded(lVar4,0,0);
      if ((uVar2 & 1) == 0) {
        return;
      }
      if (*plVar3 != 0) {
        Bullet_Mesh_Active_0x6000a38();
        return;
      }
    }
  }
LAB_02c654bc:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

