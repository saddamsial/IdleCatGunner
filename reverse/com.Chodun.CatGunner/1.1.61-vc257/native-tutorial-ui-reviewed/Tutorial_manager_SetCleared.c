/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf638, Ghidra VA 02caf638. */

void Tutorial_manager_SetCleared(long param_1)

{
  *(undefined1 *)(param_1 + 0x70) = 1;
  MonoBehaviour_StopAllCoroutines_0x6000d48(param_1,0);
  Tutorial_manager_CompleteTutorial(param_1);
  return;
}

