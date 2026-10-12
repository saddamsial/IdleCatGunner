/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2badc38, Ghidra VA 02cadc38. */

void Tree_manager_Next_Map(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  undefined8 *puVar6;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c524 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c524 = 1;
  }
  lVar3 = *(long *)puVar2;
  iVar1 = *(int *)(lVar3 + 0xe4);
  *(int *)(param_1 + 0x28) = *(int *)(param_1 + 0x28) + 1;
  *(undefined4 *)(param_1 + 0x2c) = 2;
  if (iVar1 == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar4 = *(long *)(param_1 + 0x58);
  **(undefined1 **)(lVar3 + 0xb8) = 0;
  if (lVar4 != 0) {
    GameObject_SetActive_0x6000cfe(lVar4,1,0);
    uVar5 = Tree_manager_Loading_Then_Start(param_1);
    puVar6 = (undefined8 *)(param_1 + 200);
    *puVar6 = uVar5;
    Managed_WriteBarrier(puVar6,uVar5);
    MonoBehaviour_StartCoroutine_0x6000d43(param_1,*puVar6,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

