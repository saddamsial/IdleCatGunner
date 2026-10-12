/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4c840, Ghidra VA 02c4c840. */

void Monster_Apply_Knockback(float param_1,long param_2)

{
  undefined8 uVar1;
  long lVar2;
  float fVar3;
  float fVar4;
  
  lVar2 = *(long *)(param_2 + 0x70);
  if (lVar2 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_2,lVar2,0);
  }
  fVar3 = 1.0;
  if (param_1 <= 1.0) {
    fVar3 = param_1;
  }
  fVar4 = 0.0;
  if (0.0 <= param_1) {
    fVar4 = fVar3;
  }
  uVar1 = Monster_Knockback_Coroutine(fVar4,param_2);
  uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_2,uVar1,0);
  *(undefined8 *)(param_2 + 0x70) = uVar1;
  Managed_WriteBarrier((long *)(param_2 + 0x70));
  return;
}

