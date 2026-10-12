/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a841cc, Ghidra VA 02b841cc. */

void DamageTextMesh_Init(long param_1,undefined4 param_2,long param_3,undefined8 param_4,
                        undefined4 param_5)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  bool bVar6;
  undefined4 uVar7;
  long lVar8;
  undefined8 uVar9;
  undefined8 uVar10;
  ulong uVar11;
  ulong uVar12;
  int iVar13;
  ulong uVar14;
  int *piVar15;
  long *plVar16;
  long lVar17;
  long *plVar18;
  undefined8 *puVar19;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined4 uStack_64;
  
  puVar1 = PTR_DAT_05e5d740;
  uStack_64 = param_2;
  if ((bRam000000000625b8e8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d748);
    func_0x029f5a50(PTR_DAT_05e5d750);
    func_0x029f5a50(PTR_DAT_05e5d758);
    func_0x029f5a50(PTR_DAT_05e598a8);
    func_0x029f5a50(PTR_DAT_05e5af60);
    func_0x029f5a50(PTR_DAT_05e5d740);
    func_0x029f5a50(PTR_DAT_05e5d760);
    func_0x029f5a50(PTR_DAT_05e5d768);
    func_0x029f5a50(PTR_DAT_05e5d770);
    func_0x029f5a50(PTR_DAT_05e5d778);
    bRam000000000625b8e8 = 1;
  }
  lVar8 = func_0x029f5cec(*(undefined8 *)puVar1);
  Mesh__ctor_0x60006c3(lVar8,0);
  plVar16 = (long *)(param_1 + 0x48);
  *plVar16 = lVar8;
  Managed_WriteBarrier(plVar16,lVar8);
  if (*plVar16 != 0) {
    Object_set_hideFlags_0x6000dd4(*plVar16,0x34,0);
    if (*plVar16 != 0) {
      Object_set_name_0x6000dab(*plVar16,*(undefined8 *)PTR_DAT_05e5d768,0);
      puVar2 = PTR_DAT_05e5d760;
      puVar1 = PTR_DAT_05e5af60;
      if (*plVar16 != 0) {
        Mesh_MarkDynamic_0x600074d(*plVar16,0);
        uVar9 = Shader_Find_0x6000589(*(undefined8 *)puVar2,0);
        uVar10 = func_0x029f5cec(*(undefined8 *)puVar1);
        Material__ctor_0x60005ae(uVar10,uVar9,0);
        puVar19 = (undefined8 *)(param_1 + 0x50);
        *puVar19 = uVar10;
        Managed_WriteBarrier(puVar19,uVar10);
        puVar5 = PTR_DAT_05e5d778;
        puVar4 = PTR_DAT_05e5d770;
        puVar3 = PTR_DAT_05e5d758;
        puVar2 = PTR_DAT_05e5d750;
        puVar1 = PTR_DAT_05e598a8;
        lVar8 = *(long *)(param_1 + 0x28);
        if (lVar8 != 0) {
          uVar12 = (ulong)*(uint *)(lVar8 + 0x18);
          uVar11 = 0;
          uVar14 = 0;
          piVar15 = (int *)(lVar8 + 0x34);
          do {
            if (uVar12 <= uVar11) {
LAB_02b84604:
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            iVar13 = (int)uVar14;
            piVar15[-5] = iVar13;
            if ((uVar12 <= uVar11 + 1) || (piVar15[-4] = iVar13 + 1, uVar12 <= uVar11 + 2))
            goto LAB_02b84604;
            piVar15[-3] = iVar13 + 2;
            if ((uVar12 <= uVar11 + 3) ||
               ((piVar15[-2] = iVar13 + 2, uVar12 <= uVar11 + 4 ||
                (piVar15[-1] = iVar13 + 3, uVar12 <= uVar11 + 5)))) goto LAB_02b84604;
            *piVar15 = iVar13;
            bVar6 = uVar14 < 0xffc;
            uVar14 = uVar14 + 4;
            uVar11 = uVar11 + 6;
            piVar15 = piVar15 + 6;
          } while (bVar6);
          if (*plVar16 != 0) {
            Mesh_set_vertices_0x60006f4(*plVar16,*(undefined8 *)(param_1 + 0x10),0);
            if (*(long *)(param_1 + 0x48) != 0) {
              Mesh_set_triangles_0x600072e
                        (*(long *)(param_1 + 0x48),*(undefined8 *)(param_1 + 0x28),0);
              *(undefined4 *)(param_1 + 0x58) = param_2;
              if (param_3 != 0) {
                lVar17 = *(long *)(param_1 + 0x50);
                lVar8 = Font_get_material_0x6000044(param_3,0);
                if ((lVar8 != 0) &&
                   (uVar9 = Material_get_mainTexture_0x60005b5(lVar8,0), lVar17 != 0)) {
                  Material_set_mainTexture_0x60005b6(lVar17,uVar9,0);
                  uVar9 = Int32_ToString_0x600080e(&uStack_64,0);
                  uVar9 = String_Concat_0x6000298(*(undefined8 *)puVar4,uVar9,0);
                  lVar8 = func_0x029f5cec(*(undefined8 *)puVar1);
                  GameObject__ctor_0x6000d08(lVar8,uVar9,0);
                  uVar7 = LayerMask_NameToLayer_0x6000d2e(*(undefined8 *)puVar5,0);
                  if (lVar8 != 0) {
                    GameObject_set_layer_0x6000cfd(lVar8,uVar7,0);
                    lVar17 = func_0x030a0224(lVar8,*(undefined8 *)puVar2);
                    plVar18 = (long *)(param_1 + 0x38);
                    *plVar18 = lVar17;
                    Managed_WriteBarrier(plVar18,lVar17);
                    if (*plVar18 != 0) {
                      MeshFilter_set_sharedMesh_0x600069f
                                (*plVar18,*(undefined8 *)(param_1 + 0x48),0);
                      lVar8 = func_0x030a0224(lVar8,*(undefined8 *)puVar3);
                      plVar18 = (long *)(param_1 + 0x40);
                      *plVar18 = lVar8;
                      Managed_WriteBarrier(plVar18,lVar8);
                      if (*plVar18 != 0) {
                        Renderer_set_sharedMaterial_0x600054f(*plVar18,*puVar19,0);
                        if (*plVar18 != 0) {
                          Renderer_set_sortingOrder_0x6000545(*plVar18,param_5,0);
                          if (*plVar18 != 0) {
                            Renderer_set_lightProbeUsage_0x600053e(*plVar18,0,0);
                            puVar1 = PTR_DAT_05e5d748;
                            if (*plVar18 != 0) {
                              Renderer_set_reflectionProbeUsage_0x6000540(*plVar18,0,0);
                              if (*plVar18 != 0) {
                                Renderer_set_shadowCastingMode_0x6000536(*plVar18,0,0);
                                if (*plVar18 != 0) {
                                  Renderer_set_receiveShadows_0x6000538(*plVar18,0,0);
                                  if (*plVar18 != 0) {
                                    Renderer_set_motionVectorGenerationMode_0x600053c(*plVar18,2,0);
                                    lVar8 = *(long *)puVar1;
                                    lVar17 = *plVar16;
                                    if (*(int *)(lVar8 + 0xe4) == 0) {
                                      func_0x029f5bd0();
                                      lVar8 = *(long *)puVar1;
                                    }
                                    if (lVar17 != 0) {
                                      puVar19 = *(undefined8 **)(lVar8 + 0xb8);
                                      uStack_78 = puVar19[1];
                                      uStack_80 = *puVar19;
                                      uStack_70 = puVar19[2];
                                      Mesh_set_bounds_0x60006e1(lVar17,&uStack_80,0);
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
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

