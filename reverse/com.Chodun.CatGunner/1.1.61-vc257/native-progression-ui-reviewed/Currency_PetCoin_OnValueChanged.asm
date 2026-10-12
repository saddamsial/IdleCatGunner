02c269dc  stp x30,x21,[sp, #-0x20]!
02c269e0  stp x20,x19,[sp, #0x10]
02c269e4  adrp x20,0x625b000
02c269e8  adrp x21,0x5e5d000
02c269ec  mov x19,x0
02c269f0  ldrb w8,[x20, #0xfb0]
02c269f4  ldr x21,[x21, #0x338]
02c269f8  tbnz w8,#0x0,0x02c26a1c
02c269fc  adrp x0,0x5e5d000
02c26a00  ldr x0,[x0, #0x338]
02c26a04  bl 0x029f5a50
02c26a08  adrp x0,0x5e59000
02c26a0c  ldr x0,[x0, #0x1c0]
02c26a10  bl 0x029f5a50
02c26a14  mov w8,#0x1
02c26a18  strb w8,[x20, #0xfb0]
02c26a1c  ldr x0,[x21]
02c26a20  ldr x20,[x19, #0x28]
02c26a24  ldr w8,[x0, #0xe4]
02c26a28  cbnz w8,0x02c26a34
02c26a2c  bl 0x029f5bd0
02c26a30  ldr x0,[x21]
02c26a34  ldr x8,[x0, #0xb8]
02c26a38  mov x1,xzr
02c26a3c  add x0,x8,#0xc0
02c26a40  bl 0x0484e6a4
02c26a44  cbz x20,0x02c26ab4
02c26a48  ldr x8,[x20]
02c26a4c  adrp x21,0x5e59000
02c26a50  mov x1,x0
02c26a54  ldr x21,[x21, #0x1c0]
02c26a58  mov x0,x20
02c26a5c  ldr x9,[x8, #0x558]
02c26a60  ldr x2,[x8, #0x560]
02c26a64  blr x9
02c26a68  ldr x0,[x21]
02c26a6c  ldr x20,[x19, #0x20]
02c26a70  ldr w8,[x0, #0xe4]
02c26a74  cbnz w8,0x02c26a7c
02c26a78  bl 0x029f5bd0
02c26a7c  mov x0,x20
02c26a80  mov x1,xzr
02c26a84  mov x2,xzr
02c26a88  bl 0x057dfa70
02c26a8c  tbz w0,#0x0,0x02c26aa8
02c26a90  ldr x0,[x19, #0x20]
02c26a94  cbz x0,0x02c26ab4
02c26a98  ldp x20,x19,[sp, #0x10]
02c26a9c  mov x1,xzr
02c26aa0  ldp x30,x21,[sp], #0x20
02c26aa4  b 0x02b9afe0
02c26aa8  ldp x20,x19,[sp, #0x10]
02c26aac  ldp x30,x21,[sp], #0x20
02c26ab0  ret
02c26ab4  bl 0x029f5cfc
