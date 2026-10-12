/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5c164, Ghidra VA 02c5c164. */

undefined8 Gun_manager_Gun_Type_str_return_0x6000a7c(int param_1)

{
  undefined8 uVar1;
  
  if ((bRam000000000625c27b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c27b = 1;
  }
  if (param_1 < 3) {
    if (param_1 == 0) {
      uVar1 = Gun_get_SINGLE(0);
      return uVar1;
    }
    if (param_1 == 1) {
      uVar1 = Gun_get_LASER(0);
      return uVar1;
    }
    if (param_1 == 2) {
      uVar1 = Gun_get_PIERCE(0);
      return uVar1;
    }
  }
  else if (param_1 < 5) {
    if (param_1 == 3) {
      uVar1 = Gun_get_SHOTGUN(0);
      return uVar1;
    }
    if (param_1 == 4) {
      uVar1 = Gun_get_EXPLOSIVE(0);
      return uVar1;
    }
  }
  else {
    if (param_1 == 5) {
      uVar1 = Gun_get_MISSILE(0);
      return uVar1;
    }
    if (param_1 == 6) {
      uVar1 = Gun_get_BLAST_SNIPER(0);
      return uVar1;
    }
  }
  return *(undefined8 *)PTR_DAT_05e59050;
}

