02c33280  stp x30,x25,[sp, #-0x40]!
02c33284  stp x24,x23,[sp, #0x10]
02c33288  stp x22,x21,[sp, #0x20]
02c3328c  stp x20,x19,[sp, #0x30]
02c33290  adrp x20,0x625c000
02c33294  mov x19,x0
02c33298  ldrb w8,[x20, #0x4a]
02c3329c  tbnz w8,#0x0,0x02c3332c
02c332a0  adrp x0,0x5e63000
02c332a4  ldr x0,[x0, #0xe0]
02c332a8  bl 0x029f5a50
02c332ac  adrp x0,0x5e5d000
02c332b0  ldr x0,[x0, #0xd28]
02c332b4  bl 0x029f5a50
02c332b8  adrp x0,0x5e63000
02c332bc  ldr x0,[x0, #0xe8]
02c332c0  bl 0x029f5a50
02c332c4  adrp x0,0x5e62000
02c332c8  ldr x0,[x0, #0xfb8]
02c332cc  bl 0x029f5a50
02c332d0  adrp x0,0x5e63000
02c332d4  ldr x0,[x0, #0xf0]
02c332d8  bl 0x029f5a50
02c332dc  adrp x0,0x5e63000
02c332e0  ldr x0,[x0, #0xf8]
02c332e4  bl 0x029f5a50
02c332e8  adrp x0,0x5e62000
02c332ec  ldr x0,[x0, #0xfc8]
02c332f0  bl 0x029f5a50
02c332f4  adrp x0,0x5e62000
02c332f8  ldr x0,[x0, #0xfd0]
02c332fc  bl 0x029f5a50
02c33300  adrp x0,0x5e63000
02c33304  ldr x0,[x0, #0x100]
02c33308  bl 0x029f5a50
02c3330c  adrp x0,0x5e62000
02c33310  ldr x0,[x0, #0xfd8]
02c33314  bl 0x029f5a50
02c33318  adrp x0,0x5e5d000
02c3331c  ldr x0,[x0, #0x4d0]
02c33320  bl 0x029f5a50
02c33324  mov w8,#0x1
02c33328  strb w8,[x20, #0x4a]
02c3332c  ldr x8,[x19, #0xc8]
02c33330  cbz x8,0x02c33508
02c33334  adrp x20,0x5e5d000
02c33338  ldr x20,[x20, #0xd28]
02c3333c  ldr w9,[x8, #0x1c]
02c33340  ldr x0,[x20]
02c33344  add w9,w9,#0x1
02c33348  stp wzr,w9,[x8, #0x18]
02c3334c  ldr w10,[x0, #0xe4]
02c33350  cbnz w10,0x02c3335c
02c33354  bl 0x029f5bd0
02c33358  ldr x0,[x20]
02c3335c  ldr x8,[x0, #0xb8]
02c33360  ldr x0,[x8, #0x10]
02c33364  cbz x0,0x02c33508
02c33368  adrp x21,0x5e5d000
02c3336c  adrp x22,0x5e62000
02c33370  adrp x20,0x5e62000
02c33374  ldr x21,[x21, #0x4d0]
02c33378  ldr x22,[x22, #0xfd8]
02c3337c  ldr x20,[x20, #0xfc8]
02c33380  mov x1,xzr
02c33384  bl 0x02c2e9bc
02c33388  ldr x8,[x21]
02c3338c  str w0,[x19, #0xd0]
02c33390  ldr w9,[x8, #0xe4]
02c33394  cbnz w9,0x02c333a4
02c33398  mov x0,x8
02c3339c  bl 0x029f5bd0
02c333a0  ldr x8,[x21]
02c333a4  ldr x8,[x8, #0xb8]
02c333a8  ldr x0,[x22]
02c333ac  ldr x21,[x8, #0x28]
02c333b0  bl 0x029f5cec
02c333b4  ldr x1,[x20]
02c333b8  mov x20,x0
02c333bc  bl 0x045c0d0c
02c333c0  cbz x21,0x02c33508
02c333c4  adrp x23,0x5e62000
02c333c8  ldr x8,[x21, #0x30]
02c333cc  ldr x23,[x23, #0xfb8]
02c333d0  cbz x8,0x02c3346c
02c333d4  mov w22,wzr
02c333d8  ldr w8,[x8, #0x18]
02c333dc  cmp w22,w8
02c333e0  b.ge 0x02c3346c
02c333e4  mov x0,x21
02c333e8  mov w1,w22
02c333ec  mov x2,xzr
02c333f0  bl 0x02c7cd4c
02c333f4  tbz w0,#0x0,0x02c3345c
02c333f8  mov w0,w22
02c333fc  mov x1,xzr
02c33400  bl 0x02c2f5bc
02c33404  cbz x20,0x02c33508
02c33408  ldr w10,[x20, #0x1c]
02c3340c  ldr x8,[x20, #0x10]
02c33410  ldr x9,[x23]
02c33414  add w10,w10,#0x1
02c33418  str w10,[x20, #0x1c]
02c3341c  cbz x8,0x02c33508
02c33420  ldrsw x10,[x20, #0x18]
02c33424  ldr w11,[x8, #0x18]
02c33428  mov x1,x0
02c3342c  cmp w10,w11
02c33430  b.cs 0x02c33448
02c33434  add x8,x8,x10, LSL #0x3
02c33438  add w9,w10,#0x1
02c3343c  str w9,[x20, #0x18]
02c33440  str x1,[x8, #0x20]
02c33444  b 0x02c3345c
02c33448  ldr x8,[x9, #0x20]
02c3344c  mov x0,x20
02c33450  ldr x8,[x8, #0xc0]
02c33454  ldr x2,[x8, #0x70]
02c33458  bl 0x045c1598
02c3345c  ldr x8,[x21, #0x30]
02c33460  add w22,w22,#0x1
02c33464  cbnz x8,0x02c333d8
02c33468  b 0x02c33508
02c3346c  ldr x8,[x21, #0x38]
02c33470  cbz x8,0x02c3350c
02c33474  mov w22,wzr
02c33478  ldr w8,[x8, #0x18]
02c3347c  cmp w22,w8
02c33480  b.ge 0x02c3350c
02c33484  mov x0,x21
02c33488  mov w1,w22
02c3348c  mov x2,xzr
02c33490  bl 0x02c7cce0
02c33494  tbz w0,#0x0,0x02c334fc
02c33498  mov w0,w22
02c3349c  mov x1,xzr
02c334a0  bl 0x02c2f5b4
02c334a4  cbz x20,0x02c33508
02c334a8  ldr w10,[x20, #0x1c]
02c334ac  ldr x8,[x20, #0x10]
02c334b0  ldr x9,[x23]
02c334b4  add w10,w10,#0x1
02c334b8  str w10,[x20, #0x1c]
02c334bc  cbz x8,0x02c33508
02c334c0  ldrsw x10,[x20, #0x18]
02c334c4  ldr w11,[x8, #0x18]
02c334c8  mov x1,x0
02c334cc  cmp w10,w11
02c334d0  b.cs 0x02c334e8
02c334d4  add x8,x8,x10, LSL #0x3
02c334d8  add w9,w10,#0x1
02c334dc  str w9,[x20, #0x18]
02c334e0  str x1,[x8, #0x20]
02c334e4  b 0x02c334fc
02c334e8  ldr x8,[x9, #0x20]
02c334ec  mov x0,x20
02c334f0  ldr x8,[x8, #0xc0]
02c334f4  ldr x2,[x8, #0x70]
02c334f8  bl 0x045c1598
02c334fc  ldr x8,[x21, #0x38]
02c33500  add w22,w22,#0x1
02c33504  cbnz x8,0x02c33478
02c33508  bl 0x029f5cfc
02c3350c  adrp x8,0x5e63000
02c33510  adrp x21,0x5e63000
02c33514  ldr x8,[x8, #0xe8]
02c33518  ldr x21,[x21, #0xe0]
02c3351c  ldr x0,[x8]
02c33520  bl 0x029f5cec
02c33524  ldr x2,[x21]
02c33528  mov x1,x19
02c3352c  mov x3,xzr
02c33530  mov x21,x0
02c33534  bl 0x03cfb7cc
02c33538  cbz x20,0x02c33508
02c3353c  adrp x8,0x5e63000
02c33540  mov x0,x20
02c33544  mov x1,x21
02c33548  ldr x8,[x8, #0xf8]
02c3354c  ldr x2,[x8]
02c33550  bl 0x045c2f94
02c33554  ldr w8,[x19, #0xd0]
02c33558  ldr w9,[x20, #0x18]
02c3355c  cmp w8,w9
02c33560  csel w24,w8,w9,lt
02c33564  cmp w24,#0x1
02c33568  b.lt 0x02c335f0
02c3356c  adrp x25,0x5e63000
02c33570  mov w21,wzr
02c33574  ldr x25,[x25, #0x100]
02c33578  ldr x2,[x25]
02c3357c  ldr x22,[x19, #0xc8]
02c33580  mov x0,x20
02c33584  mov w1,w21
02c33588  bl 0x045c12a4
02c3358c  cbz x22,0x02c33508
02c33590  ldr w10,[x22, #0x1c]
02c33594  ldr x8,[x22, #0x10]
02c33598  ldr x9,[x23]
02c3359c  add w10,w10,#0x1
02c335a0  str w10,[x22, #0x1c]
02c335a4  cbz x8,0x02c33508
02c335a8  ldrsw x10,[x22, #0x18]
02c335ac  ldr w11,[x8, #0x18]
02c335b0  mov x1,x0
02c335b4  cmp w10,w11
02c335b8  b.cs 0x02c335d0
02c335bc  add x8,x8,x10, LSL #0x3
02c335c0  add w9,w10,#0x1
02c335c4  str w9,[x22, #0x18]
02c335c8  str x1,[x8, #0x20]
02c335cc  b 0x02c335e4
02c335d0  ldr x8,[x9, #0x20]
02c335d4  mov x0,x22
02c335d8  ldr x8,[x8, #0xc0]
02c335dc  ldr x2,[x8, #0x70]
02c335e0  bl 0x045c1598
02c335e4  add w21,w21,#0x1
02c335e8  cmp w24,w21
02c335ec  b.ne 0x02c33578
02c335f0  ldp x20,x19,[sp, #0x30]
02c335f4  ldp x22,x21,[sp, #0x20]
02c335f8  ldp x24,x23,[sp, #0x10]
02c335fc  ldp x30,x25,[sp], #0x40
02c33600  ret
