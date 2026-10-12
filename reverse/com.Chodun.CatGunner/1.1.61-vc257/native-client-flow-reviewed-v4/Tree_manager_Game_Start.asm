02caac18  str x30,[sp, #-0x30]!
02caac1c  stp x22,x21,[sp, #0x10]
02caac20  stp x20,x19,[sp, #0x20]
02caac24  adrp x20,0x625c000
02caac28  mov x19,x0
02caac2c  ldrb w8,[x20, #0x51d]
02caac30  tbnz w8,#0x0,0x02caac90
02caac34  adrp x0,0x5e5d000
02caac38  ldr x0,[x0, #0x540]
02caac3c  bl 0x029f5a50
02caac40  adrp x0,0x5e5d000
02caac44  ldr x0,[x0, #0x5b0]
02caac48  bl 0x029f5a50
02caac4c  adrp x0,0x5e5d000
02caac50  ldr x0,[x0, #0xfa0]
02caac54  bl 0x029f5a50
02caac58  adrp x0,0x5e5d000
02caac5c  ldr x0,[x0, #0x338]
02caac60  bl 0x029f5a50
02caac64  adrp x0,0x5e59000
02caac68  ldr x0,[x0, #0x1c0]
02caac6c  bl 0x029f5a50
02caac70  adrp x0,0x5e62000
02caac74  ldr x0,[x0, #0x650]
02caac78  bl 0x029f5a50
02caac7c  adrp x0,0x5e5d000
02caac80  ldr x0,[x0, #0x368]
02caac84  bl 0x029f5a50
02caac88  mov w8,#0x1
02caac8c  strb w8,[x20, #0x51d]
02caac90  ldp w8,w10,[x19, #0x28]
02caac94  mov w9,#0xa
02caac98  adrp x20,0x5e5d000
02caac9c  madd w9,w8,w9,w10
02caaca0  ldr w8,[x19, #0x34]
02caaca4  ldr x20,[x20, #0x540]
02caaca8  cmp w9,w8
02caacac  b.ne 0x02caacb8
02caacb0  ldr w8,[x19, #0x40]
02caacb4  b 0x02caacc4
02caacb8  mov w8,wzr
02caacbc  str w9,[x19, #0x34]
02caacc0  stur xzr,[x19, #0x3c]
02caacc4  add w8,w8,#0x1
02caacc8  mov x0,xzr
02caaccc  str w8,[x19, #0x40]
02caacd0  bl 0x057e85b4
02caacd4  ldr x0,[x20]
02caacd8  str s0,[x19, #0x38]
02caacdc  ldr w8,[x0, #0xe4]
02caace0  cbnz w8,0x02caace8
02caace4  bl 0x029f5bd0
02caace8  mov x0,xzr
02caacec  bl 0x02b96ed4
02caacf0  adrp x21,0x5e5d000
02caacf4  adrp x20,0x5e5d000
02caacf8  ldr x21,[x21, #0x338]
02caacfc  ldr x0,[x21]
02caad00  ldr w8,[x0, #0xe4]
02caad04  ldr x20,[x20, #0x368]
02caad08  cbnz w8,0x02caad14
02caad0c  bl 0x029f5bd0
02caad10  ldr x0,[x21]
02caad14  ldr x8,[x20]
02caad18  ldr x9,[x0, #0xb8]
02caad1c  ldr x8,[x8, #0xb8]
02caad20  ldr x0,[x8]
02caad24  mov w8,#0x1
02caad28  strb w8,[x9]
02caad2c  cbz x0,0x02caaecc
02caad30  adrp x20,0x5e5d000
02caad34  mov w1,wzr
02caad38  mov x2,xzr
02caad3c  ldr x20,[x20, #0x5b0]
02caad40  bl 0x02c2a560
02caad44  mov x0,x19
02caad48  bl 0x02cacf84
02caad4c  ldr x8,[x20]
02caad50  ldr x8,[x8, #0xb8]
02caad54  ldr x0,[x8, #0x8]
02caad58  cbz x0,0x02caaecc
02caad5c  ldp s1,s2,[x19, #0xd4]
02caad60  mov x1,xzr
02caad64  ldr s0,[x19, #0xd0]
02caad68  bl 0x02c44748
02caad6c  ldr x8,[x20]
02caad70  ldr x8,[x8, #0xb8]
02caad74  ldr x0,[x8, #0x8]
02caad78  cbz x0,0x02caaecc
02caad7c  mov x1,xzr
02caad80  bl 0x02c43744
02caad84  ldr x0,[x19, #0xa0]
02caad88  cbz x0,0x02caaecc
02caad8c  ldp w1,w2,[x19, #0x28]
02caad90  mov x3,xzr
02caad94  bl 0x02c7a338
02caad98  ldr x0,[x19, #0xa0]
02caad9c  cbz x0,0x02caaecc
02caada0  movi d0,#0x0
02caada4  mov x1,xzr
02caada8  bl 0x02c7a4f0
02caadac  ldr x0,[x19, #0xb8]
02caadb0  cbz x0,0x02caaecc
02caadb4  ldp w8,w10,[x19, #0x28]
02caadb8  mov w9,#0xa
02caadbc  adrp x22,0x5e5d000
02caadc0  adrp x21,0x5e59000
02caadc4  mov x2,xzr
02caadc8  madd w8,w8,w9,w10
02caadcc  ldr w9,[x19, #0x30]
02caadd0  ldr x22,[x22, #0xfa0]
02caadd4  ldr x21,[x21, #0x1c0]
02caadd8  cmp w8,w9
02caaddc  cset w1,lt
02caade0  bl 0x057dff3c
02caade4  ldr x8,[x22]
02caade8  ldr x0,[x21]
02caadec  ldr x8,[x8, #0xb8]
02caadf0  ldr w9,[x0, #0xe4]
02caadf4  ldr x20,[x8]
02caadf8  cbnz w9,0x02caae00
02caadfc  bl 0x029f5bd0
02caae00  mov x0,x20
02caae04  mov x1,xzr
02caae08  mov x2,xzr
02caae0c  bl 0x057dfa70
02caae10  tbz w0,#0x0,0x02caae2c
02caae14  ldr x8,[x22]
02caae18  ldr x8,[x8, #0xb8]
02caae1c  ldr x0,[x8]
02caae20  cbz x0,0x02caaecc
02caae24  mov x1,xzr
02caae28  bl 0x02ba1e20
02caae2c  adrp x22,0x5e62000
02caae30  ldr x22,[x22, #0x650]
02caae34  ldr x0,[x21]
02caae38  ldr x8,[x22]
02caae3c  ldr w9,[x0, #0xe4]
02caae40  ldr x8,[x8, #0xb8]
02caae44  ldr x20,[x8]
02caae48  cbnz w9,0x02caae50
02caae4c  bl 0x029f5bd0
02caae50  mov x0,x20
02caae54  mov x1,xzr
02caae58  mov x2,xzr
02caae5c  bl 0x057dfa70
02caae60  tbz w0,#0x0,0x02caae7c
02caae64  ldr x8,[x22]
02caae68  ldr x8,[x8, #0xb8]
02caae6c  ldr x0,[x8]
02caae70  cbz x0,0x02caaecc
02caae74  mov x1,xzr
02caae78  bl 0x02c8ee2c
02caae7c  ldr x0,[x19, #0x68]
02caae80  cbz x0,0x02caaecc
02caae84  ldrb w1,[x19, #0x50]
02caae88  mov x2,xzr
02caae8c  bl 0x057dff3c
02caae90  mov x0,x19
02caae94  strb wzr,[x19, #0x50]
02caae98  bl 0x02cad070
02caae9c  mov x20,x19
02caaea0  mov x1,x0
02caaea4  str x0,[x20, #0xc0]!
02caaea8  mov x0,x20
02caaeac  bl 0x029f59f4
02caaeb0  ldr x1,[x20]
02caaeb4  mov x0,x19
02caaeb8  mov x2,xzr
02caaebc  ldp x20,x19,[sp, #0x20]
02caaec0  ldp x22,x21,[sp, #0x10]
02caaec4  ldr x30,[sp], #0x30
02caaec8  b 0x057e2120
02caaecc  bl 0x029f5cfc
