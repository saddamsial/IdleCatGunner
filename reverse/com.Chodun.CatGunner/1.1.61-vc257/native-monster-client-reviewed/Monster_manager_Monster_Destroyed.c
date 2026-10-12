/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4cc0c, Ghidra VA 02c4cc0c. */

void Monster_manager_Monster_Destroyed(long param_1,undefined8 param_2)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  undefined8 *puVar7;
  long lVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  puVar3 = PTR_DAT_05e591c0;
  if ((bRam000000000625c14e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63498);
    func_0x029f5a50(PTR_DAT_05e634a0);
    func_0x029f5a50(PTR_DAT_05e5dd58);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c14e = 1;
  }
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Equality_0x6000dec(param_2,0,0);
  if ((uVar4 & 1) != 0) {
    return;
  }
  if (*(long *)(param_1 + 0x178) != 0) {
    func_0x0452e0a8(*(long *)(param_1 + 0x178),param_2,*(undefined8 *)PTR_DAT_05e634a0);
    lVar5 = *(long *)(param_1 + 0x170);
    if (lVar5 != 0) {
      lVar6 = *(long *)(lVar5 + 0x10);
      lVar8 = *(long *)PTR_DAT_05e63498;
      *(int *)(lVar5 + 0x1c) = *(int *)(lVar5 + 0x1c) + 1;
      if (lVar6 != 0) {
        uVar2 = *(uint *)(lVar5 + 0x18);
        if (uVar2 < *(uint *)(lVar6 + 0x18)) {
          *(uint *)(lVar5 + 0x18) = uVar2 + 1;
          puVar7 = (undefined8 *)(lVar6 + (long)(int)uVar2 * 8 + 0x20);
          *puVar7 = param_2;
          Managed_WriteBarrier(puVar7,param_2);
        }
        else {
          func_0x0452cba8(lVar5,param_2,
                          *(undefined8 *)(*(long *)(*(long *)(lVar8 + 0x20) + 0xc0) + 0x70));
        }
        puVar3 = PTR_DAT_05e5dd58;
        lVar5 = *(long *)PTR_DAT_05e5dd58;
        iVar1 = *(int *)(param_1 + 0xd0) + 1;
        *(int *)(param_1 + 0xd0) = iVar1;
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar3;
        }
        lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x10);
        if (lVar5 != 0) {
          if (*(uint *)(lVar5 + 0x18) <= *(uint *)(param_1 + 0x24)) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          if (*(long *)(param_1 + 0xb0) != 0) {
            fVar9 = (float)iVar1 /
                    (float)*(int *)(lVar5 + (long)(int)*(uint *)(param_1 + 0x24) * 4 + 0x20);
            fVar11 = 1.0;
            if (fVar9 <= 1.0) {
              fVar11 = fVar9;
            }
            fVar10 = 0.0;
            if (0.0 <= fVar9) {
              fVar10 = fVar11;
            }
            Monster_Game_Slider_Value_Reload(fVar10);
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

