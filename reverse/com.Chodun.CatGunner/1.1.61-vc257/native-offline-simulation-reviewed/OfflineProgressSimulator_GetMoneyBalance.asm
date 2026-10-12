02c09360  sub sp,sp,#0x90
02c09364  str x30,[sp, #0x60]
02c09368  stp x22,x21,[sp, #0x70]
02c0936c  stp x20,x19,[sp, #0x80]
02c09370  adrp x22,0x625b000
02c09374  adrp x21,0x5e5d000
02c09378  mov w20,w0
02c0937c  ldrb w9,[x22, #0xe89]
02c09380  ldr x21,[x21, #0x4e8]
02c09384  mov x19,x8
02c09388  tbnz w9,#0x0,0x02c093ac
02c0938c  adrp x0,0x5e59000
02c09390  ldr x0,[x0]
02c09394  bl 0x029f5a50
02c09398  adrp x0,0x5e5d000
02c0939c  ldr x0,[x0, #0x4e8]
02c093a0  bl 0x029f5a50
02c093a4  mov w8,#0x1
02c093a8  strb w8,[x22, #0xe89]
02c093ac  movi v0.2D,#0x0
02c093b0  ldr x0,[x21]
02c093b4  mov w8,#0x2710
02c093b8  cmp w20,w8
02c093bc  ldr w9,[x0, #0xe4]
02c093c0  csel w20,w20,w8,lt
02c093c4  stp q0,q0,[sp, #0x40]
02c093c8  cbnz w9,0x02c093d4
02c093cc  bl 0x029f5bd0
02c093d0  ldr x0,[x21]
02c093d4  ldr x8,[x0, #0xb8]
02c093d8  bic w20,w20,w20, ASR #0x1f
02c093dc  ldr x8,[x8]
02c093e0  cbz x8,0x02c09404
02c093e4  ldr x8,[x8, #0x40]
02c093e8  cbz x8,0x02c09404
02c093ec  ldr w9,[x8, #0x18]
02c093f0  cmp w20,w9
02c093f4  b.ge 0x02c09404
02c093f8  add x8,x8,x20, LSL #0x5
02c093fc  ldp q0,q1,[x8, #0x20]
02c09400  b 0x02c09468
02c09404  adrp x8,0x5e59000
02c09408  ldr x8,[x8]
02c0940c  ldr x0,[x8]
02c09410  ldr w8,[x0, #0xe4]
02c09414  cbnz w8,0x02c0941c
02c09418  bl 0x029f5bd0
02c0941c  scvtf d1,w20
02c09420  adrp x8,0x116f000
02c09424  mov x0,xzr
02c09428  ldr d0,[x8, #0xff8]
02c0942c  bl 0x04852840
02c09430  mov x8,#0x4059000000000000
02c09434  mov x0,xzr
02c09438  fmov d1,x8
02c0943c  add x8,sp,#0x20
02c09440  fmul d0,d0,d1
02c09444  bl 0x04656c9c
02c09448  ldp q0,q1,[sp, #0x20]
02c0944c  mov x8,sp
02c09450  add x0,sp,#0x40
02c09454  mov w1,#0x3
02c09458  mov x2,xzr
02c0945c  stp q0,q1,[sp, #0x40]
02c09460  bl 0x04658464
02c09464  ldp q0,q1,[sp]
02c09468  stp q0,q1,[x19]
02c0946c  ldp x20,x19,[sp, #0x80]
02c09470  ldp x22,x21,[sp, #0x70]
02c09474  ldr x30,[sp, #0x60]
02c09478  add sp,sp,#0x90
02c0947c  ret
