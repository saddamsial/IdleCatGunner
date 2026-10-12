02c2cf8c  stp x30,x21,[sp, #-0x20]!
02c2cf90  stp x20,x19,[sp, #0x10]
02c2cf94  adrp x20,0x625c000
02c2cf98  adrp x21,0x5e5d000
02c2cf9c  mov x19,x0
02c2cfa0  ldrb w8,[x20]
02c2cfa4  ldr x21,[x21, #0x790]
02c2cfa8  tbnz w8,#0x0,0x02c2cfc0
02c2cfac  adrp x0,0x5e5d000
02c2cfb0  ldr x0,[x0, #0x790]
02c2cfb4  bl 0x029f5a50
02c2cfb8  mov w8,#0x1
02c2cfbc  strb w8,[x20]
02c2cfc0  ldr x0,[x21]
02c2cfc4  mov w1,#0xf
02c2cfc8  bl 0x029f5b40
02c2cfcc  mov x1,x0
02c2cfd0  str x0,[x19, #0x38]!
02c2cfd4  mov x0,x19
02c2cfd8  bl 0x029f59f4
02c2cfdc  ldr x11,[x19]
02c2cfe0  cbz x11,0x02c2d038
02c2cfe4  ldr x10,[x11, #0x18]
02c2cfe8  cmp w10,#0x1
02c2cfec  b.lt 0x02c2d028
02c2cff0  and x9,x10,#0xffffffff
02c2cff4  bic w10,w10,w10, ASR #0x1f
02c2cff8  mov x8,xzr
02c2cffc  add x11,x11,#0x20
02c2d000  mov w12,#0x14
02c2d004  mov w13,#0x32
02c2d008  cmp x9,x8
02c2d00c  b.eq 0x02c2d034
02c2d010  madd w14,w12,w8,w13
02c2d014  add w12,w12,#0x3
02c2d018  str w14,[x11, x8, LSL #0x2]
02c2d01c  add x8,x8,#0x1
02c2d020  cmp x10,x8
02c2d024  b.ne 0x02c2d008
02c2d028  ldp x20,x19,[sp, #0x10]
02c2d02c  ldp x30,x21,[sp], #0x20
02c2d030  ret
02c2d034  bl 0x029f5d04
02c2d038  bl 0x029f5cfc
