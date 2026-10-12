02c76818  sub sp,sp,#0x60
02c7681c  str x30,[sp, #0x30]
02c76820  stp x22,x21,[sp, #0x40]
02c76824  stp x20,x19,[sp, #0x50]
02c76828  adrp x20,0x625c000
02c7682c  mov x19,x0
02c76830  ldrb w8,[x20, #0x2f4]
02c76834  tbnz w8,#0x0,0x02c76870
02c76838  adrp x0,0x5e63000
02c7683c  ldr x0,[x0, #0xa90]
02c76840  bl 0x029f5a50
02c76844  adrp x0,0x5e63000
02c76848  ldr x0,[x0, #0xa98]
02c7684c  bl 0x029f5a50
02c76850  adrp x0,0x5e63000
02c76854  ldr x0,[x0, #0xaa0]
02c76858  bl 0x029f5a50
02c7685c  adrp x0,0x5e63000
02c76860  ldr x0,[x0, #0xab0]
02c76864  bl 0x029f5a50
02c76868  mov w8,#0x1
02c7686c  strb w8,[x20, #0x2f4]
02c76870  mov x20,x19
02c76874  stp xzr,xzr,[sp, #0x18]
02c76878  ldr x1,[x20, #0x48]!
02c7687c  str xzr,[sp, #0x28]
02c76880  cbz x1,0x02c768a0
02c76884  mov x0,x19
02c76888  mov x2,xzr
02c7688c  bl 0x057e237c
02c76890  mov x0,x20
02c76894  mov x1,xzr
02c76898  str xzr,[x19, #0x48]
02c7689c  bl 0x029f59f4
02c768a0  ldr x0,[x19, #0x40]
02c768a4  mov x8,#-0x1
02c768a8  stp x8,x8,[x19, #0x50]
02c768ac  cbz x0,0x02c76930
02c768b0  adrp x8,0x5e63000
02c768b4  adrp x20,0x5e63000
02c768b8  adrp x21,0x5e63000
02c768bc  ldr x8,[x8, #0xab0]
02c768c0  ldr x20,[x20, #0xa98]
02c768c4  ldr x21,[x21, #0xa90]
02c768c8  add x22,sp,#0x18
02c768cc  ldr x1,[x8]
02c768d0  add x8,sp,#0x18
02c768d4  bl 0x0452d690
02c768d8  stp xzr,x22,[sp, #0x8]
02c768dc  ldr x1,[x20]
02c768e0  add x0,sp,#0x18
02c768e4  bl 0x03fa4e10
02c768e8  tbz w0,#0x0,0x02c76904
02c768ec  ldr x0,[sp, #0x28]
02c768f0  cbz x0,0x02c7692c
02c768f4  ldrb w8,[x0, #0x79]
02c768f8  cbz w8,0x02c768dc
02c768fc  bl 0x02c70d14
02c76900  b 0x02c768dc
02c76904  ldr x1,[x21]
02c76908  add x0,sp,#0x18
02c7690c  bl 0x03fa4e0c
02c76910  mov x0,x19
02c76914  bl 0x02c75ec8
02c76918  ldp x20,x19,[sp, #0x50]
02c7691c  ldr x30,[sp, #0x30]
02c76920  ldp x22,x21,[sp, #0x40]
02c76924  add sp,sp,#0x60
02c76928  ret
02c7692c  bl 0x029f5cfc
02c76930  bl 0x029f5cfc
