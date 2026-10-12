/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x293e610, Ghidra VA 02a3e610. */

/* WARNING: Possible PIC construction at 0x02a3e66c: Changing call to branch */

void Managed_Exception_CxaThrow(undefined8 param_1)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined *puStack_30;
  undefined *puStack_20;
  undefined8 uStack_18;
  
  func_0x02a3e3dc();
  puVar1 = (undefined8 *)func_0x05afb210(8);
  *puVar1 = param_1;
  uVar2 = func_0x05afb220(puVar1,&PTR__ZTVN10__cxxabiv117__class_type_infoE_16__05b01708,0);
  puStack_20 = &UNK_02a3e638;
  uStack_18 = param_1;
  puVar1 = (undefined8 *)func_0x05afb210(8);
  *puVar1 = uVar2;
  func_0x05afb220(puVar1,&PTR__ZTVN10__cxxabiv117__class_type_infoE_16__05b01708,0);
  uStack_38 = 0;
  puStack_30 = &UNK_02a3e65c;
  uStack_40 = 0;
  uVar2 = func_0x02a3e680(&uStack_40);
                    /* WARNING: Subroutine does not return */
  Managed_Exception_CxaThrow(uVar2,0);
}

