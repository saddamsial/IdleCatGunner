02c27318  str x30,[sp, #-0x20]!
02c2731c  stp x20,x19,[sp, #0x10]
02c27320  mov x20,x0
02c27324  ldr x0,[x0, #0x30]
02c27328  cbz x0,0x02c2735c
02c2732c  mov w19,w1
02c27330  and w1,w1,#0x1
02c27334  mov x2,xzr
02c27338  bl 0x057dff3c
02c2733c  ldr x0,[x20, #0x38]
02c27340  cbz x0,0x02c2735c
02c27344  mov w8,#0x1
02c27348  mov x2,xzr
02c2734c  bic w1,w8,w19
02c27350  ldp x20,x19,[sp, #0x10]
02c27354  ldr x30,[sp], #0x20
02c27358  b 0x057dff3c
02c2735c  bl 0x029f5cfc
