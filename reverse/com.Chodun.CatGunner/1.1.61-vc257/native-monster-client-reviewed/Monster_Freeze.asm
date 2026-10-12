02c4cdb8  str x30,[sp, #-0x20]!
02c4cdbc  stp x20,x19,[sp, #0x10]
02c4cdc0  mov x20,x0
02c4cdc4  mov x19,x0
02c4cdc8  ldr x1,[x20, #0x70]!
02c4cdcc  cbz x1,0x02c4cdec
02c4cdd0  mov x0,x19
02c4cdd4  mov x2,xzr
02c4cdd8  bl 0x057e237c
02c4cddc  mov x0,x20
02c4cde0  mov x1,xzr
02c4cde4  str xzr,[x19, #0x70]
02c4cde8  bl 0x029f59f4
02c4cdec  adrp x20,0x625b000
02c4cdf0  ldr x19,[x19, #0x28]
02c4cdf4  ldrb w8,[x20, #0x26f]
02c4cdf8  cbnz w8,0x02c4ce10
02c4cdfc  adrp x0,0x5e58000
02c4ce00  ldr x0,[x0, #0xbf8]
02c4ce04  bl 0x029f5a50
02c4ce08  mov w8,#0x1
02c4ce0c  strb w8,[x20, #0x26f]
02c4ce10  cbz x19,0x02c4ce40
02c4ce14  adrp x8,0x5e58000
02c4ce18  mov x0,x19
02c4ce1c  mov x1,xzr
02c4ce20  ldr x8,[x8, #0xbf8]
02c4ce24  ldp x20,x19,[sp, #0x10]
02c4ce28  ldr x8,[x8]
02c4ce2c  ldr x8,[x8, #0xb8]
02c4ce30  ldp s0,s1,[x8]
02c4ce34  ldr s2,[x8, #0x8]
02c4ce38  ldr x30,[sp], #0x20
02c4ce3c  b 0x0586b344
02c4ce40  bl 0x029f5cfc
