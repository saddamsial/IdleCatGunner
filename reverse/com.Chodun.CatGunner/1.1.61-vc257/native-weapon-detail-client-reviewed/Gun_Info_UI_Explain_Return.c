/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6fc18, Ghidra VA 02c6fc18. */

undefined8 Gun_Info_UI_Explain_Return(undefined8 param_1,int param_2)

{
  undefined8 uVar1;
  
  if (param_2 < 3) {
    if (param_2 == 0) {
      uVar1 = Gun_get_SINGLE_ex(0);
      return uVar1;
    }
    if (param_2 == 1) {
      uVar1 = Gun_get_LASER_ex(0);
      return uVar1;
    }
    if (param_2 == 2) {
      uVar1 = Gun_get_PIERCE_ex(0);
      return uVar1;
    }
  }
  else if (param_2 < 5) {
    if (param_2 == 3) {
      uVar1 = Gun_get_SHOTGUN_ex(0);
      return uVar1;
    }
    if (param_2 == 4) {
      uVar1 = Gun_get_EXPLOSIVE_ex(0);
      return uVar1;
    }
  }
  else {
    if (param_2 == 5) {
      uVar1 = Gun_get_MISSILE_ex(0);
      return uVar1;
    }
    if (param_2 == 6) {
      uVar1 = Gun_get_BLAST_SNIPER_ex(0);
      return uVar1;
    }
  }
  return 0;
}

