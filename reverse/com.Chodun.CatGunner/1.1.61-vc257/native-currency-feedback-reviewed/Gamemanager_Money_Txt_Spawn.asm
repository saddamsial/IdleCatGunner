02b7e994  str d10,[sp, #-0x40]!
02b7e998  stp d9,d8,[sp, #0x10]
02b7e99c  stp x30,x21,[sp, #0x20]
02b7e9a0  stp x20,x19,[sp, #0x30]
02b7e9a4  fmov s8,s2
02b7e9a8  fmov s9,s1
02b7e9ac  adrp x21,0x625b000
02b7e9b0  fmov s10,s0
02b7e9b4  adrp x20,0x5e59000
02b7e9b8  ldrb w8,[x21, #0x8cb]
02b7e9bc  ldr x20,[x20, #0x1c0]
02b7e9c0  mov x19,x0
02b7e9c4  tbnz w8,#0x0,0x02b7ea00
02b7e9c8  adrp x0,0x5e5d000
02b7e9cc  ldr x0,[x0, #0x338]
02b7e9d0  bl 0x029f5a50
02b7e9d4  adrp x0,0x5e59000
02b7e9d8  ldr x0,[x0, #0x1c0]
02b7e9dc  bl 0x029f5a50
02b7e9e0  adrp x0,0x5e5d000
02b7e9e4  ldr x0,[x0, #0x528]
02b7e9e8  bl 0x029f5a50
02b7e9ec  adrp x0,0x5e59000
02b7e9f0  ldr x0,[x0, #0x4b0]
02b7e9f4  bl 0x029f5a50
02b7e9f8  mov w8,#0x1
02b7e9fc  strb w8,[x21, #0x8cb]
02b7ea00  mov x0,xzr
02b7ea04  bl 0x05797adc
02b7ea08  ldr x8,[x20]
02b7ea0c  mov x20,x0
02b7ea10  ldr w9,[x8, #0xe4]
02b7ea14  cbnz w9,0x02b7ea20
02b7ea18  mov x0,x8
02b7ea1c  bl 0x029f5bd0
02b7ea20  mov x0,x20
02b7ea24  mov x1,xzr
02b7ea28  mov x2,xzr
02b7ea2c  bl 0x057e14b4
02b7ea30  tbnz w0,#0x0,0x02b7eac4
02b7ea34  adrp x8,0x5e5d000
02b7ea38  ldr x8,[x8, #0x338]
02b7ea3c  ldr x0,[x8]
02b7ea40  ldr w8,[x0, #0xe4]
02b7ea44  cbnz w8,0x02b7ea4c
02b7ea48  bl 0x029f5bd0
02b7ea4c  fmov s0,s10
02b7ea50  fmov s1,s9
02b7ea54  adrp x8,0x116c000
02b7ea58  fmov s2,s8
02b7ea5c  ldr s3,[x8, #0x60]
02b7ea60  bl 0x02b80354
02b7ea64  tbz w0,#0x0,0x02b7eac4
02b7ea68  bl 0x02b80610
02b7ea6c  adrp x8,0x5e5d000
02b7ea70  mov x20,x0
02b7ea74  mov x1,x19
02b7ea78  ldr x8,[x8, #0x528]
02b7ea7c  mov x2,xzr
02b7ea80  ldr x8,[x8]
02b7ea84  mov x0,x8
02b7ea88  bl 0x046b2d44
02b7ea8c  cbz x20,0x02b7ead8
02b7ea90  adrp x8,0x5e59000
02b7ea94  mov x2,x0
02b7ea98  mov x0,x20
02b7ea9c  ldr x8,[x8, #0x4b0]
02b7eaa0  fmov s1,s9
02b7eaa4  fmov s2,s8
02b7eaa8  ldp x20,x19,[sp, #0x30]
02b7eaac  fmov s0,s10
02b7eab0  ldp x30,x21,[sp, #0x20]
02b7eab4  ldr x1,[x8]
02b7eab8  ldp d9,d8,[sp, #0x10]
02b7eabc  ldr d10,[sp], #0x40
02b7eac0  b 0x02b80694
02b7eac4  ldp x20,x19,[sp, #0x30]
02b7eac8  ldp x30,x21,[sp, #0x20]
02b7eacc  ldp d9,d8,[sp, #0x10]
02b7ead0  ldr d10,[sp], #0x40
02b7ead4  ret
02b7ead8  bl 0x029f5cfc
