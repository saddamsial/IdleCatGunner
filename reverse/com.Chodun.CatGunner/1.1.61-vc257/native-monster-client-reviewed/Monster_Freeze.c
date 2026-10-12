/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4cdb8, Ghidra VA 02c4cdb8. */

void Monster_Freeze(long param_1)

{
  long lVar1;
  undefined4 *puVar2;
  
  lVar1 = *(long *)(param_1 + 0x70);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0x70) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x70),0);
  }
  lVar1 = *(long *)(param_1 + 0x28);
  if (cRam000000000625b26f == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b26f = '\x01';
  }
  if (lVar1 != 0) {
    puVar2 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
    Rigidbody_set_linearVelocity_0x6000096(*puVar2,puVar2[1],puVar2[2],lVar1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

