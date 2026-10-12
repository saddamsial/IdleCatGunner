02c51fc4  str x30,[sp, #-0x20]!
02c51fc8  stp x20,x19,[sp, #0x10]
02c51fcc  adrp x20,0x625c000
02c51fd0  mov x19,x0
02c51fd4  ldrb w8,[x20, #0x1ca]
02c51fd8  tbnz w8,#0x0,0x02c51ff0
02c51fdc  adrp x0,0x5e59000
02c51fe0  ldr x0,[x0, #0x1c0]
02c51fe4  bl 0x029f5a50
02c51fe8  mov w8,#0x1
02c51fec  strb w8,[x20, #0x1ca]
02c51ff0  mov x0,x19
02c51ff4  bl 0x02c444d8
02c51ff8  tbnz w0,#0x0,0x02c52048
02c51ffc  adrp x8,0x5e59000
02c52000  ldr x8,[x8, #0x1c0]
02c52004  ldr x20,[x19, #0x110]
02c52008  ldr x0,[x8]
02c5200c  ldr w8,[x0, #0xe4]
02c52010  cbnz w8,0x02c52018
02c52014  bl 0x029f5bd0
02c52018  mov x0,x20
02c5201c  mov x1,xzr
02c52020  mov x2,xzr
02c52024  bl 0x057dfa70
02c52028  tbz w0,#0x0,0x02c52048
02c5202c  ldr x0,[x19, #0x110]
02c52030  cbz x0,0x02c52054
02c52034  ldp x20,x19,[sp, #0x10]
02c52038  mov w1,#0x1
02c5203c  mov x2,xzr
02c52040  ldr x30,[sp], #0x20
02c52044  b 0x057dff3c
02c52048  ldp x20,x19,[sp, #0x10]
02c5204c  ldr x30,[sp], #0x20
02c52050  ret
02c52054  bl 0x029f5cfc
