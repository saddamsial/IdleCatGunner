02c566d8  stp x30,x21,[sp, #-0x20]!
02c566dc  stp x20,x19,[sp, #0x10]
02c566e0  adrp x20,0x625c000
02c566e4  adrp x21,0x5e58000
02c566e8  mov x19,x0
02c566ec  ldrb w8,[x20, #0x195]
02c566f0  ldr x21,[x21, #0xef8]
02c566f4  tbnz w8,#0x0,0x02c5670c
02c566f8  adrp x0,0x5e58000
02c566fc  ldr x0,[x0, #0xef8]
02c56700  bl 0x029f5a50
02c56704  mov w8,#0x1
02c56708  strb w8,[x20, #0x195]
02c5670c  ldr x0,[x21]
02c56710  mov w1,#0x8
02c56714  bl 0x029f5b40
02c56718  cbz x0,0x02c567e4
02c5671c  ldr w8,[x0, #0x18]
02c56720  mov x1,x0
02c56724  cbz w8,0x02c567e0
02c56728  adrp x9,0x116e000
02c5672c  cmp w8,#0x1
02c56730  ldr q0,[x9, #0x9f0]
02c56734  str q0,[x1, #0x20]
02c56738  b.eq 0x02c567e0
02c5673c  adrp x9,0x116d000
02c56740  cmp w8,#0x2
02c56744  ldr q0,[x9, #0x6b0]
02c56748  str q0,[x1, #0x30]
02c5674c  b.ls 0x02c567e0
02c56750  adrp x9,0x116c000
02c56754  cmp w8,#0x3
02c56758  ldr q0,[x9, #0x600]
02c5675c  str q0,[x1, #0x40]
02c56760  b.eq 0x02c567e0
02c56764  adrp x9,0x116c000
02c56768  cmp w8,#0x4
02c5676c  ldr q0,[x9, #0xfb0]
02c56770  str q0,[x1, #0x50]
02c56774  b.ls 0x02c567e0
02c56778  adrp x9,0x116d000
02c5677c  cmp w8,#0x5
02c56780  ldr q0,[x9, #0x6c0]
02c56784  str q0,[x1, #0x60]
02c56788  b.eq 0x02c567e0
02c5678c  adrp x9,0x116f000
02c56790  cmp w8,#0x6
02c56794  ldr q0,[x9, #0x250]
02c56798  str q0,[x1, #0x70]
02c5679c  b.ls 0x02c567e0
02c567a0  adrp x9,0x116d000
02c567a4  cmp w8,#0x7
02c567a8  ldr q0,[x9, #0x150]
02c567ac  str q0,[x1, #0x80]
02c567b0  b.eq 0x02c567e0
02c567b4  adrp x8,0x116d000
02c567b8  mov x0,x19
02c567bc  ldr q0,[x8, #0x6d0]
02c567c0  str q0,[x1, #0x90]
02c567c4  str x1,[x0, #0x60]!
02c567c8  bl 0x029f59f4
02c567cc  mov x0,x19
02c567d0  ldp x20,x19,[sp, #0x10]
02c567d4  mov x1,xzr
02c567d8  ldp x30,x21,[sp], #0x20
02c567dc  b 0x057e2ee0
02c567e0  bl 0x029f5d04
02c567e4  bl 0x029f5cfc
