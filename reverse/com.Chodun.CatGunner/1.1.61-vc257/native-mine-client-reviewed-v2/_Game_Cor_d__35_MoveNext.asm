02c4aef4  str d8,[sp, #-0x30]!
02c4aef8  stp x30,x21,[sp, #0x10]
02c4aefc  stp x20,x19,[sp, #0x20]
02c4af00  adrp x20,0x625c000
02c4af04  mov x19,x0
02c4af08  ldrb w8,[x20, #0x11f]
02c4af0c  tbnz w8,#0x0,0x02c4af24
02c4af10  adrp x0,0x5e5d000
02c4af14  ldr x0,[x0, #0x338]
02c4af18  bl 0x029f5a50
02c4af1c  mov w8,#0x1
02c4af20  strb w8,[x20, #0x11f]
02c4af24  ldr w8,[x19, #0x10]
02c4af28  ldr x20,[x19, #0x20]
02c4af2c  cmp w8,#0x1
02c4af30  b.eq 0x02c4af90
02c4af34  cbnz w8,0x02c4b020
02c4af38  mov w8,#0xffffffff
02c4af3c  str w8,[x19, #0x10]
02c4af40  cbz x20,0x02c4b034
02c4af44  mov x0,x20
02c4af48  bl 0x02c499fc
02c4af4c  ldr x0,[x20, #0x98]
02c4af50  str s0,[x20, #0x74]
02c4af54  cbz x0,0x02c4b034
02c4af58  ldr s1,[x20, #0x78]
02c4af5c  bl 0x02c4b038
02c4af60  ldr x0,[x20, #0x98]
02c4af64  cbz x0,0x02c4b034
02c4af68  ldr w1,[x20, #0x64]
02c4af6c  bl 0x02c49cf0
02c4af70  ldr x8,[x20, #0x98]
02c4af74  cbz x8,0x02c4b034
02c4af78  ldr x0,[x8, #0x20]
02c4af7c  cbz x0,0x02c4b034
02c4af80  movi d0,#0x0
02c4af84  mov x1,xzr
02c4af88  bl 0x02c28290
02c4af8c  b 0x02c4af9c
02c4af90  mov w8,#0xffffffff
02c4af94  str w8,[x19, #0x10]
02c4af98  cbz x20,0x02c4b034
02c4af9c  ldr s8,[x20, #0x74]
02c4afa0  fcmp s8,#0.0
02c4afa4  b.le 0x02c4b010
02c4afa8  adrp x21,0x5e5d000
02c4afac  ldr x21,[x21, #0x338]
02c4afb0  ldr x0,[x21]
02c4afb4  ldr w8,[x0, #0xe4]
02c4afb8  cbnz w8,0x02c4afc8
02c4afbc  bl 0x029f5bd0
02c4afc0  ldr x0,[x21]
02c4afc4  ldr s8,[x20, #0x74]
02c4afc8  ldr x8,[x0, #0xb8]
02c4afcc  ldrb w8,[x8]
02c4afd0  cbz w8,0x02c4b010
02c4afd4  mov x0,xzr
02c4afd8  bl 0x057ebabc
02c4afdc  fsub s0,s8,s0
02c4afe0  ldr x0,[x20, #0x98]
02c4afe4  str s0,[x20, #0x74]
02c4afe8  cbz x0,0x02c4b034
02c4afec  ldr s1,[x20, #0x78]
02c4aff0  bl 0x02c4b038
02c4aff4  str xzr,[x19, #0x18]!
02c4aff8  mov x0,x19
02c4affc  mov x1,xzr
02c4b000  bl 0x029f59f4
02c4b004  mov w0,#0x1
02c4b008  stur w0,[x19, #-0x8]
02c4b00c  b 0x02c4b024
02c4b010  fcmp s8,#0.0
02c4b014  b.hi 0x02c4b020
02c4b018  mov x0,x20
02c4b01c  bl 0x02c49be0
02c4b020  mov w0,wzr
02c4b024  ldp x20,x19,[sp, #0x20]
02c4b028  ldp x30,x21,[sp, #0x10]
02c4b02c  ldr d8,[sp], #0x30
02c4b030  ret
02c4b034  bl 0x029f5cfc
