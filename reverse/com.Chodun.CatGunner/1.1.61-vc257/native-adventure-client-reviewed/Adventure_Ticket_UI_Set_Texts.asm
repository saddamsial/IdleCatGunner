02c2f804  str x30,[sp, #-0x40]!
02c2f808  stp x24,x23,[sp, #0x10]
02c2f80c  stp x22,x21,[sp, #0x20]
02c2f810  stp x20,x19,[sp, #0x30]
02c2f814  adrp x21,0x625c000
02c2f818  mov x19,x1
02c2f81c  mov x20,x0
02c2f820  ldrb w8,[x21, #0x20]
02c2f824  tbnz w8,#0x0,0x02c2f83c
02c2f828  adrp x0,0x5e59000
02c2f82c  ldr x0,[x0, #0x1c0]
02c2f830  bl 0x029f5a50
02c2f834  mov w8,#0x1
02c2f838  strb w8,[x21, #0x20]
02c2f83c  cbz x20,0x02c2f8c8
02c2f840  ldr x8,[x20, #0x18]
02c2f844  cmp w8,#0x1
02c2f848  b.lt 0x02c2f8c8
02c2f84c  adrp x23,0x5e59000
02c2f850  mov x22,xzr
02c2f854  and x8,x8,#0xffffffff
02c2f858  ldr x23,[x23, #0x1c0]
02c2f85c  add x24,x20,#0x20
02c2f860  cmp x22,w8, UXTW 
02c2f864  b.cs 0x02c2f8dc
02c2f868  ldr x0,[x23]
02c2f86c  ldr x21,[x24, x22, LSL #0x3]
02c2f870  ldr w8,[x0, #0xe4]
02c2f874  cbnz w8,0x02c2f87c
02c2f878  bl 0x029f5bd0
02c2f87c  mov x0,x21
02c2f880  mov x1,xzr
02c2f884  mov x2,xzr
02c2f888  bl 0x057dfa70
02c2f88c  tbz w0,#0x0,0x02c2f8b8
02c2f890  ldr w8,[x20, #0x18]
02c2f894  cmp x22,x8
02c2f898  b.cs 0x02c2f8dc
02c2f89c  ldr x0,[x24, x22, LSL #0x3]
02c2f8a0  cbz x0,0x02c2f8e0
02c2f8a4  ldr x8,[x0]
02c2f8a8  mov x1,x19
02c2f8ac  ldr x9,[x8, #0x558]
02c2f8b0  ldr x2,[x8, #0x560]
02c2f8b4  blr x9
02c2f8b8  ldr w8,[x20, #0x18]
02c2f8bc  add x22,x22,#0x1
02c2f8c0  cmp x22,w8, SXTW 
02c2f8c4  b.lt 0x02c2f860
02c2f8c8  ldp x20,x19,[sp, #0x30]
02c2f8cc  ldp x22,x21,[sp, #0x20]
02c2f8d0  ldp x24,x23,[sp, #0x10]
02c2f8d4  ldr x30,[sp], #0x40
02c2f8d8  ret
02c2f8dc  bl 0x029f5d04
02c2f8e0  bl 0x029f5cfc
