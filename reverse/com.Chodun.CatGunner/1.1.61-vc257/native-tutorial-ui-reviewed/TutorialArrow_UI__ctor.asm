02caeb40  str x30,[sp, #-0x20]!
02caeb44  stp x20,x19,[sp, #0x10]
02caeb48  adrp x8,0x116f000
02caeb4c  adrp x20,0x625b000
02caeb50  mov x19,x0
02caeb54  ldr d0,[x8, #0xf50]
02caeb58  ldrb w8,[x20, #0x271]
02caeb5c  str d0,[x0, #0x30]
02caeb60  cbnz w8,0x02caeb78
02caeb64  adrp x0,0x5e59000
02caeb68  ldr x0,[x0, #0x608]
02caeb6c  bl 0x029f5a50
02caeb70  mov w8,#0x1
02caeb74  strb w8,[x20, #0x271]
02caeb78  adrp x8,0x5e59000
02caeb7c  adrp x9,0x1170000
02caeb80  mov x0,x19
02caeb84  ldr x8,[x8, #0x608]
02caeb88  ldr d1,[x9, #0xb88]
02caeb8c  mov x1,xzr
02caeb90  ldr x8,[x8]
02caeb94  ldr x8,[x8, #0xb8]
02caeb98  ldr d0,[x8]
02caeb9c  stp d0,d1,[x19, #0x38]
02caeba0  ldp x20,x19,[sp, #0x10]
02caeba4  ldr x30,[sp], #0x20
02caeba8  b 0x057e2ee0
