/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b66330, Ghidra VA 02c66330. */

void Bullet_DieAndWait(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined4 *puVar3;
  long lVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c253 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63a18);
    bRam000000000625c253 = 1;
  }
  if (*(char *)(param_1 + 0x68) != '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0x68) = 1;
  if (*(long *)(param_1 + 0x58) != 0) {
    uVar2 = Rigidbody_get_isKinematic_0x600009a(*(long *)(param_1 + 0x58),0);
    if ((uVar2 & 1) == 0) {
      lVar4 = *(long *)(param_1 + 0x58);
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      if (lVar4 == 0) goto LAB_02c6649c;
      puVar3 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      Rigidbody_set_linearVelocity_0x6000096(*puVar3,puVar3[1],puVar3[2],lVar4,0);
    }
    if (*(long *)(param_1 + 0x58) != 0) {
      Rigidbody_set_isKinematic_0x600009b(*(long *)(param_1 + 0x58),1,0);
      puVar1 = PTR_DAT_05e591c0;
      uVar5 = *(undefined8 *)(param_1 + 0x80);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Implicit_0x6000da6(uVar5,0);
      if ((uVar2 & 1) != 0) {
        if (*(long *)(param_1 + 0x80) == 0) goto LAB_02c6649c;
        Collider_set_enabled_0x6000019(*(long *)(param_1 + 0x80),0,0);
      }
      uVar5 = *(undefined8 *)(param_1 + 0x90);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Inequality_0x6000ded(uVar5,0,0);
      if ((uVar2 & 1) != 0) {
        if (*(long *)(param_1 + 0x90) == 0) goto LAB_02c6649c;
        Bullet_Mesh_Stop_0x6000a39();
      }
      MonoBehaviour_CancelInvoke_0x6000d3c(param_1,0);
      MonoBehaviour_Invoke_0x6000d3d
                (*(undefined4 *)(param_1 + 0x88),param_1,*(undefined8 *)PTR_DAT_05e63a18,0);
      return;
    }
  }
LAB_02c6649c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

