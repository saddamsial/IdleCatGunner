02c26f50  stp d11,d10,[sp, #-0x40]!
02c26f54  stp d9,d8,[sp, #0x10]
02c26f58  str x30,[sp, #0x20]
02c26f5c  stp x20,x19,[sp, #0x30]
02c26f60  adrp x20,0x625b000
02c26f64  mov x19,x0
02c26f68  ldrb w8,[x20, #0xfb9]
02c26f6c  tbnz w8,#0x0,0x02c26f84
02c26f70  adrp x0,0x5e5b000
02c26f74  ldr x0,[x0, #0xe98]
02c26f78  bl 0x029f5a50
02c26f7c  mov w8,#0x1
02c26f80  strb w8,[x20, #0xfb9]
02c26f84  ldr x0,[x19, #0x28]
02c26f88  cbz x0,0x02c27040
02c26f8c  adrp x8,0x5e5b000
02c26f90  ldr x8,[x8, #0xe98]
02c26f94  ldr x1,[x8]
02c26f98  bl 0x02fe5f2c
02c26f9c  mov x20,x19
02c26fa0  mov x1,x0
02c26fa4  str x0,[x20, #0x30]!
02c26fa8  mov x0,x20
02c26fac  bl 0x029f59f4
02c26fb0  ldr x0,[x20]
02c26fb4  cbz x0,0x02c27040
02c26fb8  mov x1,xzr
02c26fbc  bl 0x057ed9fc
02c26fc0  ldr x0,[x19, #0x30]
02c26fc4  cbz x0,0x02c27040
02c26fc8  ldr s10,[x19, #0x20]
02c26fcc  mov x1,xzr
02c26fd0  fmov s8,s2
02c26fd4  bl 0x057ed9fc
02c26fd8  fmov s9,s3
02c26fdc  adrp x20,0x625b000
02c26fe0  ldr s11,[x19, #0x20]
02c26fe4  ldrb w8,[x20, #0x271]
02c26fe8  ldr x19,[x19, #0x28]
02c26fec  cbnz w8,0x02c27004
02c26ff0  adrp x0,0x5e59000
02c26ff4  ldr x0,[x0, #0x608]
02c26ff8  bl 0x029f5a50
02c26ffc  mov w8,#0x1
02c27000  strb w8,[x20, #0x271]
02c27004  cbz x19,0x02c27040
02c27008  adrp x8,0x5e59000
02c2700c  fdiv s3,s9,s11
02c27010  mov x0,x19
02c27014  ldr x8,[x8, #0x608]
02c27018  ldp x20,x19,[sp, #0x30]
02c2701c  ldr x30,[sp, #0x20]
02c27020  mov x1,xzr
02c27024  ldr x8,[x8]
02c27028  ldr x8,[x8, #0xb8]
02c2702c  ldp s0,s1,[x8]
02c27030  fdiv s2,s8,s10
02c27034  ldp d9,d8,[sp, #0x10]
02c27038  ldp d11,d10,[sp], #0x40
02c2703c  b 0x05ab7c74
02c27040  bl 0x029f5cfc
