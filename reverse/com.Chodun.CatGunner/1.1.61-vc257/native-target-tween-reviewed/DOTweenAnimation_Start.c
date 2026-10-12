/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a77154, Ghidra VA 02b77154. */

void DOTweenAnimation_Start(long param_1)

{
  if (*(char *)(param_1 + 0x130) != '\0') {
    return;
  }
  if ((*(char *)(param_1 + 0xad) != '\0') && (*(char *)(param_1 + 0xac) != '\0')) {
    DOTweenAnimation_CreateTween(param_1,0,*(undefined1 *)(param_1 + 0xc4));
    *(undefined1 *)(param_1 + 0x130) = 1;
  }
  return;
}

