02c6d98c  str x30,[sp, #-0x30]!
02c6d990  stp x22,x21,[sp, #0x10]
02c6d994  stp x20,x19,[sp, #0x20]
02c6d998  adrp x22,0x625c000
02c6d99c  adrp x21,0x5e5e000
02c6d9a0  mov w20,w0
02c6d9a4  ldrb w9,[x22, #0x2aa]
02c6d9a8  ldr x21,[x21, #0x58]
02c6d9ac  mov x19,x8
02c6d9b0  tbnz w9,#0x0,0x02c6d9c8
02c6d9b4  adrp x0,0x5e5e000
02c6d9b8  ldr x0,[x0, #0x58]
02c6d9bc  bl 0x029f5a50
02c6d9c0  mov w8,#0x1
02c6d9c4  strb w8,[x22, #0x2aa]
02c6d9c8  ldr x0,[x21]
02c6d9cc  ldr w8,[x0, #0xe4]
02c6d9d0  cbnz w8,0x02c6d9d8
02c6d9d4  bl 0x029f5bd0
02c6d9d8  bl 0x02c6d36c
02c6d9dc  ldr x8,[x21]
02c6d9e0  ldr x8,[x8, #0xb8]
02c6d9e4  ldr x8,[x8, #0x18]
02c6d9e8  cbz x8,0x02c6da24
02c6d9ec  cmp w20,#0x14
02c6d9f0  mov w9,#0x14
02c6d9f4  ldr w10,[x8, #0x18]
02c6d9f8  csel w9,w20,w9,lt
02c6d9fc  bic w9,w9,w9, ASR #0x1f
02c6da00  cmp w9,w10
02c6da04  b.cs 0x02c6da28
02c6da08  add x8,x8,x9, LSL #0x5
02c6da0c  ldp x22,x21,[sp, #0x10]
02c6da10  ldp q0,q1,[x8, #0x20]
02c6da14  stp q0,q1,[x19]
02c6da18  ldp x20,x19,[sp, #0x20]
02c6da1c  ldr x30,[sp], #0x30
02c6da20  ret
02c6da24  bl 0x029f5cfc
02c6da28  bl 0x029f5d04
