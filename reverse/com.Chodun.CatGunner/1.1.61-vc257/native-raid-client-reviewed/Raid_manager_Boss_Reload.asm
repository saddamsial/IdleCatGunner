02c59680  sub sp,sp,#0x60
02c59684  stp x30,x21,[sp, #0x40]
02c59688  stp x20,x19,[sp, #0x50]
02c5968c  adrp x21,0x625c000
02c59690  adrp x20,0x5e5d000
02c59694  mov x19,x0
02c59698  ldrb w8,[x21, #0x1b8]
02c5969c  ldr x20,[x20, #0x338]
02c596a0  tbnz w8,#0x0,0x02c596b8
02c596a4  adrp x0,0x5e5d000
02c596a8  ldr x0,[x0, #0x338]
02c596ac  bl 0x029f5a50
02c596b0  mov w8,#0x1
02c596b4  strb w8,[x21, #0x1b8]
02c596b8  ldr x0,[x20]
02c596bc  ldr w8,[x0, #0xe4]
02c596c0  cbnz w8,0x02c596cc
02c596c4  bl 0x029f5bd0
02c596c8  ldr x0,[x20]
02c596cc  ldr x8,[x0, #0xb8]
02c596d0  ldrb w8,[x8]
02c596d4  cbz w8,0x02c59708
02c596d8  ldr x20,[x19, #0xf0]
02c596dc  add x8,sp,#0x20
02c596e0  mov x0,x19
02c596e4  bl 0x02c59584
02c596e8  cbz x20,0x02c59718
02c596ec  ldp q0,q1,[sp, #0x20]
02c596f0  mov x1,sp
02c596f4  mov x0,x20
02c596f8  stp q0,q1,[sp]
02c596fc  bl 0x02c560ec
02c59700  mov x0,x19
02c59704  bl 0x02c59600
02c59708  ldp x20,x19,[sp, #0x50]
02c5970c  ldp x30,x21,[sp, #0x40]
02c59710  add sp,sp,#0x60
02c59714  ret
02c59718  bl 0x029f5cfc
