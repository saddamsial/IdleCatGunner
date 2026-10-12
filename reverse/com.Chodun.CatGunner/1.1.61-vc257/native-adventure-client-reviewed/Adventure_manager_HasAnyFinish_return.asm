02c2e7d4  str x30,[sp, #-0x30]!
02c2e7d8  stp x22,x21,[sp, #0x10]
02c2e7dc  stp x20,x19,[sp, #0x20]
02c2e7e0  ldr x8,[x0, #0x20]
02c2e7e4  cbz x8,0x02c2e864
02c2e7e8  ldr w9,[x8, #0x18]
02c2e7ec  mov w20,w1
02c2e7f0  cmp w9,w1
02c2e7f4  b.ls 0x02c2e868
02c2e7f8  add x8,x8,w20, SXTW  #0x3
02c2e7fc  ldr x8,[x8, #0x20]
02c2e800  cbz x8,0x02c2e864
02c2e804  ldr x22,[x8, #0x18]
02c2e808  cbz x22,0x02c2e850
02c2e80c  ldr w8,[x22, #0x18]
02c2e810  cmp w8,#0x1
02c2e814  b.lt 0x02c2e850
02c2e818  mov x19,x0
02c2e81c  mov w21,wzr
02c2e820  mov x0,x19
02c2e824  mov w1,w20
02c2e828  mov w2,w21
02c2e82c  bl 0x02c2e5f8
02c2e830  cmp w0,#0x3
02c2e834  cset w0,eq
02c2e838  b.eq 0x02c2e854
02c2e83c  ldr w8,[x22, #0x18]
02c2e840  add w21,w21,#0x1
02c2e844  cmp w21,w8
02c2e848  b.lt 0x02c2e820
02c2e84c  b 0x02c2e854
02c2e850  mov w0,wzr
02c2e854  ldp x20,x19,[sp, #0x20]
02c2e858  ldp x22,x21,[sp, #0x10]
02c2e85c  ldr x30,[sp], #0x30
02c2e860  ret
02c2e864  bl 0x029f5cfc
02c2e868  bl 0x029f5d04
