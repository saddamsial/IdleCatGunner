02ca1fb0  str x30,[sp, #-0x20]!
02ca1fb4  stp x20,x19,[sp, #0x10]
02ca1fb8  adrp x19,0x625c000
02ca1fbc  adrp x20,0x5e5e000
02ca1fc0  ldrb w8,[x19, #0x48c]
02ca1fc4  ldr x20,[x20, #0x3e0]
02ca1fc8  tbnz w8,#0x0,0x02ca1fec
02ca1fcc  adrp x0,0x5e59000
02ca1fd0  ldr x0,[x0, #0x1c0]
02ca1fd4  bl 0x029f5a50
02ca1fd8  adrp x0,0x5e5e000
02ca1fdc  ldr x0,[x0, #0x3e0]
02ca1fe0  bl 0x029f5a50
02ca1fe4  mov w8,#0x1
02ca1fe8  strb w8,[x19, #0x48c]
02ca1fec  ldr x0,[x20]
02ca1ff0  adrp x19,0x5e59000
02ca1ff4  ldr w8,[x0, #0xe4]
02ca1ff8  ldr x19,[x19, #0x1c0]
02ca1ffc  cbnz w8,0x02ca2008
02ca2000  bl 0x029f5bd0
02ca2004  ldr x0,[x20]
02ca2008  ldr x8,[x19]
02ca200c  ldr x9,[x0, #0xb8]
02ca2010  ldr w10,[x8, #0xe4]
02ca2014  ldr x19,[x9]
02ca2018  cbnz w10,0x02ca2024
02ca201c  mov x0,x8
02ca2020  bl 0x029f5bd0
02ca2024  mov x0,x19
02ca2028  mov x1,xzr
02ca202c  mov x2,xzr
02ca2030  bl 0x057e14b4
02ca2034  tbz w0,#0x0,0x02ca2044
02ca2038  ldp x20,x19,[sp, #0x10]
02ca203c  ldr x30,[sp], #0x20
02ca2040  ret
02ca2044  ldr x0,[x20]
02ca2048  ldr w8,[x0, #0xe4]
02ca204c  cbnz w8,0x02ca2058
02ca2050  bl 0x029f5bd0
02ca2054  ldr x0,[x20]
02ca2058  ldr x8,[x0, #0xb8]
02ca205c  ldr x0,[x8]
02ca2060  cbz x0,0x02ca2070
02ca2064  ldp x20,x19,[sp, #0x10]
02ca2068  ldr x30,[sp], #0x20
02ca206c  b 0x02ca0748
02ca2070  bl 0x029f5cfc
