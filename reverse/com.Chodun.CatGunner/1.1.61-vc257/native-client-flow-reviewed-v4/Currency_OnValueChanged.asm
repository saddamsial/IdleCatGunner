02c2659c  stp x30,x21,[sp, #-0x20]!
02c265a0  stp x20,x19,[sp, #0x10]
02c265a4  adrp x20,0x625b000
02c265a8  adrp x21,0x5e5d000
02c265ac  mov x19,x0
02c265b0  ldrb w8,[x20, #0xfad]
02c265b4  ldr x21,[x21, #0x338]
02c265b8  tbnz w8,#0x0,0x02c265d0
02c265bc  adrp x0,0x5e5d000
02c265c0  ldr x0,[x0, #0x338]
02c265c4  bl 0x029f5a50
02c265c8  mov w8,#0x1
02c265cc  strb w8,[x20, #0xfad]
02c265d0  ldr x0,[x21]
02c265d4  ldr x20,[x19, #0x20]
02c265d8  ldr w8,[x0, #0xe4]
02c265dc  cbnz w8,0x02c265e8
02c265e0  bl 0x029f5bd0
02c265e4  ldr x0,[x21]
02c265e8  ldr x8,[x0, #0xb8]
02c265ec  mov x1,xzr
02c265f0  add x0,x8,#0x30
02c265f4  bl 0x0465bddc
02c265f8  cbz x20,0x02c26650
02c265fc  ldr x8,[x20]
02c26600  mov x1,x0
02c26604  mov x0,x20
02c26608  ldr x9,[x8, #0x558]
02c2660c  ldr x2,[x8, #0x560]
02c26610  blr x9
02c26614  ldr x8,[x21]
02c26618  ldr x19,[x19, #0x28]
02c2661c  mov x1,xzr
02c26620  ldr x8,[x8, #0xb8]
02c26624  add x0,x8,#0x90
02c26628  bl 0x02b1e910
02c2662c  cbz x19,0x02c26650
02c26630  ldr x8,[x19]
02c26634  mov x1,x0
02c26638  mov x0,x19
02c2663c  ldp x20,x19,[sp, #0x10]
02c26640  ldr x2,[x8, #0x560]
02c26644  ldr x3,[x8, #0x558]
02c26648  ldp x30,x21,[sp], #0x20
02c2664c  br x3
02c26650  bl 0x029f5cfc
