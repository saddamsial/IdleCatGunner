/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b656f0, Ghidra VA 02c656f0. */

void Bullet_ResetState(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625c24c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e639d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c24c = 1;
  }
  *(undefined1 *)(param_1 + 0x68) = 0;
  *(undefined1 *)(param_1 + 0xa4) = 0;
  *(undefined1 *)(param_1 + 0xcc) = 0;
  *(undefined1 *)(param_1 + 0xdc) = 0;
  *(undefined4 *)(param_1 + 0xd8) = 0;
  *(undefined4 *)(param_1 + 0x9c) = 0;
  if (*(long *)(param_1 + 0xd0) != 0) {
    func_0x04281f48(*(long *)(param_1 + 0xd0),*(undefined8 *)PTR_DAT_05e639d8);
    puVar1 = PTR_DAT_05e591c0;
    if (*(long *)(param_1 + 0x58) != 0) {
      Rigidbody_set_isKinematic_0x600009b(*(long *)(param_1 + 0x58),0,0);
      MonoBehaviour_CancelInvoke_0x6000d3c(param_1,0);
      uVar3 = *(undefined8 *)(param_1 + 0x80);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Implicit_0x6000da6(uVar3,0);
      if ((uVar2 & 1) == 0) {
        return;
      }
      if (*(long *)(param_1 + 0x80) != 0) {
        Collider_set_enabled_0x6000019(*(long *)(param_1 + 0x80),1,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

