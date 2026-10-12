02c679fc  stp x30,x23,[sp, #-0x30]!
02c67a00  stp x22,x21,[sp, #0x10]
02c67a04  stp x20,x19,[sp, #0x20]
02c67a08  adrp x20,0x625c000
02c67a0c  mov x19,x0
02c67a10  ldrb w8,[x20, #0x26e]
02c67a14  tbnz w8,#0x0,0x02c67a2c
02c67a18  adrp x0,0x5e59000
02c67a1c  ldr x0,[x0, #0x1c0]
02c67a20  bl 0x029f5a50
02c67a24  mov w8,#0x1
02c67a28  strb w8,[x20, #0x26e]
02c67a2c  ldr x20,[x19, #0x98]
02c67a30  cbz x20,0x02c67aa4
02c67a34  ldr x8,[x20, #0x18]
02c67a38  cmp w8,#0x1
02c67a3c  b.lt 0x02c67aa4
02c67a40  adrp x22,0x5e59000
02c67a44  mov x21,xzr
02c67a48  and x8,x8,#0xffffffff
02c67a4c  ldr x22,[x22, #0x1c0]
02c67a50  add x23,x20,#0x20
02c67a54  cmp x21,w8, UXTW 
02c67a58  b.cs 0x02c67ab4
02c67a5c  ldr x0,[x22]
02c67a60  ldr x19,[x23, x21, LSL #0x3]
02c67a64  ldr w8,[x0, #0xe4]
02c67a68  cbnz w8,0x02c67a70
02c67a6c  bl 0x029f5bd0
02c67a70  mov x0,x19
02c67a74  mov x1,xzr
02c67a78  mov x2,xzr
02c67a7c  bl 0x057dfa70
02c67a80  tbz w0,#0x0,0x02c67a94
02c67a84  cbz x19,0x02c67ab8
02c67a88  mov x0,x19
02c67a8c  mov x1,xzr
02c67a90  bl 0x02c762a4
02c67a94  ldr w8,[x20, #0x18]
02c67a98  add x21,x21,#0x1
02c67a9c  cmp x21,w8, SXTW 
02c67aa0  b.lt 0x02c67a54
02c67aa4  ldp x20,x19,[sp, #0x20]
02c67aa8  ldp x22,x21,[sp, #0x10]
02c67aac  ldp x30,x23,[sp], #0x30
02c67ab0  ret
02c67ab4  bl 0x029f5d04
02c67ab8  bl 0x029f5cfc
