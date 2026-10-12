/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a75c08, Ghidra VA 02b75c08. */

void DOTweenAnimation_Awake(long param_1)

{
  if (((*(char *)(param_1 + 0xad) != '\0') && (*(char *)(param_1 + 0xac) != '\0')) &&
     ((*(int *)(param_1 + 0xb8) != 1 || (*(char *)(param_1 + 0xc5) == '\0')))) {
    DOTweenAnimation_CreateTween(param_1,0,*(undefined1 *)(param_1 + 0xc4));
    *(undefined1 *)(param_1 + 0x130) = 1;
  }
  return;
}

