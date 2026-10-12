02c5def8  stp d9,d8,[sp, #-0x30]!
02c5defc  str x30,[sp, #0x10]
02c5df00  stp x20,x19,[sp, #0x20]
02c5df04  fmov s8,s0
02c5df08  adrp x20,0x625c000
02c5df0c  mov w19,w0
02c5df10  ldrb w8,[x20, #0x1fc]
02c5df14  tbnz w8,#0x0,0x02c5df2c
02c5df18  adrp x0,0x5e59000
02c5df1c  ldr x0,[x0]
02c5df20  bl 0x029f5a50
02c5df24  mov w8,#0x1
02c5df28  strb w8,[x20, #0x1fc]
02c5df2c  fcmp s8,#0.0
02c5df30  b.ne 0x02c5df3c
02c5df34  mov w0,wzr
02c5df38  b 0x02c5e084
02c5df3c  adrp x8,0x5e59000
02c5df40  fcvt d9,s8
02c5df44  ldr x8,[x8]
02c5df48  ldr x0,[x8]
02c5df4c  ldr w8,[x0, #0xe4]
02c5df50  cbnz w8,0x02c5df58
02c5df54  bl 0x029f5bd0
02c5df58  fabs d0,d9
02c5df5c  bl 0x05afb300
02c5df60  mov x8,#0x7ff0000000000000
02c5df64  frintm d1,d0
02c5df68  fcvtms w9,d0
02c5df6c  fmov d0,x8
02c5df70  mov w8,#0x7fffffff
02c5df74  mov x0,xzr
02c5df78  fcmp d1,d0
02c5df7c  fmov d0,0x4024000000000000
02c5df80  csinv w8,w8,w9,eq
02c5df84  add w8,w8,w19
02c5df88  scvtf d1,w8
02c5df8c  bl 0x04852840
02c5df90  fmul d9,d0,d9
02c5df94  fmov d8,d0
02c5df98  add x0,sp,#0x18
02c5df9c  fmov d0,d9
02c5dfa0  bl 0x05afb230
02c5dfa4  fcmp d9,#0.0
02c5dfa8  b.ge 0x02c5dfc4
02c5dfac  fmov d1,-0x4020000000000000
02c5dfb0  fcmp d0,d1
02c5dfb4  b.ne 0x02c5dfec
02c5dfb8  ldr d0,[sp, #0x18]
02c5dfbc  fmov d1,-0x4010000000000000
02c5dfc0  b 0x02c5dfd8
02c5dfc4  fmov d1,0x3fe0000000000000
02c5dfc8  fcmp d0,d1
02c5dfcc  b.ne 0x02c5dff8
02c5dfd0  fmov d1,0x3ff0000000000000
02c5dfd4  ldr d0,[sp, #0x18]
02c5dfd8  fcvtzs x8,d0
02c5dfdc  fadd d1,d0,d1
02c5dfe0  tst x8,#0x1
02c5dfe4  fcsel d0,d0,d1,eq
02c5dfe8  b 0x02c5e000
02c5dfec  fadd d0,d9,d1
02c5dff0  frintp d0,d0
02c5dff4  b 0x02c5e000
02c5dff8  fadd d0,d9,d1
02c5dffc  frintm d0,d0
02c5e000  fdiv d8,d0,d8
02c5e004  add x0,sp,#0x18
02c5e008  fmov d0,d8
02c5e00c  bl 0x05afb230
02c5e010  fcmp d8,#0.0
02c5e014  b.ge 0x02c5e030
02c5e018  fmov d1,-0x4020000000000000
02c5e01c  fcmp d0,d1
02c5e020  b.ne 0x02c5e058
02c5e024  ldr d0,[sp, #0x18]
02c5e028  fmov d1,-0x4010000000000000
02c5e02c  b 0x02c5e044
02c5e030  fmov d1,0x3fe0000000000000
02c5e034  fcmp d0,d1
02c5e038  b.ne 0x02c5e064
02c5e03c  fmov d1,0x3ff0000000000000
02c5e040  ldr d0,[sp, #0x18]
02c5e044  fcvtzs x8,d0
02c5e048  fadd d1,d0,d1
02c5e04c  tst x8,#0x1
02c5e050  fcsel d0,d0,d1,eq
02c5e054  b 0x02c5e06c
02c5e058  fadd d0,d8,d1
02c5e05c  frintp d0,d0
02c5e060  b 0x02c5e06c
02c5e064  fadd d0,d8,d1
02c5e068  frintm d0,d0
02c5e06c  mov x8,#0x7ff0000000000000
02c5e070  fcvtzs w9,d0
02c5e074  fmov d1,x8
02c5e078  mov w8,#0x80000000
02c5e07c  fcmp d0,d1
02c5e080  csel w0,w8,w9,eq
02c5e084  ldp x20,x19,[sp, #0x20]
02c5e088  ldr x30,[sp, #0x10]
02c5e08c  ldp d9,d8,[sp], #0x30
02c5e090  ret
