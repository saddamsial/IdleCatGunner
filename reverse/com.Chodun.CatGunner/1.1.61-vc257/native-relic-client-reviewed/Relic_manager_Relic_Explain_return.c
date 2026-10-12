/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b31464, Ghidra VA 02c31464. */

undefined8 Relic_manager_Relic_Explain_return(long param_1)

{
  uint uVar1;
  undefined8 uVar2;
  
  if ((bRam000000000625c046 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c046 = 1;
  }
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = *(uint *)(param_1 + 0x10);
  if ((int)uVar1 < 6) {
    if (uVar1 < 3) {
      uVar2 = Relic_get_RelicExplain_Dmg(0);
      return uVar2;
    }
    if (uVar1 - 3 < 3) {
      uVar2 = Relic_get_RelicExplain_Money(0);
      return uVar2;
    }
  }
  else {
    if ((int)uVar1 < 9) {
      uVar2 = Relic_get_RelicExplain_CriDmg(0);
      return uVar2;
    }
    if ((int)uVar1 < 0xb) {
      if (uVar1 == 9) {
        uVar2 = Relic_get_RelicExplain_MoveSpeed(0);
        return uVar2;
      }
      if (uVar1 == 10) {
        uVar2 = Relic_get_RelicExplain_Offline(0);
        return uVar2;
      }
    }
    else {
      if (uVar1 == 0xb) {
        uVar2 = Relic_get_RelicExplain_Rebirth(0);
        return uVar2;
      }
      if (uVar1 == 0xc) {
        uVar2 = Relic_get_RelicExplain_Skip(0);
        return uVar2;
      }
    }
  }
  return *(undefined8 *)PTR_DAT_05e59050;
}

