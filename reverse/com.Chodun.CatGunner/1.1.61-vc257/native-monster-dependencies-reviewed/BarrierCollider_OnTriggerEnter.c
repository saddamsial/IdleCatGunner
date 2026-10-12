/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4c350, Ghidra VA 02c4c350. */

void BarrierCollider_OnTriggerEnter(undefined8 param_1,long param_2)

{
  long lVar1;
  
  if ((bRam000000000625c12c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d560);
    func_0x029f5a50(PTR_DAT_05e63480);
    bRam000000000625c12c = 1;
  }
  if ((((param_2 != 0) &&
       (lVar1 = func_0x02fe5f2c(param_2,*(undefined8 *)PTR_DAT_05e5d560), lVar1 != 0)) &&
      (*(long *)(lVar1 + 0x20) != 0)) &&
     (lVar1 = func_0x02fe5f2c(*(long *)(lVar1 + 0x20),*(undefined8 *)PTR_DAT_05e63480), lVar1 != 0))
  {
    Monster_Barrier_Touched_0x6000834();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

