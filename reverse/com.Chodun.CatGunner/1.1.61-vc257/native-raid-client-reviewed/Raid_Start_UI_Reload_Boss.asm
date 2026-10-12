02c5ba4c  stp x30,x21,[sp, #-0x20]!
02c5ba50  stp x20,x19,[sp, #0x10]
02c5ba54  adrp x21,0x625c000
02c5ba58  adrp x20,0x5e59000
02c5ba5c  mov x19,x0
02c5ba60  ldrb w8,[x21, #0x1e0]
02c5ba64  ldr x20,[x20, #0x1c0]
02c5ba68  tbnz w8,#0x0,0x02c5ba8c
02c5ba6c  adrp x0,0x5e59000
02c5ba70  ldr x0,[x0, #0x1c0]
02c5ba74  bl 0x029f5a50
02c5ba78  adrp x0,0x5e5e000
02c5ba7c  ldr x0,[x0, #0x70]
02c5ba80  bl 0x029f5a50
02c5ba84  mov w8,#0x1
02c5ba88  strb w8,[x21, #0x1e0]
02c5ba8c  ldr x0,[x20]
02c5ba90  ldr x20,[x19, #0x70]
02c5ba94  ldr w8,[x0, #0xe4]
02c5ba98  cbnz w8,0x02c5baa0
02c5ba9c  bl 0x029f5bd0
02c5baa0  mov x0,x20
02c5baa4  mov x1,xzr
02c5baa8  mov x2,xzr
02c5baac  bl 0x057e14b4
02c5bab0  tbnz w0,#0x0,0x02c5bb2c
02c5bab4  ldr x8,[x19, #0x78]
02c5bab8  cbz x8,0x02c5bb2c
02c5babc  ldr x8,[x8, #0x18]
02c5bac0  cbz x8,0x02c5bb2c
02c5bac4  adrp x8,0x5e5e000
02c5bac8  ldr x8,[x8, #0x70]
02c5bacc  ldr x0,[x8]
02c5bad0  ldr w8,[x0, #0xe4]
02c5bad4  cbnz w8,0x02c5badc
02c5bad8  bl 0x029f5bd0
02c5badc  mov x0,xzr
02c5bae0  bl 0x02c58974
02c5bae4  ldr x8,[x19, #0x78]
02c5bae8  cbz x8,0x02c5bb38
02c5baec  ldr w10,[x8, #0x18]
02c5baf0  sub w9,w10,#0x1
02c5baf4  cmp w0,w9
02c5baf8  csel w9,w0,w9,lt
02c5bafc  cmp w0,#0x0
02c5bb00  csel w9,wzr,w9,lt
02c5bb04  cmp w9,w10
02c5bb08  b.cs 0x02c5bb3c
02c5bb0c  ldr x0,[x19, #0x70]
02c5bb10  cbz x0,0x02c5bb38
02c5bb14  add x8,x8,w9, SXTW  #0x3
02c5bb18  ldp x20,x19,[sp, #0x10]
02c5bb1c  mov x2,xzr
02c5bb20  ldr x1,[x8, #0x20]
02c5bb24  ldp x30,x21,[sp], #0x20
02c5bb28  b 0x058d34cc
02c5bb2c  ldp x20,x19,[sp, #0x10]
02c5bb30  ldp x30,x21,[sp], #0x20
02c5bb34  ret
02c5bb38  bl 0x029f5cfc
02c5bb3c  bl 0x029f5d04
