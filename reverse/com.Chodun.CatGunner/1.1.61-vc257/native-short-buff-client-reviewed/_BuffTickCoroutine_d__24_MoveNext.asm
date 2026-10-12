02c38290  stp d9,d8,[sp, #-0x40]!
02c38294  str x30,[sp, #0x10]
02c38298  stp x22,x21,[sp, #0x20]
02c3829c  stp x20,x19,[sp, #0x30]
02c382a0  adrp x20,0x625c000
02c382a4  mov x19,x0
02c382a8  ldrb w8,[x20, #0x7e]
02c382ac  tbnz w8,#0x0,0x02c382c4
02c382b0  adrp x0,0x5e5d000
02c382b4  ldr x0,[x0, #0x4c0]
02c382b8  bl 0x029f5a50
02c382bc  mov w8,#0x1
02c382c0  strb w8,[x20, #0x7e]
02c382c4  ldr w8,[x19, #0x10]
02c382c8  cmp w8,#0x2
02c382cc  b.cs 0x02c38368
02c382d0  ldr x20,[x19, #0x20]
02c382d4  mov w8,#0xffffffff
02c382d8  str w8,[x19, #0x10]
02c382dc  cbz x20,0x02c38408
02c382e0  mov x0,x20
02c382e4  bl 0x02c37bac
02c382e8  tbz w0,#0x0,0x02c38358
02c382ec  adrp x21,0x625c000
02c382f0  ldrb w8,[x21, #0xbd]
02c382f4  cbnz w8,0x02c3830c
02c382f8  adrp x0,0x5e5d000
02c382fc  ldr x0,[x0, #0x920]
02c38300  bl 0x029f5a50
02c38304  mov w8,#0x1
02c38308  strb w8,[x21, #0xbd]
02c3830c  adrp x21,0x5e5d000
02c38310  ldr x21,[x21, #0x920]
02c38314  ldr x0,[x21]
02c38318  ldr w8,[x0, #0xe4]
02c3831c  cbnz w8,0x02c38328
02c38320  bl 0x029f5bd0
02c38324  ldr x0,[x21]
02c38328  ldr x8,[x0, #0xb8]
02c3832c  ldrb w8,[x8, #0xb]
02c38330  cbz w8,0x02c38380
02c38334  mov x0,x20
02c38338  bl 0x02c378dc
02c3833c  str xzr,[x19, #0x18]!
02c38340  mov x0,x19
02c38344  mov x1,xzr
02c38348  bl 0x029f59f4
02c3834c  mov w0,#0x1
02c38350  stur w0,[x19, #-0x8]
02c38354  b 0x02c3836c
02c38358  str xzr,[x20, #0x40]!
02c3835c  mov x0,x20
02c38360  mov x1,xzr
02c38364  bl 0x029f59f4
02c38368  mov w0,wzr
02c3836c  ldp x20,x19,[sp, #0x30]
02c38370  ldr x30,[sp, #0x10]
02c38374  ldp x22,x21,[sp, #0x20]
02c38378  ldp d9,d8,[sp], #0x40
02c3837c  ret
02c38380  mov x0,xzr
02c38384  bl 0x057ebabc
02c38388  adrp x21,0x5e5d000
02c3838c  fmov s8,s0
02c38390  movi d9,#0x0
02c38394  ldr x21,[x21, #0x4c0]
02c38398  mov x22,xzr
02c3839c  ldr x0,[x21]
02c383a0  ldr w8,[x0, #0xe4]
02c383a4  cbnz w8,0x02c383b0
02c383a8  bl 0x029f5bd0
02c383ac  ldr x0,[x21]
02c383b0  ldr x8,[x0, #0xb8]
02c383b4  ldrsw x8,[x8, #0x8]
02c383b8  cmp x22,x8
02c383bc  b.ge 0x02c38334
02c383c0  ldr x8,[x20, #0x38]
02c383c4  cbz x8,0x02c38408
02c383c8  ldr w9,[x8, #0x18]
02c383cc  cmp x22,x9
02c383d0  b.cs 0x02c3840c
02c383d4  add x8,x8,x22, LSL #0x2
02c383d8  ldr s0,[x8, #0x20]
02c383dc  fcmp s0,#0.0
02c383e0  b.ls 0x02c38400
02c383e4  fsub s0,s0,s8
02c383e8  fmaxnm s0,s0,s9
02c383ec  fcmp s0,#0.0
02c383f0  str s0,[x8, #0x20]
02c383f4  b.hi 0x02c38400
02c383f8  bl 0x02c3773c
02c383fc  ldr x0,[x21]
02c38400  add x22,x22,#0x1
02c38404  b 0x02c383a0
02c38408  bl 0x029f5cfc
02c3840c  bl 0x029f5d04
