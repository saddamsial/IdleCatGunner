02c53fc0  stp x30,x21,[sp, #-0x20]!
02c53fc4  stp x20,x19,[sp, #0x10]
02c53fc8  adrp x20,0x625c000
02c53fcc  adrp x21,0x5e5e000
02c53fd0  mov x19,x0
02c53fd4  ldrb w8,[x20, #0x17a]
02c53fd8  ldr x21,[x21, #0x70]
02c53fdc  tbnz w8,#0x0,0x02c54000
02c53fe0  adrp x0,0x5e5e000
02c53fe4  ldr x0,[x0, #0x68]
02c53fe8  bl 0x029f5a50
02c53fec  adrp x0,0x5e5e000
02c53ff0  ldr x0,[x0, #0x70]
02c53ff4  bl 0x029f5a50
02c53ff8  mov w8,#0x1
02c53ffc  strb w8,[x20, #0x17a]
02c54000  ldr x0,[x21]
02c54004  ldr w8,[x0, #0xe4]
02c54008  cbnz w8,0x02c54010
02c5400c  bl 0x029f5bd0
02c54010  bl 0x02c549a0
02c54014  ldr w8,[x19, #0x28]
02c54018  cmp w8,w0
02c5401c  b.eq 0x02c54098
02c54020  adrp x20,0x5e5e000
02c54024  mov w1,wzr
02c54028  mov w2,#0x8
02c5402c  ldr x20,[x20, #0x68]
02c54030  ldr x8,[x19, #0x30]
02c54034  str w0,[x19, #0x28]
02c54038  mov x3,xzr
02c5403c  mov x0,x8
02c54040  bl 0x04873aac
02c54044  ldr x0,[x19, #0x38]
02c54048  mov w1,wzr
02c5404c  mov w2,#0x8
02c54050  mov x3,xzr
02c54054  bl 0x04873aac
02c54058  ldr x0,[x19, #0x40]
02c5405c  mov w1,wzr
02c54060  mov w2,#0x8
02c54064  mov x3,xzr
02c54068  bl 0x04873aac
02c5406c  ldr x8,[x20]
02c54070  strb wzr,[x19, #0x48]
02c54074  ldr x8,[x8, #0xb8]
02c54078  ldr x8,[x8, #0x8]
02c5407c  cbz x8,0x02c54098
02c54080  ldp x20,x19,[sp, #0x10]
02c54084  ldr x0,[x8, #0x40]
02c54088  ldr x1,[x8, #0x28]
02c5408c  ldr x2,[x8, #0x18]
02c54090  ldp x30,x21,[sp], #0x20
02c54094  br x2
02c54098  ldp x20,x19,[sp, #0x10]
02c5409c  ldp x30,x21,[sp], #0x20
02c540a0  ret
