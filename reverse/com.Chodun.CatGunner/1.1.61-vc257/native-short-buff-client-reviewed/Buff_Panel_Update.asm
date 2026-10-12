02c38778  sub sp,sp,#0x50
02c3877c  str d8,[sp, #0x10]
02c38780  stp x30,x23,[sp, #0x20]
02c38784  stp x22,x21,[sp, #0x30]
02c38788  stp x20,x19,[sp, #0x40]
02c3878c  adrp x20,0x625c000
02c38790  adrp x22,0x5e5d000
02c38794  mov x19,x0
02c38798  ldrb w8,[x20, #0x83]
02c3879c  ldr x22,[x22, #0x4c0]
02c387a0  tbnz w8,#0x0,0x02c387d0
02c387a4  adrp x0,0x5e5d000
02c387a8  ldr x0,[x0, #0x4c0]
02c387ac  bl 0x029f5a50
02c387b0  adrp x0,0x5e5e000
02c387b4  ldr x0,[x0, #0x528]
02c387b8  bl 0x029f5a50
02c387bc  adrp x0,0x5e63000
02c387c0  ldr x0,[x0, #0x1d0]
02c387c4  bl 0x029f5a50
02c387c8  mov w8,#0x1
02c387cc  strb w8,[x20, #0x83]
02c387d0  ldr x0,[x22]
02c387d4  str wzr,[sp, #0x1c]
02c387d8  ldr w8,[x0, #0xe4]
02c387dc  cbnz w8,0x02c387e8
02c387e0  bl 0x029f5bd0
02c387e4  ldr x0,[x22]
02c387e8  ldr x8,[x0, #0xb8]
02c387ec  ldr x0,[x8]
02c387f0  cbz x0,0x02c389ec
02c387f4  ldr w1,[x19, #0x20]
02c387f8  bl 0x02c3752c
02c387fc  ldr x8,[x22]
02c38800  ldr x8,[x8, #0xb8]
02c38804  ldr x0,[x8]
02c38808  cbz x0,0x02c389ec
02c3880c  ldr w1,[x19, #0x20]
02c38810  fmov s8,s0
02c38814  bl 0x02c37494
02c38818  fmov s0,s8
02c3881c  ldr x21,[x19, #0x28]
02c38820  mov w20,w0
02c38824  bl 0x02c3804c
02c38828  cbz x21,0x02c389ec
02c3882c  ldr x8,[x21]
02c38830  mov x1,x0
02c38834  mov x0,x21
02c38838  ldr x9,[x8, #0x558]
02c3883c  ldr x2,[x8, #0x560]
02c38840  blr x9
02c38844  ldr x0,[x19, #0x30]
02c38848  cbz x0,0x02c389ec
02c3884c  mov w8,#0x44610000
02c38850  fcmp s8,#0.0
02c38854  fmov s1,0x3f800000
02c38858  fmov s0,w8
02c3885c  mov x1,xzr
02c38860  fdiv s0,s8,s0
02c38864  fcsel s0,s0,s1,pl
02c38868  bl 0x02c28290
02c3886c  ldr x0,[x19, #0x38]
02c38870  cbz x0,0x02c389ec
02c38874  fcmp s8,#0.0
02c38878  mov x2,xzr
02c3887c  cset w1,pl
02c38880  bl 0x057dff3c
02c38884  ldr x0,[x19, #0x48]
02c38888  cbz x0,0x02c389ec
02c3888c  and w1,w20,#0x1
02c38890  mov x2,xzr
02c38894  bl 0x057dff3c
02c38898  ldr x0,[x19, #0x40]
02c3889c  cbz x0,0x02c389ec
02c388a0  mov w8,#0x1
02c388a4  mov x2,xzr
02c388a8  bic w1,w8,w20
02c388ac  bl 0x057dff3c
02c388b0  ldr x0,[x22]
02c388b4  ldr w8,[x0, #0xe4]
02c388b8  cbnz w8,0x02c388c4
02c388bc  bl 0x029f5bd0
02c388c0  ldr x0,[x22]
02c388c4  ldr x8,[x0, #0xb8]
02c388c8  ldr x0,[x8]
02c388cc  cbz x0,0x02c389ec
02c388d0  adrp x22,0x5e63000
02c388d4  adrp x23,0x5e5e000
02c388d8  ldr x22,[x22, #0x1d0]
02c388dc  ldr x23,[x23, #0x528]
02c388e0  bl 0x02c375b8
02c388e4  ldr w8,[x19, #0x20]
02c388e8  mov w20,w0
02c388ec  ldr x21,[x19, #0x50]
02c388f0  add x0,sp,#0x1c
02c388f4  mov x1,xzr
02c388f8  str w8,[sp, #0x1c]
02c388fc  bl 0x0484e6a4
02c38900  ldr x8,[x22]
02c38904  mov x1,x0
02c38908  mov x2,xzr
02c3890c  mov x0,x8
02c38910  bl 0x046b2d44
02c38914  ldr x8,[x23]
02c38918  mov x22,x0
02c3891c  ldr w9,[x8, #0xe4]
02c38920  cbnz w9,0x02c3892c
02c38924  mov x0,x8
02c38928  bl 0x029f5bd0
02c3892c  mov x0,x22
02c38930  mov w1,#0x1
02c38934  mov w2,wzr
02c38938  mov w3,#0x1
02c3893c  mov w4,wzr
02c38940  mov x5,xzr
02c38944  mov x6,xzr
02c38948  mov w7,#0x1
02c3894c  str xzr,[sp]
02c38950  bl 0x02bccb00
02c38954  adrp x8,0x5e58000
02c38958  mov x22,x0
02c3895c  tst w20,#0x1
02c38960  ldr x8,[x8, #0xa10]
02c38964  mov w9,#0x3
02c38968  add x1,sp,#0x18
02c3896c  cinc w9,w9,ne
02c38970  ldr x0,[x8, #0x48]
02c38974  str w9,[sp, #0x18]
02c38978  bl 0x029f5bd8
02c3897c  mov x1,x0
02c38980  mov x0,x22
02c38984  mov x2,xzr
02c38988  bl 0x046b6c0c
02c3898c  cbz x21,0x02c389ec
02c38990  ldr x8,[x21]
02c38994  mov x1,x0
02c38998  mov x0,x21
02c3899c  ldr x9,[x8, #0x558]
02c389a0  ldr x2,[x8, #0x560]
02c389a4  blr x9
02c389a8  ldr x0,[x19, #0x58]
02c389ac  cbz x0,0x02c389ec
02c389b0  mov w8,#0x1
02c389b4  mov x2,xzr
02c389b8  bic w1,w8,w20
02c389bc  bl 0x057dff3c
02c389c0  ldr x0,[x19, #0x60]
02c389c4  cbz x0,0x02c389ec
02c389c8  and w1,w20,#0x1
02c389cc  mov x2,xzr
02c389d0  bl 0x057dff3c
02c389d4  ldp x20,x19,[sp, #0x40]
02c389d8  ldr d8,[sp, #0x10]
02c389dc  ldp x22,x21,[sp, #0x30]
02c389e0  ldp x30,x23,[sp, #0x20]
02c389e4  add sp,sp,#0x50
02c389e8  ret
02c389ec  bl 0x029f5cfc
