/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a8274c, Ghidra VA 02b8274c. */

void SpriteFill_Value_Reload(undefined4 param_1,long param_2)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  long *plVar4;
  long lVar5;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625b8dc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5b2a8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625b8dc = 1;
  }
  plVar4 = (long *)(param_2 + 0x20);
  lVar5 = *plVar4;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(lVar5,0,0);
  if ((uVar2 & 1) != 0) {
    uVar3 = func_0x02fe5f2c(param_2,*(undefined8 *)PTR_DAT_05e5b2a8);
    *(undefined8 *)(param_2 + 0x20) = uVar3;
    func_0x029f59f4(plVar4,uVar3);
  }
  if (*plVar4 != 0) {
    SpriteRenderer_set_color_0x6000199(param_1,0x3f800000,0x3f800000,0x3f800000,*plVar4,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

