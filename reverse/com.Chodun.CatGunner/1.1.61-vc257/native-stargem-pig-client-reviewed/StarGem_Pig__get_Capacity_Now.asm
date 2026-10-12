02ca0fa8  stp x30,x21,[sp, #-0x20]!
02ca0fac  stp x20,x19,[sp, #0x10]
02ca0fb0  adrp x21,0x625c000
02ca0fb4  adrp x20,0x5e5e000
02ca0fb8  mov x19,x0
02ca0fbc  ldrb w8,[x21, #0x47f]
02ca0fc0  ldr x20,[x20, #0x3e0]
02ca0fc4  tbnz w8,#0x0,0x02ca0fdc
02ca0fc8  adrp x0,0x5e5e000
02ca0fcc  ldr x0,[x0, #0x3e0]
02ca0fd0  bl 0x029f5a50
02ca0fd4  mov w8,#0x1
02ca0fd8  strb w8,[x21, #0x47f]
02ca0fdc  ldr x0,[x20]
02ca0fe0  ldr w8,[x0, #0xe4]
02ca0fe4  cbnz w8,0x02ca0ff0
02ca0fe8  bl 0x029f5bd0
02ca0fec  ldr x0,[x20]
02ca0ff0  ldr x8,[x0, #0xb8]
02ca0ff4  ldr x8,[x8, #0x8]
02ca0ff8  cbz x8,0x02ca1038
02ca0ffc  ldr w9,[x19, #0x20]
02ca1000  mov w10,#0x3
02ca1004  cmp w9,#0x3
02ca1008  csel w9,w9,w10,lt
02ca100c  ldr w10,[x8, #0x18]
02ca1010  cmp w9,#0x1
02ca1014  csinc w9,w9,wzr,gt
02ca1018  sub w9,w9,#0x1
02ca101c  cmp w9,w10
02ca1020  b.cs 0x02ca103c
02ca1024  add x8,x8,w9, UXTW  #0x2
02ca1028  ldp x20,x19,[sp, #0x10]
02ca102c  ldr w0,[x8, #0x20]
02ca1030  ldp x30,x21,[sp], #0x20
02ca1034  ret
02ca1038  bl 0x029f5cfc
02ca103c  bl 0x029f5d04
