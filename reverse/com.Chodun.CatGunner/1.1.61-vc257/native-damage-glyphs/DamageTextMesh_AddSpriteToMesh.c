/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a849a0, Ghidra VA 02b849a0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void DamageTextMesh_AddSpriteToMesh(long param_1,long param_2)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  uint uVar4;
  undefined8 uVar5;
  long lVar6;
  long lVar7;
  long lVar8;
  long lVar9;
  long lVar10;
  undefined8 *puVar11;
  int iVar12;
  long lVar13;
  ulong uVar14;
  long *plVar15;
  long *plVar16;
  long *plVar17;
  long *plVar18;
  long *plVar19;
  undefined4 uVar20;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  
  *(undefined4 *)(param_1 + 0x5c) = 0x1010101;
  if (*(int *)(param_1 + 0x60) <= *(int *)(param_1 + 100)) {
    DamageTextMesh_AllocateMore_0x60000f1(param_1);
  }
  uVar4 = DamageTextMesh_GetNextValidIndex_0x60000f0(param_1);
  *(uint *)(param_1 + 0x68) = uVar4;
  if (param_2 != 0) {
    lVar10 = *(long *)(param_2 + 0x18);
    *(uint *)(param_2 + 0x40) = uVar4;
    if (lVar10 != 0) {
      if (*(int *)(lVar10 + 0x18) != 0) {
        lVar13 = *(long *)(param_1 + 0x10);
        if (lVar13 == 0) goto LAB_02b84d18;
        if (uVar4 < *(uint *)(lVar13 + 0x18)) {
          uVar20 = *(undefined4 *)(lVar10 + 0x28);
          lVar13 = lVar13 + (long)(int)uVar4 * 0xc;
          *(undefined8 *)(lVar13 + 0x20) = *(undefined8 *)(lVar10 + 0x20);
          *(undefined4 *)(lVar13 + 0x28) = uVar20;
          lVar10 = *(long *)(param_2 + 0x18);
          if (lVar10 == 0) goto LAB_02b84d18;
          if ((*(uint *)(lVar10 + 0x18) & 0xfffffffe) != 0) {
            lVar13 = *(long *)(param_1 + 0x10);
            if (lVar13 == 0) goto LAB_02b84d18;
            if (uVar4 + 1 < *(uint *)(lVar13 + 0x18)) {
              uVar20 = *(undefined4 *)(lVar10 + 0x34);
              lVar13 = lVar13 + (long)(int)(uVar4 + 1) * 0xc;
              *(undefined8 *)(lVar13 + 0x20) = *(undefined8 *)(lVar10 + 0x2c);
              *(undefined4 *)(lVar13 + 0x28) = uVar20;
              lVar10 = *(long *)(param_2 + 0x18);
              if (lVar10 == 0) goto LAB_02b84d18;
              if (2 < *(uint *)(lVar10 + 0x18)) {
                lVar13 = *(long *)(param_1 + 0x10);
                if (lVar13 == 0) goto LAB_02b84d18;
                if (uVar4 + 2 < *(uint *)(lVar13 + 0x18)) {
                  uVar20 = *(undefined4 *)(lVar10 + 0x40);
                  lVar13 = lVar13 + (long)(int)(uVar4 + 2) * 0xc;
                  *(undefined8 *)(lVar13 + 0x20) = *(undefined8 *)(lVar10 + 0x38);
                  *(undefined4 *)(lVar13 + 0x28) = uVar20;
                  lVar10 = *(long *)(param_2 + 0x18);
                  if (lVar10 == 0) goto LAB_02b84d18;
                  if ((*(uint *)(lVar10 + 0x18) & 0xfffffffc) != 0) {
                    lVar13 = *(long *)(param_1 + 0x10);
                    if (lVar13 == 0) goto LAB_02b84d18;
                    if (uVar4 + 3 < *(uint *)(lVar13 + 0x18)) {
                      uVar20 = *(undefined4 *)(lVar10 + 0x4c);
                      lVar13 = lVar13 + (long)(int)(uVar4 + 3) * 0xc;
                      *(undefined8 *)(lVar13 + 0x20) = *(undefined8 *)(lVar10 + 0x44);
                      *(undefined4 *)(lVar13 + 0x28) = uVar20;
                      lVar10 = *(long *)(param_2 + 0x20);
                      if (lVar10 == 0) goto LAB_02b84d18;
                      if (*(int *)(lVar10 + 0x18) != 0) {
                        lVar13 = *(long *)(param_1 + 0x18);
                        if (lVar13 == 0) goto LAB_02b84d18;
                        uVar4 = *(uint *)(param_1 + 0x68);
                        if (uVar4 < *(uint *)(lVar13 + 0x18)) {
                          *(undefined8 *)(lVar13 + (long)(int)uVar4 * 8 + 0x20) =
                               *(undefined8 *)(lVar10 + 0x20);
                          lVar10 = *(long *)(param_2 + 0x20);
                          if (lVar10 == 0) goto LAB_02b84d18;
                          if ((*(uint *)(lVar10 + 0x18) & 0xfffffffe) != 0) {
                            lVar13 = *(long *)(param_1 + 0x18);
                            if (lVar13 == 0) goto LAB_02b84d18;
                            if (uVar4 + 1 < *(uint *)(lVar13 + 0x18)) {
                              *(undefined8 *)(lVar13 + (long)(int)(uVar4 + 1) * 8 + 0x20) =
                                   *(undefined8 *)(lVar10 + 0x28);
                              lVar10 = *(long *)(param_2 + 0x20);
                              if (lVar10 == 0) goto LAB_02b84d18;
                              if (2 < *(uint *)(lVar10 + 0x18)) {
                                lVar13 = *(long *)(param_1 + 0x18);
                                if (lVar13 == 0) goto LAB_02b84d18;
                                if (uVar4 + 2 < *(uint *)(lVar13 + 0x18)) {
                                  *(undefined8 *)(lVar13 + (long)(int)(uVar4 + 2) * 8 + 0x20) =
                                       *(undefined8 *)(lVar10 + 0x30);
                                  lVar10 = *(long *)(param_2 + 0x20);
                                  if (lVar10 == 0) goto LAB_02b84d18;
                                  if ((*(uint *)(lVar10 + 0x18) & 0xfffffffc) != 0) {
                                    lVar13 = *(long *)(param_1 + 0x18);
                                    if (lVar13 == 0) goto LAB_02b84d18;
                                    if (uVar4 + 3 < *(uint *)(lVar13 + 0x18)) {
                                      *(undefined8 *)(lVar13 + (long)(int)(uVar4 + 3) * 8 + 0x20) =
                                           *(undefined8 *)(lVar10 + 0x38);
                                      lVar10 = *(long *)(param_2 + 0x28);
                                      if (lVar10 == 0) goto LAB_02b84d18;
                                      if (*(int *)(lVar10 + 0x18) != 0) {
                                        lVar13 = *(long *)(param_1 + 0x20);
                                        if (lVar13 == 0) goto LAB_02b84d18;
                                        uVar4 = *(uint *)(param_1 + 0x68);
                                        if (uVar4 < *(uint *)(lVar13 + 0x18)) {
                                          *(undefined4 *)(lVar13 + (long)(int)uVar4 * 4 + 0x20) =
                                               *(undefined4 *)(lVar10 + 0x20);
                                          lVar10 = *(long *)(param_2 + 0x28);
                                          if (lVar10 == 0) goto LAB_02b84d18;
                                          if ((*(uint *)(lVar10 + 0x18) & 0xfffffffe) != 0) {
                                            lVar13 = *(long *)(param_1 + 0x20);
                                            if (lVar13 == 0) goto LAB_02b84d18;
                                            if (uVar4 + 1 < *(uint *)(lVar13 + 0x18)) {
                                              *(undefined4 *)
                                               (lVar13 + (long)(int)(uVar4 + 1) * 4 + 0x20) =
                                                   *(undefined4 *)(lVar10 + 0x24);
                                              lVar10 = *(long *)(param_2 + 0x28);
                                              if (lVar10 == 0) goto LAB_02b84d18;
                                              if (2 < *(uint *)(lVar10 + 0x18)) {
                                                lVar13 = *(long *)(param_1 + 0x20);
                                                if (lVar13 == 0) goto LAB_02b84d18;
                                                if (uVar4 + 2 < *(uint *)(lVar13 + 0x18)) {
                                                  *(undefined4 *)
                                                   (lVar13 + (long)(int)(uVar4 + 2) * 4 + 0x20) =
                                                       *(undefined4 *)(lVar10 + 0x28);
                                                  lVar10 = *(long *)(param_2 + 0x28);
                                                  if (lVar10 == 0) goto LAB_02b84d18;
                                                  if ((*(uint *)(lVar10 + 0x18) & 0xfffffffc) != 0)
                                                  {
                                                    lVar13 = *(long *)(param_1 + 0x20);
                                                    if (lVar13 == 0) goto LAB_02b84d18;
                                                    if (uVar4 + 3 < *(uint *)(lVar13 + 0x18)) {
                                                      *(undefined4 *)
                                                       (lVar13 + (long)(int)(uVar4 + 3) * 4 + 0x20)
                                                           = *(undefined4 *)(lVar10 + 0x2c);
                                                      plVar15 = *(long **)(param_1 + 0x30);
                                                      if (plVar15 == (long *)0x0) goto LAB_02b84d18;
                                                      iVar12 = *(int *)(param_1 + 0x68);
                                                      lVar10 = func_0x029f5bd4(param_2,*(undefined8
                                                                                         *)(*plVar15
                                                                                           + 0x40));
                                                      if (lVar10 == 0) {
                                                        uVar5 = func_0x029f5d20();
                                                        lVar10 = func_0x029f5bc0(uVar5,0);
                                                        if ((bRam000000000625b8eb & 1) == 0) {
                                                          func_0x029f5a50(PTR_DAT_05e5d780);
                                                          func_0x029f5a50(PTR_DAT_05e5d748);
                                                          func_0x029f5a50(PTR_DAT_05e5d788);
                                                          func_0x029f5a50(PTR_DAT_05e5d790);
                                                          func_0x029f5a50(PTR_DAT_05e591c0);
                                                          func_0x029f5a50(PTR_DAT_05e5d798);
                                                          func_0x029f5a50(PTR_DAT_05e5c9e8);
                                                          bRam000000000625b8eb = 1;
                                                        }
                                                        plVar15 = (long *)(lVar10 + 0x10);
                                                        if (*plVar15 != 0) {
                                                          lVar13 = func_0x029f5b40(*(undefined8 *)
                                                                                    PTR_DAT_05e5c9e8
                                                                                   ,*(int *)(*
                                                  plVar15 + 0x18) << 1);
                                                  if (*plVar15 != 0) {
                                                    Array_CopyTo_0x6000cca(*plVar15,lVar13,0,0);
                                                    plVar16 = (long *)(lVar10 + 0x18);
                                                    if (*plVar16 != 0) {
                                                      lVar6 = func_0x029f5b40(*(undefined8 *)
                                                                               PTR_DAT_05e5d798,
                                                                              *(int *)(*plVar16 +
                                                                                      0x18) << 1);
                                                      if (*plVar16 != 0) {
                                                        Array_CopyTo_0x6000cca(*plVar16,lVar6,0,0);
                                                        plVar17 = (long *)(lVar10 + 0x20);
                                                        if (*plVar17 != 0) {
                                                          lVar7 = func_0x029f5b40(*(undefined8 *)
                                                                                   PTR_DAT_05e5d780,
                                                                                  *(int *)(*plVar17 
                                                  + 0x18) << 1);
                                                  if ((*plVar17 != 0) &&
                                                     (Array_CopyTo_0x6000cca(*plVar17,lVar7,0,0),
                                                     lVar13 != 0)) {
                                                    lVar8 = func_0x029f5b40(*(undefined8 *)
                                                                             PTR_DAT_05e5d790,
                                                                            (*(int *)(lVar13 + 0x18)
                                                                            >> 2) * 6);
                                                    plVar18 = (long *)(lVar10 + 0x28);
                                                    if (*plVar18 != 0) {
                                                      Array_CopyTo_0x6000cca(*plVar18,lVar8,0,0);
                                                      if (*plVar15 != 0) {
                                                        iVar12 = *(int *)(*plVar15 + 0x18);
                                                        iVar1 = *(int *)(lVar13 + 0x18);
                                                        if (iVar12 < iVar1) {
                                                          if (lVar8 == 0) goto code_r0x02b85104;
                                                          uVar4 = *(uint *)(lVar8 + 0x18);
                                                          do {
                                                            uVar2 = (iVar12 >> 2) * 6;
                                                            if (uVar4 <= uVar2) {
code_r0x02b85100:
                    /* WARNING: Subroutine does not return */
                                                              Throw_Index_Wrapper();
                                                            }
                                                            uVar14 = (long)(int)uVar2 | 1;
                                                            *(int *)(lVar8 + (long)(int)uVar2 * 4 +
                                                                    0x20) = iVar12;
                                                            if (uVar4 <= (uint)uVar14)
                                                            goto code_r0x02b85100;
                                                            *(int *)(lVar8 + uVar14 * 4 + 0x20) =
                                                                 iVar12 + 1;
                                                            if (uVar4 <= uVar2 + 2)
                                                            goto code_r0x02b85100;
                                                            *(int *)(lVar8 + (long)(int)(uVar2 + 2)
                                                                             * 4 + 0x20) =
                                                                 iVar12 + 2;
                                                            if (uVar4 <= uVar2 + 3)
                                                            goto code_r0x02b85100;
                                                            *(int *)(lVar8 + (long)(int)(uVar2 + 3)
                                                                             * 4 + 0x20) =
                                                                 iVar12 + 2;
                                                            if (uVar4 <= uVar2 + 4)
                                                            goto code_r0x02b85100;
                                                            *(int *)(lVar8 + (long)(int)(uVar2 + 4)
                                                                             * 4 + 0x20) =
                                                                 iVar12 + 3;
                                                            if (uVar4 <= uVar2 + 5)
                                                            goto code_r0x02b85100;
                                                            *(int *)(lVar8 + (long)(int)(uVar2 + 5)
                                                                             * 4 + 0x20) = iVar12;
                                                            iVar12 = iVar12 + 4;
                                                          } while (iVar12 < iVar1);
                                                        }
                                                        lVar9 = func_0x029f5b40(*(undefined8 *)
                                                                                 PTR_DAT_05e5d788,
                                                                                iVar1 >> 2);
                                                        plVar19 = (long *)(lVar10 + 0x30);
                                                        if (*plVar19 != 0) {
                                                          Array_CopyTo_0x6000cca(*plVar19,lVar9,0,0)
                                                          ;
                                                          *plVar15 = lVar13;
                                                          Managed_WriteBarrier(plVar15,lVar13);
                                                          *plVar16 = lVar6;
                                                          Managed_WriteBarrier(plVar16,lVar6);
                                                          *plVar17 = lVar7;
                                                          Managed_WriteBarrier(plVar17,lVar7);
                                                          *plVar18 = lVar8;
                                                          Managed_WriteBarrier(plVar18,lVar8);
                                                          *plVar19 = lVar9;
                                                          Managed_WriteBarrier(plVar19,lVar9);
                                                          if (*plVar15 != 0) {
                                                            uVar5 = *(undefined8 *)(lVar10 + 0x48);
                                                            iVar12 = *(int *)(*(long *)
                                                  PTR_DAT_05e591c0 + 0xe4);
                                                  *(int *)(lVar10 + 0x60) =
                                                       *(int *)(*plVar15 + 0x18) >> 2;
                                                  if (iVar12 == 0) {
                                                    func_0x029f5bd0();
                                                  }
                                                  uVar14 = Object_op_Inequality_0x6000ded(uVar5,0,0)
                                                  ;
                                                  if ((uVar14 & 1) == 0) {
                                                    return;
                                                  }
                                                  if (*(long *)(lVar10 + 0x48) != 0) {
                                                    Mesh_Clear_0x6000748(*(long *)(lVar10 + 0x48),0)
                                                    ;
                                                    if (*(long *)(lVar10 + 0x48) != 0) {
                                                      Mesh_set_vertices_0x60006f4
                                                                (*(long *)(lVar10 + 0x48),
                                                                 *(undefined8 *)(lVar10 + 0x10),0);
                                                      if (*(long *)(lVar10 + 0x48) != 0) {
                                                        Mesh_set_triangles_0x600072e
                                                                  (*(long *)(lVar10 + 0x48),
                                                                   *(undefined8 *)(lVar10 + 0x28),0)
                                                        ;
                                                        puVar3 = PTR_DAT_05e5d748;
                                                        lVar6 = *(long *)(lVar10 + 0x48);
                                                        lVar13 = *(long *)PTR_DAT_05e5d748;
                                                        if (*(int *)(lVar13 + 0xe4) == 0) {
                                                          func_0x029f5bd0();
                                                          lVar13 = *(long *)puVar3;
                                                        }
                                                        if (lVar6 != 0) {
                                                          puVar11 = *(undefined8 **)(lVar13 + 0xb8);
                                                          uStack_a8 = puVar11[1];
                                                          uStack_b0 = *puVar11;
                                                          uStack_a0 = puVar11[2];
                                                          Mesh_set_bounds_0x60006e1
                                                                    (lVar6,&uStack_b0,0);
                                                          *(undefined2 *)(lVar10 + 0x5e) = 0x101;
                                                          return;
                                                        }
                                                      }
                                                    }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
code_r0x02b85104:
                    /* WARNING: Subroutine does not return */
                                                  Throw_NullReference_Wrapper();
                                                  }
                                                  uVar4 = iVar12 >> 2;
                                                  if (uVar4 < *(uint *)(plVar15 + 3)) {
                                                    plVar15[(long)(int)uVar4 + 4] = param_2;
                                                    Managed_WriteBarrier
                                                              (plVar15 + (long)(int)uVar4 + 4,
                                                               param_2);
                                                    *(ulong *)(param_1 + 100) =
                                                         CONCAT44((int)((ulong)*(undefined8 *)
                                                                                (param_1 + 100) >>
                                                                       0x20) +
                                                                  (int)((ulong)_UNK_0116fc00 >> 0x20
                                                                       ),(int)*(undefined8 *)
                                                                               (param_1 + 100) +
                                                                         (int)_UNK_0116fc00);
                                                    return;
                                                  }
                                                  }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
  }
LAB_02b84d18:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

