02c09dd8  sub sp,sp,#0x50
02c09ddc  str x30,[sp, #0x20]
02c09de0  stp x22,x21,[sp, #0x30]
02c09de4  stp x20,x19,[sp, #0x40]
02c09de8  adrp x22,0x625b000
02c09dec  adrp x21,0x5e5d000
02c09df0  mov w20,w0
02c09df4  ldrb w9,[x22, #0xe8a]
02c09df8  ldr x21,[x21, #0x4e8]
02c09dfc  mov x19,x8
02c09e00  tbnz w9,#0x0,0x02c09e18
02c09e04  adrp x0,0x5e5d000
02c09e08  ldr x0,[x0, #0x4e8]
02c09e0c  bl 0x029f5a50
02c09e10  mov w8,#0x1
02c09e14  strb w8,[x22, #0xe8a]
02c09e18  ldr x0,[x21]
02c09e1c  mov w8,#0x2710
02c09e20  cmp w20,w8
02c09e24  ldr w9,[x0, #0xe4]
02c09e28  csel w20,w20,w8,lt
02c09e2c  cbnz w9,0x02c09e38
02c09e30  bl 0x029f5bd0
02c09e34  ldr x0,[x21]
02c09e38  ldr x8,[x0, #0xb8]
02c09e3c  bic w20,w20,w20, ASR #0x1f
02c09e40  ldr x8,[x8]
02c09e44  cbz x8,0x02c09e68
02c09e48  ldr x8,[x8, #0x30]
02c09e4c  cbz x8,0x02c09e68
02c09e50  ldr w9,[x8, #0x18]
02c09e54  cmp w20,w9
02c09e58  b.ge 0x02c09e68
02c09e5c  add x8,x8,x20, LSL #0x5
02c09e60  ldp q0,q1,[x8, #0x20]
02c09e64  b 0x02c09e88
02c09e68  ldr w8,[x0, #0xe4]
02c09e6c  cbnz w8,0x02c09e74
02c09e70  bl 0x029f5bd0
02c09e74  mov x8,sp
02c09e78  mov w0,w20
02c09e7c  mov x1,xzr
02c09e80  bl 0x02cb2924
02c09e84  ldp q0,q1,[sp]
02c09e88  stp q0,q1,[x19]
02c09e8c  ldp x20,x19,[sp, #0x40]
02c09e90  ldp x22,x21,[sp, #0x30]
02c09e94  ldr x30,[sp, #0x20]
02c09e98  add sp,sp,#0x50
02c09e9c  ret
