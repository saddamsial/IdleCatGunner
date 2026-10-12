02c049e8  str x30,[sp, #-0x30]!
02c049ec  stp x22,x21,[sp, #0x10]
02c049f0  stp x20,x19,[sp, #0x20]
02c049f4  adrp x22,0x625b000
02c049f8  adrp x21,0x5e59000
02c049fc  mov w20,w1
02c04a00  ldrb w8,[x22, #0xe64]
02c04a04  ldr x21,[x21, #0x1c0]
02c04a08  mov x19,x0
02c04a0c  tbnz w8,#0x0,0x02c04a24
02c04a10  adrp x0,0x5e59000
02c04a14  ldr x0,[x0, #0x1c0]
02c04a18  bl 0x029f5a50
02c04a1c  mov w8,#0x1
02c04a20  strb w8,[x22, #0xe64]
02c04a24  ldr x0,[x21]
02c04a28  cmp w20,#0x0
02c04a2c  mov w8,#0x30
02c04a30  mov w9,#0x28
02c04a34  csel x8,x9,x8,eq
02c04a38  ldr w9,[x0, #0xe4]
02c04a3c  ldr x19,[x19, x8, LSL #0x0]
02c04a40  cbnz w9,0x02c04a48
02c04a44  bl 0x029f5bd0
02c04a48  mov x0,x19
02c04a4c  mov x1,xzr
02c04a50  mov x2,xzr
02c04a54  bl 0x057dfa70
02c04a58  tbz w0,#0x0,0x02c04a74
02c04a5c  cbz x19,0x02c04a84
02c04a60  mov x0,x19
02c04a64  ldp x20,x19,[sp, #0x20]
02c04a68  ldp x22,x21,[sp, #0x10]
02c04a6c  ldr x30,[sp], #0x30
02c04a70  b 0x02c044f8
02c04a74  ldp x20,x19,[sp, #0x20]
02c04a78  ldp x22,x21,[sp, #0x10]
02c04a7c  ldr x30,[sp], #0x30
02c04a80  ret
02c04a84  bl 0x029f5cfc
