/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a84194, Ghidra VA 02b84194. */

void DamageTextManager_HideAllDamageText(long param_1,byte param_2)

{
  *(byte *)(param_1 + 0x38) = param_2;
  if ((param_2 & 1) != 0) {
    DamageTextManager_ReleaseAllDamageTextObject_0x60000db();
    return;
  }
  return;
}

