02c5e7fc  str x30,[sp, #-0x20]!
02c5e800  stp x20,x19,[sp, #0x10]
02c5e804  movi d0,#0x0
02c5e808  mov w8,#0x42c80000
02c5e80c  mov x20,x0
02c5e810  fmov s1,w8
02c5e814  mov x0,xzr
02c5e818  mov w19,w1
02c5e81c  bl 0x057d55d4
02c5e820  ldr x10,[x20, #0x98]
02c5e824  cbz x10,0x02c5e888
02c5e828  ldr x11,[x10, #0x18]
02c5e82c  mov w0,w19
02c5e830  cmp w11,#0x0
02c5e834  b.le 0x02c5e878
02c5e838  movi d1,#0x0
02c5e83c  bic w9,w11,w11, ASR #0x1f
02c5e840  mov x8,xzr
02c5e844  and x11,x11,#0xffffffff
02c5e848  add x10,x10,#0x20
02c5e84c  cmp x11,x8
02c5e850  b.eq 0x02c5e884
02c5e854  ldr s2,[x10,x8, lsl #2]
02c5e858  fadd s1,s1,s2
02c5e85c  fcmp s0,s1
02c5e860  b.mi 0x02c5e874
02c5e864  add x8,x8,#0x1
02c5e868  cmp x9,x8
02c5e86c  b.ne 0x02c5e84c
02c5e870  b 0x02c5e878
02c5e874  add w0,w19,w8
02c5e878  ldp x20,x19,[sp, #0x10]
02c5e87c  ldr x30,[sp], #0x20
02c5e880  ret
02c5e884  bl 0x029f5d04
02c5e888  bl 0x029f5cfc
