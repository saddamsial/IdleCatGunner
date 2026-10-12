02c4e810  sub sp,sp,#0x30
02c4e814  stp x30,x21,[sp, #0x10]
02c4e818  stp x20,x19,[sp, #0x20]
02c4e81c  adrp x20,0x625c000
02c4e820  mov x19,x0
02c4e824  ldrb w8,[x20, #0x14c]
02c4e828  tbnz w8,#0x0,0x02c4e840
02c4e82c  adrp x0,0x5e5d000
02c4e830  ldr x0,[x0, #0x920]
02c4e834  bl 0x029f5a50
02c4e838  mov w8,#0x1
02c4e83c  strb w8,[x20, #0x14c]
02c4e840  ldr x20,[x19, #0x148]
02c4e844  add x0,x19,#0x13c
02c4e848  mov x1,xzr
02c4e84c  str wzr,[sp, #0xc]
02c4e850  bl 0x0484e6a4
02c4e854  cbz x20,0x02c4e920
02c4e858  ldr x8,[x20]
02c4e85c  mov x1,x0
02c4e860  mov x0,x20
02c4e864  ldr x9,[x8, #0x558]
02c4e868  ldr x2,[x8, #0x560]
02c4e86c  blr x9
02c4e870  ldr w8,[x19, #0x13c]
02c4e874  ldr x20,[x19, #0x150]
02c4e878  add x0,sp,#0xc
02c4e87c  mov x1,xzr
02c4e880  lsl w8,w8,#0x1
02c4e884  str w8,[sp, #0xc]
02c4e888  bl 0x0484e6a4
02c4e88c  cbz x20,0x02c4e920
02c4e890  ldr x8,[x20]
02c4e894  adrp x21,0x5e5d000
02c4e898  mov x1,x0
02c4e89c  ldr x21,[x21, #0x920]
02c4e8a0  mov x0,x20
02c4e8a4  ldr x9,[x8, #0x558]
02c4e8a8  ldr x2,[x8, #0x560]
02c4e8ac  blr x9
02c4e8b0  ldr x0,[x21]
02c4e8b4  ldr w8,[x0, #0xe4]
02c4e8b8  cbnz w8,0x02c4e8c0
02c4e8bc  bl 0x029f5bd0
02c4e8c0  mov x0,xzr
02c4e8c4  bl 0x02c92704
02c4e8c8  ldr x8,[x19, #0x158]
02c4e8cc  cbz x8,0x02c4e920
02c4e8d0  eor w21,w0,#0x1
02c4e8d4  mov w20,w0
02c4e8d8  mov x0,x8
02c4e8dc  and w1,w21,#0x1
02c4e8e0  mov x2,xzr
02c4e8e4  bl 0x057dff3c
02c4e8e8  ldr x0,[x19, #0x160]
02c4e8ec  cbz x0,0x02c4e920
02c4e8f0  and w1,w20,#0x1
02c4e8f4  mov x2,xzr
02c4e8f8  bl 0x057dff3c
02c4e8fc  ldr x0,[x19, #0x168]
02c4e900  cbz x0,0x02c4e920
02c4e904  and w1,w21,#0x1
02c4e908  mov x2,xzr
02c4e90c  bl 0x057dff3c
02c4e910  ldp x20,x19,[sp, #0x20]
02c4e914  ldp x30,x21,[sp, #0x10]
02c4e918  add sp,sp,#0x30
02c4e91c  ret
02c4e920  bl 0x029f5cfc
