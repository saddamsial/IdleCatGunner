/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b65edc, Ghidra VA 02c65edc. */

void Bullet_Explode(undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4)

{
  long lVar1;
  char cVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined4 uVar7;
  long lVar8;
  long lVar9;
  ulong uVar10;
  undefined8 uVar11;
  undefined8 uVar12;
  ulong uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  float fVar16;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  
  if ((bRam000000000625c252 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e639e0);
    func_0x029f5a50(PTR_DAT_05e639e8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5b0a0);
    bRam000000000625c252 = 1;
  }
  fVar16 = *(float *)(param_4 + 0x9c);
  if (0.0 < fVar16) {
    uVar7 = LayerMask_op_Implicit_0x6000d2a(*(undefined4 *)(param_4 + 0xa0),0);
    if (*(int *)(*(long *)PTR_DAT_05e5b0a0 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e5b0a0);
    }
    lVar8 = Physics_OverlapSphere_0x600004d(param_1,param_2,param_3,fVar16,uVar7,0);
    puVar6 = PTR_DAT_05e639e8;
    puVar5 = PTR_DAT_05e639e0;
    puVar4 = PTR_DAT_05e5d338;
    puVar3 = PTR_DAT_05e591c0;
    if (lVar8 == 0) {
LAB_02c6617c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (0 < (int)*(ulong *)(lVar8 + 0x18)) {
      uVar13 = 0;
      uVar10 = *(ulong *)(lVar8 + 0x18) & 0xffffffff;
      lVar1 = lVar8 + 0x20;
      do {
        if (uVar10 <= uVar13) goto LAB_02c66178;
        uVar11 = *(undefined8 *)(lVar1 + uVar13 * 8);
        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar10 = Object_op_Equality_0x6000dec(uVar11,0,0);
        if ((uVar10 & 1) == 0) {
          if (*(uint *)(lVar8 + 0x18) <= uVar13) goto LAB_02c66178;
          lVar9 = *(long *)(lVar1 + uVar13 * 8);
          if ((lVar9 == 0) || (lVar9 = Component_get_gameObject_0x6000c83(lVar9,0), lVar9 == 0))
          goto LAB_02c6617c;
          uVar10 = GameObject_get_activeInHierarchy_0x6000d00(lVar9,0);
          if ((uVar10 & 1) != 0) {
            if (*(uint *)(lVar8 + 0x18) <= uVar13) goto LAB_02c66178;
            lVar9 = *(long *)(lVar1 + uVar13 * 8);
            if (lVar9 == 0) goto LAB_02c6617c;
            uVar7 = Object_GetInstanceID_0x6000da3(lVar9,0);
            if (*(long *)(param_4 + 0xd0) == 0) goto LAB_02c6617c;
            uVar10 = func_0x04281fa8(*(long *)(param_4 + 0xd0),uVar7,*(undefined8 *)puVar6);
            if ((uVar10 & 1) == 0) {
              if (*(long *)(param_4 + 0xd0) == 0) goto LAB_02c6617c;
              func_0x04282ae4(*(long *)(param_4 + 0xd0),uVar7,*(undefined8 *)puVar5);
              if (*(uint *)(lVar8 + 0x18) <= uVar13) {
LAB_02c66178:
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              lVar9 = *(long *)(lVar1 + uVar13 * 8);
              if (lVar9 == 0) goto LAB_02c6617c;
              uVar7 = param_3;
              uVar15 = param_2;
              uVar14 = Collider_ClosestPoint_0x600001a(param_1,param_2,param_3,lVar9,0);
              if (*(uint *)(lVar8 + 0x18) <= uVar13) goto LAB_02c66178;
              uStack_a8 = *(undefined8 *)(param_4 + 0x30);
              uStack_b0 = *(undefined8 *)(param_4 + 0x28);
              uVar12 = *(undefined8 *)(lVar1 + uVar13 * 8);
              uStack_98 = *(undefined8 *)(param_4 + 0x40);
              uStack_a0 = *(undefined8 *)(param_4 + 0x38);
              uVar11 = *(undefined8 *)(param_4 + 0x48);
              cVar2 = *(char *)(param_4 + 0x24);
              if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uStack_c8 = uStack_a8;
              uStack_d0 = uStack_b0;
              uStack_b8 = uStack_98;
              uStack_c0 = uStack_a0;
              Gamemanager_Damage_Collider_0x6000085
                        (uVar14,uVar15,uVar7,uVar12,&uStack_d0,uVar11,cVar2 != '\0',0);
            }
          }
        }
        uVar10 = (ulong)*(uint *)(lVar8 + 0x18);
        uVar13 = uVar13 + 1;
      } while ((long)uVar13 < (long)(int)*(uint *)(lVar8 + 0x18));
    }
  }
  return;
}

