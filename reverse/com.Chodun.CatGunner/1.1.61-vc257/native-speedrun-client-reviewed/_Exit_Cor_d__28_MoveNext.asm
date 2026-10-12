02caaa14  str x30,[sp, #-0x20]!
02caaa18  stp x20,x19,[sp, #0x10]
02caaa1c  adrp x20,0x625c000
02caaa20  mov x19,x0
02caaa24  ldrb w8,[x20, #0x507]
02caaa28  tbnz w8,#0x0,0x02caaa70
02caaa2c  adrp x0,0x5e5d000
02caaa30  ldr x0,[x0, #0x910]
02caaa34  bl 0x029f5a50
02caaa38  adrp x0,0x5e59000
02caaa3c  ldr x0,[x0, #0x1c0]
02caaa40  bl 0x029f5a50
02caaa44  adrp x0,0x5e5d000
02caaa48  ldr x0,[x0, #0xc20]
02caaa4c  bl 0x029f5a50
02caaa50  adrp x0,0x5e5d000
02caaa54  ldr x0,[x0, #0x368]
02caaa58  bl 0x029f5a50
02caaa5c  adrp x0,0x5e5a000
02caaa60  ldr x0,[x0, #0x710]
02caaa64  bl 0x029f5a50
02caaa68  mov w8,#0x1
02caaa6c  strb w8,[x20, #0x507]
02caaa70  ldr w8,[x19, #0x10]
02caaa74  cmp w8,#0x2
02caaa78  b.eq 0x02caab64
02caaa7c  cmp w8,#0x1
02caaa80  b.eq 0x02caaaec
02caaa84  cbnz w8,0x02caac04
02caaa88  adrp x8,0x5e5d000
02caaa8c  ldr x8,[x8, #0x368]
02caaa90  ldr x8,[x8]
02caaa94  ldr x8,[x8, #0xb8]
02caaa98  ldr x0,[x8]
02caaa9c  mov w8,#0xffffffff
02caaaa0  str w8,[x19, #0x10]
02caaaa4  cbz x0,0x02caac14
02caaaa8  mov x1,xzr
02caaaac  bl 0x02c2a604
02caaab0  adrp x8,0x5e5a000
02caaab4  ldr x8,[x8, #0x710]
02caaab8  ldr x0,[x8]
02caaabc  bl 0x029f5cec
02caaac0  fmov s0,0x3fc00000
02caaac4  mov x1,xzr
02caaac8  mov x20,x0
02caaacc  bl 0x057e84e0
02caaad0  str x20,[x19, #0x18]!
02caaad4  mov x0,x19
02caaad8  mov x1,x20
02caaadc  bl 0x029f59f4
02caaae0  mov w0,#0x1
02caaae4  stur w0,[x19, #-0x8]
02caaae8  b 0x02caac08
02caaaec  adrp x20,0x5e5d000
02caaaf0  mov w9,#0xffffffff
02caaaf4  ldr x20,[x20, #0xc20]
02caaaf8  str w9,[x19, #0x10]
02caaafc  ldr x0,[x20]
02caab00  ldr w8,[x0, #0xe4]
02caab04  cbnz w8,0x02caab10
02caab08  bl 0x029f5bd0
02caab0c  ldr x0,[x20]
02caab10  ldr x8,[x0, #0xb8]
02caab14  ldr x0,[x8, #0x10]
02caab18  cbz x0,0x02caac14
02caab1c  bl 0x02caac18
02caab20  adrp x8,0x5e5a000
02caab24  ldr x8,[x8, #0x710]
02caab28  ldr x0,[x8]
02caab2c  bl 0x029f5cec
02caab30  adrp x8,0x116c000
02caab34  mov x1,xzr
02caab38  mov x20,x0
02caab3c  ldr s0,[x8, #0x60]
02caab40  bl 0x057e84e0
02caab44  str x20,[x19, #0x18]!
02caab48  mov x0,x19
02caab4c  mov x1,x20
02caab50  bl 0x029f59f4
02caab54  mov w8,#0x2
02caab58  mov w0,#0x1
02caab5c  stur w8,[x19, #-0x8]
02caab60  b 0x02caac08
02caab64  adrp x8,0x5e5d000
02caab68  ldr x8,[x8, #0x368]
02caab6c  ldr x20,[x19, #0x20]
02caab70  ldr x8,[x8]
02caab74  ldr x8,[x8, #0xb8]
02caab78  ldr x0,[x8]
02caab7c  mov w8,#0xffffffff
02caab80  str w8,[x19, #0x10]
02caab84  cbz x0,0x02caac14
02caab88  mov x1,xzr
02caab8c  bl 0x02c2a620
02caab90  cbz x20,0x02caac14
02caab94  ldrb w8,[x20, #0x55]
02caab98  cbz w8,0x02caac04
02caab9c  ldrb w8,[x20, #0x56]
02caaba0  cbnz w8,0x02caac04
02caaba4  adrp x20,0x5e5d000
02caaba8  adrp x8,0x5e59000
02caabac  ldr x20,[x20, #0x910]
02caabb0  ldr x8,[x8, #0x1c0]
02caabb4  ldr x9,[x20]
02caabb8  ldr x0,[x8]
02caabbc  ldr x8,[x9, #0xb8]
02caabc0  ldr w9,[x0, #0xe4]
02caabc4  ldr x19,[x8]
02caabc8  cbnz w9,0x02caabd0
02caabcc  bl 0x029f5bd0
02caabd0  mov x0,x19
02caabd4  mov x1,xzr
02caabd8  mov x2,xzr
02caabdc  bl 0x057dfa70
02caabe0  tbz w0,#0x0,0x02caac04
02caabe4  ldr x8,[x20]
02caabe8  ldr x8,[x8, #0xb8]
02caabec  ldr x0,[x8]
02caabf0  cbz x0,0x02caac14
02caabf4  mov w1,#0x2
02caabf8  mov x2,xzr
02caabfc  mov x3,xzr
02caac00  bl 0x02b8ddb4
02caac04  mov w0,wzr
02caac08  ldp x20,x19,[sp, #0x10]
02caac0c  ldr x30,[sp], #0x20
02caac10  ret
02caac14  bl 0x029f5cfc
