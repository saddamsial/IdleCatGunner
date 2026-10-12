02c70fb0  str x30,[sp, #-0x30]!
02c70fb4  stp x22,x21,[sp, #0x10]
02c70fb8  stp x20,x19,[sp, #0x20]
02c70fbc  adrp x22,0x625c000
02c70fc0  adrp x21,0x5e59000
02c70fc4  mov w20,w1
02c70fc8  ldrb w8,[x22, #0x2d5]
02c70fcc  ldr x21,[x21, #0x1c0]
02c70fd0  mov x19,x0
02c70fd4  tbnz w8,#0x0,0x02c70fec
02c70fd8  adrp x0,0x5e59000
02c70fdc  ldr x0,[x0, #0x1c0]
02c70fe0  bl 0x029f5a50
02c70fe4  mov w8,#0x1
02c70fe8  strb w8,[x22, #0x2d5]
02c70fec  bl 0x02c7448c
02c70ff0  ldr x8,[x21]
02c70ff4  mov x21,x0
02c70ff8  ldr w9,[x8, #0xe4]
02c70ffc  cbnz w9,0x02c71008
02c71000  mov x0,x8
02c71004  bl 0x029f5bd0
02c71008  mov x0,x21
02c7100c  mov x1,xzr
02c71010  mov x2,xzr
02c71014  bl 0x057e14b4
02c71018  tbnz w0,#0x0,0x02c7105c
02c7101c  tbz w20,#0x0,0x02c71044
02c71020  ldrb w8,[x19, #0x70]
02c71024  cbnz w8,0x02c7105c
02c71028  cbz x21,0x02c7106c
02c7102c  and w1,w20,#0x1
02c71030  mov x0,x21
02c71034  mov x2,xzr
02c71038  bl 0x02c6b68c
02c7103c  tbz w20,#0x0,0x02c71058
02c71040  b 0x02c7105c
02c71044  cbz x21,0x02c7106c
02c71048  and w1,w20,#0x1
02c7104c  mov x0,x21
02c71050  mov x2,xzr
02c71054  bl 0x02c6b68c
02c71058  strb wzr,[x19, #0xe8]
02c7105c  ldp x20,x19,[sp, #0x20]
02c71060  ldp x22,x21,[sp, #0x10]
02c71064  ldr x30,[sp], #0x30
02c71068  ret
02c7106c  bl 0x029f5cfc
