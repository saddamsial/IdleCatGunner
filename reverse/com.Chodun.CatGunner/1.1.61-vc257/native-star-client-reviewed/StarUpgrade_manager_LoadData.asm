02c6e77c  str x30,[sp, #-0x20]!
02c6e780  stp x20,x19,[sp, #0x10]
02c6e784  mov x20,x1
02c6e788  mov x19,x0
02c6e78c  bl 0x02c6d6e4
02c6e790  ldr x0,[x19, #0x30]
02c6e794  cbz x0,0x02c6e898
02c6e798  ldr w2,[x0, #0x18]
02c6e79c  mov w1,wzr
02c6e7a0  mov x3,xzr
02c6e7a4  bl 0x04873aac
02c6e7a8  ldr x0,[x19, #0x38]
02c6e7ac  cbz x0,0x02c6e898
02c6e7b0  ldr w2,[x0, #0x18]
02c6e7b4  mov w1,wzr
02c6e7b8  mov x3,xzr
02c6e7bc  bl 0x04873aac
02c6e7c0  cbz x20,0x02c6e888
02c6e7c4  ldr x11,[x20, #0xf8]
02c6e7c8  cbz x11,0x02c6e82c
02c6e7cc  ldr x12,[x19, #0x30]
02c6e7d0  cbz x12,0x02c6e898
02c6e7d4  ldr x9,[x11, #0x18]
02c6e7d8  ldr x10,[x12, #0x18]
02c6e7dc  cmp w9,w10
02c6e7e0  csel w8,w9,w10,lt
02c6e7e4  cmp w8,#0x1
02c6e7e8  b.lt 0x02c6e82c
02c6e7ec  and x9,x9,#0xffffffff
02c6e7f0  and x10,x10,#0xffffffff
02c6e7f4  add x11,x11,#0x20
02c6e7f8  add x12,x12,#0x20
02c6e7fc  mov w13,#0x14
02c6e800  cbz x9,0x02c6e894
02c6e804  cbz x10,0x02c6e894
02c6e808  ldr w14,[x11], #0x4
02c6e80c  sub x10,x10,#0x1
02c6e810  sub x9,x9,#0x1
02c6e814  cmp w14,#0x14
02c6e818  csel w14,w14,w13,lt
02c6e81c  subs x8,x8,#0x1
02c6e820  bic w14,w14,w14, ASR #0x1f
02c6e824  str w14,[x12], #0x4
02c6e828  b.ne 0x02c6e800
02c6e82c  ldr x11,[x20, #0x100]
02c6e830  cbz x11,0x02c6e888
02c6e834  ldr x12,[x19, #0x38]
02c6e838  cbz x12,0x02c6e898
02c6e83c  ldr x9,[x11, #0x18]
02c6e840  ldr x10,[x12, #0x18]
02c6e844  cmp w9,w10
02c6e848  csel w8,w9,w10,lt
02c6e84c  cmp w8,#0x1
02c6e850  b.lt 0x02c6e888
02c6e854  and x9,x9,#0xffffffff
02c6e858  and x10,x10,#0xffffffff
02c6e85c  add x11,x11,#0x20
02c6e860  add x12,x12,#0x20
02c6e864  cbz x9,0x02c6e894
02c6e868  cbz x10,0x02c6e894
02c6e86c  ldr w13,[x11], #0x4
02c6e870  subs x8,x8,#0x1
02c6e874  sub x10,x10,#0x1
02c6e878  sub x9,x9,#0x1
02c6e87c  bic w13,w13,w13, ASR #0x1f
02c6e880  str w13,[x12], #0x4
02c6e884  b.ne 0x02c6e864
02c6e888  ldp x20,x19,[sp, #0x10]
02c6e88c  ldr x30,[sp], #0x20
02c6e890  ret
02c6e894  bl 0x029f5d04
02c6e898  bl 0x029f5cfc
