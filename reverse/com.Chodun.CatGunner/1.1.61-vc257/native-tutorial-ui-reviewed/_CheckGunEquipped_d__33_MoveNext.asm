02cafda8  str x30,[sp, #-0x20]!
02cafdac  stp x20,x19,[sp, #0x10]
02cafdb0  adrp x20,0x625c000
02cafdb4  mov x19,x0
02cafdb8  ldrb w8,[x20, #0x540]
02cafdbc  tbnz w8,#0x0,0x02cafde0
02cafdc0  adrp x0,0x5e5d000
02cafdc4  ldr x0,[x0, #0xd40]
02cafdc8  bl 0x029f5a50
02cafdcc  adrp x0,0x5e5a000
02cafdd0  ldr x0,[x0, #0x710]
02cafdd4  bl 0x029f5a50
02cafdd8  mov w8,#0x1
02cafddc  strb w8,[x20, #0x540]
02cafde0  ldr w8,[x19, #0x10]
02cafde4  cmp w8,#0x2
02cafde8  b.cs 0x02cafe88
02cafdec  ldr x20,[x19, #0x20]
02cafdf0  mov w8,#0xffffffff
02cafdf4  str w8,[x19, #0x10]
02cafdf8  cbz x20,0x02cafed8
02cafdfc  ldr w8,[x20, #0x60]
02cafe00  cmp w8,#0x4
02cafe04  b.ne 0x02cafe88
02cafe08  adrp x8,0x5e5d000
02cafe0c  ldr x8,[x8, #0xd40]
02cafe10  ldr x8,[x8]
02cafe14  ldr x8,[x8, #0xb8]
02cafe18  ldr x8,[x8]
02cafe1c  cbz x8,0x02cafed8
02cafe20  ldr x9,[x8, #0x28]
02cafe24  cbz x9,0x02cafed8
02cafe28  ldr w10,[x9, #0x18]
02cafe2c  cbz w10,0x02cafedc
02cafe30  ldr w8,[x9, #0x20]
02cafe34  cmp w10,#0x2
02cafe38  b.lt 0x02cafe58
02cafe3c  add x9,x9,#0x24
02cafe40  sub w10,w10,#0x1
02cafe44  ldr w11,[x9], #0x4
02cafe48  cmn w11,#0x1
02cafe4c  b.ne 0x02cafe5c
02cafe50  subs w10,w10,#0x1
02cafe54  b.ne 0x02cafe44
02cafe58  cbz w8,0x02cafe98
02cafe5c  ldr x0,[x20, #0x40]
02cafe60  cbz x0,0x02cafed8
02cafe64  mov x1,xzr
02cafe68  bl 0x057dc1c8
02cafe6c  cbz x0,0x02cafed8
02cafe70  mov w1,wzr
02cafe74  mov x2,xzr
02cafe78  bl 0x057dff3c
02cafe7c  mov x0,x20
02cafe80  mov w1,#0x5
02cafe84  bl 0x02caf65c
02cafe88  mov w0,wzr
02cafe8c  ldp x20,x19,[sp, #0x10]
02cafe90  ldr x30,[sp], #0x20
02cafe94  ret
02cafe98  adrp x8,0x5e5a000
02cafe9c  ldr x8,[x8, #0x710]
02cafea0  ldr x0,[x8]
02cafea4  bl 0x029f5cec
02cafea8  adrp x8,0x116c000
02cafeac  mov x1,xzr
02cafeb0  mov x20,x0
02cafeb4  ldr s0,[x8, #0x60]
02cafeb8  bl 0x057e84e0
02cafebc  str x20,[x19, #0x18]!
02cafec0  mov x0,x19
02cafec4  mov x1,x20
02cafec8  bl 0x029f59f4
02cafecc  mov w0,#0x1
02cafed0  stur w0,[x19, #-0x8]
02cafed4  b 0x02cafe8c
02cafed8  bl 0x029f5cfc
02cafedc  bl 0x029f5d04
