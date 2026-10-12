02cb2ef8  str x30,[sp, #-0x20]!
02cb2efc  stp x20,x19,[sp, #0x10]
02cb2f00  adrp x20,0x625c000
02cb2f04  adrp x19,0x5e5d000
02cb2f08  ldrb w8,[x20, #0x55f]
02cb2f0c  ldr x19,[x19, #0x4e8]
02cb2f10  tbnz w8,#0x0,0x02cb2f28
02cb2f14  adrp x0,0x5e5d000
02cb2f18  ldr x0,[x0, #0x4e8]
02cb2f1c  bl 0x029f5a50
02cb2f20  mov w8,#0x1
02cb2f24  strb w8,[x20, #0x55f]
02cb2f28  ldr x0,[x19]
02cb2f2c  ldr w8,[x0, #0xe4]
02cb2f30  cbnz w8,0x02cb2f3c
02cb2f34  bl 0x029f5bd0
02cb2f38  ldr x0,[x19]
02cb2f3c  ldr x8,[x0, #0xb8]
02cb2f40  ldr x8,[x8]
02cb2f44  cbz x8,0x02cb2f78
02cb2f48  ldr x19,[x8, #0x48]
02cb2f4c  mov w0,#0x1
02cb2f50  bl 0x02caf208
02cb2f54  cbz x19,0x02cb2f78
02cb2f58  ldr w8,[x19, #0x18]
02cb2f5c  cmp w0,w8
02cb2f60  b.cs 0x02cb2f7c
02cb2f64  add x8,x19,w0, SXTW  #0x2
02cb2f68  ldp x20,x19,[sp, #0x10]
02cb2f6c  ldr w0,[x8, #0x20]
02cb2f70  ldr x30,[sp], #0x20
02cb2f74  ret
02cb2f78  bl 0x029f5cfc
02cb2f7c  bl 0x029f5d04
