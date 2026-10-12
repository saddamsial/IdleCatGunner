02cad8b4  sub sp,sp,#0x110
02cad8b8  stp x29,x30,[sp, #0xc0]
02cad8bc  stp x26,x25,[sp, #0xd0]
02cad8c0  stp x24,x23,[sp, #0xe0]
02cad8c4  stp x22,x21,[sp, #0xf0]
02cad8c8  stp x20,x19,[sp, #0x100]
02cad8cc  adrp x19,0x625c000
02cad8d0  adrp x22,0x5e63000
02cad8d4  mov x20,x0
02cad8d8  ldrb w8,[x19, #0x523]
02cad8dc  ldr x22,[x22, #0x90]
02cad8e0  tbnz w8,#0x0,0x02cad904
02cad8e4  adrp x0,0x5e63000
02cad8e8  ldr x0,[x0, #0x90]
02cad8ec  bl 0x029f5a50
02cad8f0  adrp x0,0x5e5d000
02cad8f4  ldr x0,[x0, #0xc20]
02cad8f8  bl 0x029f5a50
02cad8fc  mov w8,#0x1
02cad900  strb w8,[x19, #0x523]
02cad904  ldp w1,w24,[x20, #0x28]
02cad908  mov w8,#0xa
02cad90c  mov w9,#0x1e
02cad910  movi v0.2D,#0x0
02cad914  mov x0,x20
02cad918  madd w8,w1,w8,w9
02cad91c  mov w9,#0x64
02cad920  stp q0,q0,[sp, #0x80]
02cad924  cmp w8,#0x64
02cad928  stp q0,q0,[sp, #0xa0]
02cad92c  csel w8,w8,w9,lt
02cad930  mov w9,#0x1e
02cad934  cmp w8,#0x1e
02cad938  csel w19,w8,w9,gt
02cad93c  add x8,sp,#0x60
02cad940  bl 0x02ca96cc
02cad944  ldp q0,q1,[sp, #0x60]
02cad948  add x8,sp,#0x40
02cad94c  ldr w1,[x20, #0x28]
02cad950  mov x0,x20
02cad954  stp q0,q1,[sp, #0xa0]
02cad958  bl 0x02cab768
02cad95c  ldp q0,q1,[sp, #0x40]
02cad960  mov w1,#0x4
02cad964  ldr x0,[x22]
02cad968  stp q0,q1,[sp, #0x80]
02cad96c  bl 0x029f5b40
02cad970  cbz x0,0x02cadb30
02cad974  ldr w8,[x0, #0x18]
02cad978  adrp x23,0x5e5d000
02cad97c  mov x21,x0
02cad980  ldr x23,[x23, #0xc20]
02cad984  cmp w8,#0x1
02cad988  b.lt 0x02cada08
02cad98c  mov x25,xzr
02cad990  mov w26,#0x20
02cad994  ldr x0,[x23]
02cad998  ldr w8,[x0, #0xe4]
02cad99c  cbnz w8,0x02cad9a8
02cad9a0  bl 0x029f5bd0
02cad9a4  ldr x0,[x23]
02cad9a8  ldr x8,[x0, #0xb8]
02cad9ac  ldr x9,[x8]
02cad9b0  cbz x9,0x02cadb30
02cad9b4  ldr w8,[x9, #0x18]
02cad9b8  cmp x25,x8
02cad9bc  b.cs 0x02cadc34
02cad9c0  add x8,sp,#0x60
02cad9c4  add x0,x9,x26
02cad9c8  add x1,sp,#0xa0
02cad9cc  mov x2,xzr
02cad9d0  bl 0x04658538
02cad9d4  ldr w8,[x21, #0x18]
02cad9d8  cmp x25,x8
02cad9dc  b.cs 0x02cadc34
02cad9e0  ldp q1,q0,[sp, #0x60]
02cad9e4  add x0,x21,x26
02cad9e8  mov x1,xzr
02cad9ec  stp q1,q0,[x0]
02cad9f0  bl 0x029f59f4
02cad9f4  ldrsw x8,[x21, #0x18]
02cad9f8  add x25,x25,#0x1
02cad9fc  add x26,x26,#0x20
02cada00  cmp x25,x8
02cada04  b.lt 0x02cad994
02cada08  ldr x0,[x22]
02cada0c  mov w1,#0x4
02cada10  bl 0x029f5b40
02cada14  cbz x0,0x02cadb30
02cada18  ldr w8,[x0, #0x18]
02cada1c  mov x22,x0
02cada20  cmp w8,#0x1
02cada24  b.lt 0x02cadaa4
02cada28  mov x25,xzr
02cada2c  mov w26,#0x20
02cada30  ldr x0,[x23]
02cada34  ldr w8,[x0, #0xe4]
02cada38  cbnz w8,0x02cada44
02cada3c  bl 0x029f5bd0
02cada40  ldr x0,[x23]
02cada44  ldr x8,[x0, #0xb8]
02cada48  ldr x9,[x8, #0x8]
02cada4c  cbz x9,0x02cadb30
02cada50  ldr w8,[x9, #0x18]
02cada54  cmp x25,x8
02cada58  b.cs 0x02cadc34
02cada5c  add x8,sp,#0x60
02cada60  add x0,x9,x26
02cada64  add x1,sp,#0x80
02cada68  mov x2,xzr
02cada6c  bl 0x04658538
02cada70  ldr w8,[x22, #0x18]
02cada74  cmp x25,x8
02cada78  b.cs 0x02cadc34
02cada7c  ldp q1,q0,[sp, #0x60]
02cada80  add x0,x22,x26
02cada84  mov x1,xzr
02cada88  stp q1,q0,[x0]
02cada8c  bl 0x029f59f4
02cada90  ldrsw x8,[x22, #0x18]
02cada94  add x25,x25,#0x1
02cada98  add x26,x26,#0x20
02cada9c  cmp x25,x8
02cadaa0  b.lt 0x02cada30
02cadaa4  ldr x8,[x20, #0xf8]
02cadaa8  cbz x8,0x02cadb30
02cadaac  add w24,w24,#0x1
02cadab0  mov x26,xzr
02cadab4  sxtw x25,w24
02cadab8  ldr w9,[x8, #0x18]
02cadabc  cmp x26,w9, SXTW 
02cadac0  b.ge 0x02cadb34
02cadac4  cmp x26,x25
02cadac8  b.ge 0x02cadaf8
02cadacc  cmp x26,x9
02cadad0  b.cs 0x02cadc34
02cadad4  add x8,x8,x26, LSL #0x3
02cadad8  ldr x0,[x8, #0x20]
02cadadc  cbz x0,0x02cadb30
02cadae0  ldp w3,w2,[x20, #0x28]
02cadae4  mov w1,w19
02cadae8  mov x4,x21
02cadaec  mov x5,x22
02cadaf0  bl 0x02cac2d8
02cadaf4  b 0x02cadb24
02cadaf8  cmp x26,x9
02cadafc  b.cs 0x02cadc34
02cadb00  add x8,x8,x26, LSL #0x3
02cadb04  ldr x0,[x8, #0x20]
02cadb08  cbz x0,0x02cadb30
02cadb0c  mov x1,xzr
02cadb10  bl 0x057dc1c8
02cadb14  cbz x0,0x02cadb30
02cadb18  mov w1,wzr
02cadb1c  mov x2,xzr
02cadb20  bl 0x057dff3c
02cadb24  ldr x8,[x20, #0xf8]
02cadb28  add x26,x26,#0x1
02cadb2c  cbnz x8,0x02cadab8
02cadb30  bl 0x029f5cfc
02cadb34  ldr x0,[x20, #0x108]
02cadb38  cbz x0,0x02cadb30
02cadb3c  mov w8,#0x32
02cadb40  mov w9,#0x3c
02cadb44  movi d0,#0x0
02cadb48  madd w8,w24,w8,w9
02cadb4c  movi d1,#0x0
02cadb50  mov x1,xzr
02cadb54  scvtf s2,w8
02cadb58  bl 0x057ee3b4
02cadb5c  ldr x0,[x20, #0x100]
02cadb60  cbz x0,0x02cadb30
02cadb64  ldr w25,[x20, #0x2c]
02cadb68  mov x1,xzr
02cadb6c  bl 0x057dc1c8
02cadb70  cbz x0,0x02cadb30
02cadb74  cmp w25,#0x4
02cadb78  mov x2,xzr
02cadb7c  cset w1,eq
02cadb80  bl 0x057dff3c
02cadb84  cmp w25,#0x4
02cadb88  b.ne 0x02cadc14
02cadb8c  ldr w8,[x21, #0x18]
02cadb90  tst w8,#0xfffffffc
02cadb94  b.eq 0x02cadc34
02cadb98  ldr q0,[x21, #0x80]
02cadb9c  str q0,[sp, #0x60]
02cadba0  ldr q0,[x21, #0x90]
02cadba4  ldr x21,[x20, #0x100]
02cadba8  str q0,[sp, #0x70]
02cadbac  ldr w8,[x22, #0x18]
02cadbb0  tst w8,#0xfffffffc
02cadbb4  b.eq 0x02cadc34
02cadbb8  ldr x0,[x23]
02cadbbc  ldp q0,q1,[x22, #0x80]
02cadbc0  ldr w20,[x20, #0x28]
02cadbc4  ldr w8,[x0, #0xe4]
02cadbc8  stp q0,q1,[sp, #0x40]
02cadbcc  cbnz w8,0x02cadbd4
02cadbd0  bl 0x029f5bd0
02cadbd4  mov w0,w20
02cadbd8  mov w1,#0x3
02cadbdc  bl 0x02cab8f8
02cadbe0  cbz x21,0x02cadb30
02cadbe4  ldp q0,q1,[sp, #0x60]
02cadbe8  mov x3,x0
02cadbec  add x1,sp,#0x20
02cadbf0  mov x2,sp
02cadbf4  mov x0,x21
02cadbf8  stp q0,q1,[sp, #0x20]
02cadbfc  ldp q0,q2,[sp, #0x40]
02cadc00  stp q0,q2,[sp]
02cadc04  bl 0x02cabe50
02cadc08  mul w8,w19,w24
02cadc0c  orr w0,w8,#0x1
02cadc10  b 0x02cadc18
02cadc14  mul w0,w19,w24
02cadc18  ldp x20,x19,[sp, #0x100]
02cadc1c  ldp x22,x21,[sp, #0xf0]
02cadc20  ldp x24,x23,[sp, #0xe0]
02cadc24  ldp x26,x25,[sp, #0xd0]
02cadc28  ldp x29,x30,[sp, #0xc0]
02cadc2c  add sp,sp,#0x110
02cadc30  ret
02cadc34  bl 0x029f5d04
