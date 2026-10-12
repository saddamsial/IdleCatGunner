/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bae70c, Ghidra VA 02cae70c. */

void TutorialArrow_UI_SetTargets(long param_1,undefined8 param_2,undefined8 param_3)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  long *plVar4;
  undefined8 *puVar5;
  undefined8 *puVar6;
  undefined8 uVar7;
  
  if ((bRam000000000625c52e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c52e = 1;
  }
  puVar6 = (undefined8 *)(param_1 + 0x20);
  *puVar6 = param_2;
  Managed_WriteBarrier(puVar6,param_2);
  puVar5 = (undefined8 *)(param_1 + 0x28);
  *puVar5 = param_3;
  Managed_WriteBarrier(puVar5,param_3);
  plVar4 = (long *)(param_1 + 0x50);
  if (*plVar4 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,*plVar4,0);
    *(undefined8 *)(param_1 + 0x50) = 0;
    Managed_WriteBarrier(plVar4,0);
  }
  lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar2 != 0) {
    uVar3 = GameObject_get_activeInHierarchy_0x6000d00(lVar2,0);
    puVar1 = PTR_DAT_05e591c0;
    if ((uVar3 & 1) != 0) {
      uVar7 = *puVar6;
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Inequality_0x6000ded(uVar7,0,0);
      if ((uVar3 & 1) != 0) {
        uVar7 = *puVar5;
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar3 = Object_op_Inequality_0x6000ded(uVar7,0,0);
        if ((uVar3 & 1) != 0) {
          uVar7 = TutorialArrow_UI_MoveLoop(param_1);
          uVar7 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar7,0);
          *(undefined8 *)(param_1 + 0x50) = uVar7;
          Managed_WriteBarrier(plVar4);
          return;
        }
      }
    }
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

