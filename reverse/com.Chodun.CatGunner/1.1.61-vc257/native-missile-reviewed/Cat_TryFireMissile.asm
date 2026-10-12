02c421b4  sub sp,sp,#0xc0
02c421b8  stp d15,d14,[sp, #0x30]
02c421bc  stp d13,d12,[sp, #0x40]
02c421c0  stp d11,d10,[sp, #0x50]
02c421c4  stp d9,d8,[sp, #0x60]
02c421c8  str x30,[sp, #0x70]
02c421cc  stp x26,x25,[sp, #0x80]
02c421d0  stp x24,x23,[sp, #0x90]
02c421d4  stp x22,x21,[sp, #0xa0]
02c421d8  stp x20,x19,[sp, #0xb0]
02c421dc  fmov s14,s3
02c421e0  fmov s8,s2
02c421e4  adrp x23,0x625c000
02c421e8  fmov s9,s1
02c421ec  fmov s10,s0
02c421f0  adrp x24,0x5e62000
02c421f4  ldrb w8,[x23, #0xb6]
02c421f8  ldr x24,[x24, #0x768]
02c421fc  mov w20,w4
02c42200  mov x19,x3
02c42204  mov x21,x2
02c42208  mov x25,x1
02c4220c  mov x22,x0
02c42210  tbnz w8,#0x0,0x02c42240
02c42214  adrp x0,0x5e62000
02c42218  ldr x0,[x0, #0x770]
02c4221c  bl 0x029f5a50
02c42220  adrp x0,0x5e59000
02c42224  ldr x0,[x0, #0x1c0]
02c42228  bl 0x029f5a50
02c4222c  adrp x0,0x5e62000
02c42230  ldr x0,[x0, #0x768]
02c42234  bl 0x029f5a50
02c42238  mov w8,#0x1
02c4223c  strb w8,[x23, #0xb6]
02c42240  ldr x8,[x24]
02c42244  ldr x8,[x8, #0xb8]
02c42248  ldr x0,[x8]
02c4224c  cbz x0,0x02c424c8
02c42250  adrp x26,0x5e59000
02c42254  mov w1,wzr
02c42258  mov x2,xzr
02c4225c  ldr x26,[x26, #0x1c0]
02c42260  bl 0x02c17b80
02c42264  ldr x8,[x26]
02c42268  mov x24,x0
02c4226c  ldr w9,[x8, #0xe4]
02c42270  cbnz w9,0x02c4227c
02c42274  mov x0,x8
02c42278  bl 0x029f5bd0
02c4227c  mov x0,x24
02c42280  mov x1,xzr
02c42284  mov x2,xzr
02c42288  bl 0x057e14b4
02c4228c  mov w23,w0
02c42290  tbnz w0,#0x0,0x02c42494
02c42294  ldr x0,[x26]
02c42298  ldr w8,[x0, #0xe4]
02c4229c  cbnz w8,0x02c422a4
02c422a0  bl 0x029f5bd0
02c422a4  mov x0,x25
02c422a8  mov x1,xzr
02c422ac  mov x2,xzr
02c422b0  bl 0x057dfa70
02c422b4  tbz w0,#0x0,0x02c422e4
02c422b8  cbz x25,0x02c424c8
02c422bc  mov x0,x25
02c422c0  mov x1,xzr
02c422c4  bl 0x057dc0f8
02c422c8  cbz x0,0x02c424c8
02c422cc  mov x1,xzr
02c422d0  bl 0x057eed98
02c422d4  fmov s11,s0
02c422d8  fmov s12,s1
02c422dc  fmov s13,s2
02c422e0  b 0x02c422f0
02c422e4  ldr s11,[x22, #0x1e8]
02c422e8  ldr s12,[x22, #0x1ec]
02c422ec  ldr s13,[x22, #0x1f0]
02c422f0  adrp x8,0x116c000
02c422f4  adrp x25,0x5e59000
02c422f8  adrp x26,0x625b000
02c422fc  ldr s0,[x8, #0x88]
02c42300  ldr x25,[x25]
02c42304  fcmp s14,s0
02c42308  b.le 0x02c423c4
02c4230c  str s9,[sp, #0xc]
02c42310  fmov s9,s12
02c42314  ldrb w8,[x26, #0xae8]
02c42318  cbnz w8,0x02c42330
02c4231c  adrp x0,0x5e59000
02c42320  ldr x0,[x0]
02c42324  bl 0x029f5a50
02c42328  mov w8,#0x1
02c4232c  strb w8,[x26, #0xae8]
02c42330  ldr x0,[x25]
02c42334  fsub s15,s11,s10
02c42338  fsub s12,s13,s8
02c4233c  ldr w8,[x0, #0xe4]
02c42340  cbnz w8,0x02c42348
02c42344  bl 0x029f5bd0
02c42348  fmul s0,s15,s15
02c4234c  fmul s1,s12,s12
02c42350  adrp x8,0x116c000
02c42354  ldr s15,[x8, #0x26c]
02c42358  fadd s0,s1,s0
02c4235c  fsqrt s12,s0
02c42360  fmul s0,s14,s15
02c42364  bl 0x05afb2f0
02c42368  fmul s14,s12,s0
02c4236c  movi d0,#0x0
02c42370  mov w8,#0x43b40000
02c42374  fmov s1,w8
02c42378  mov x0,xzr
02c4237c  bl 0x057d55d4
02c42380  fmul s15,s0,s15
02c42384  movi d0,#0x0
02c42388  fmov s1,s14
02c4238c  mov x0,xzr
02c42390  bl 0x057d55d4
02c42394  fmov s14,s0
02c42398  fmov s0,s15
02c4239c  add x0,sp,#0x7c
02c423a0  add x1,sp,#0x78
02c423a4  bl 0x05afb270
02c423a8  ldp s1,s0,[sp, #0x78]
02c423ac  fmov s12,s9
02c423b0  ldr s9,[sp, #0xc]
02c423b4  fmul s1,s14,s1
02c423b8  fmul s0,s14,s0
02c423bc  fadd s11,s11,s1
02c423c0  fadd s13,s13,s0
02c423c4  ldrb w8,[x26, #0xae8]
02c423c8  cbnz w8,0x02c423e0
02c423cc  adrp x0,0x5e59000
02c423d0  ldr x0,[x0]
02c423d4  bl 0x029f5a50
02c423d8  mov w8,#0x1
02c423dc  strb w8,[x26, #0xae8]
02c423e0  ldr x0,[x25]
02c423e4  ldr w8,[x0, #0xe4]
02c423e8  cbnz w8,0x02c423f0
02c423ec  bl 0x029f5bd0
02c423f0  ldr x8,[x22, #0x48]
02c423f4  cbz x8,0x02c424c8
02c423f8  cbz x24,0x02c424c8
02c423fc  adrp x9,0x5e62000
02c42400  mov x0,x24
02c42404  ldr x9,[x9, #0x770]
02c42408  ldr s14,[x8, #0x54]
02c4240c  ldr x1,[x9]
02c42410  bl 0x030a02b4
02c42414  ldr x8,[x22, #0x48]
02c42418  cbz x8,0x02c424c8
02c4241c  cbz x0,0x02c424c8
02c42420  fsub s0,s11,s10
02c42424  fsub s1,s13,s8
02c42428  adrp x9,0x116c000
02c4242c  fmov s2,s8
02c42430  fmov s3,s11
02c42434  ldr w1,[x22, #0x40]
02c42438  fmov s4,s12
02c4243c  fmov s5,s13
02c42440  ldr w5,[x22, #0xb4]
02c42444  ldr s6,[x8, #0x50]
02c42448  mov w8,#0xcccd
02c4244c  add x2,sp,#0x10
02c42450  fmul s0,s0,s0
02c42454  fmul s1,s1,s1
02c42458  movk w8,#0x3ecc, LSL #16
02c4245c  and w4,w20,#0x1
02c42460  mov x3,x19
02c42464  mov x6,xzr
02c42468  fadd s0,s0,s1
02c4246c  ldr s1,[x9, #0x174]
02c42470  fmaxnm s1,s14,s1
02c42474  fsqrt s0,s0
02c42478  fdiv s7,s0,s1
02c4247c  ldp q0,q1,[x21]
02c42480  str w8,[sp]
02c42484  stp q0,q1,[sp, #0x10]
02c42488  fmov s0,s10
02c4248c  fmov s1,s9
02c42490  bl 0x02c65958
02c42494  mov w8,#0x1
02c42498  ldp x20,x19,[sp, #0xb0]
02c4249c  bic w0,w8,w23
02c424a0  ldp x22,x21,[sp, #0xa0]
02c424a4  ldp x24,x23,[sp, #0x90]
02c424a8  ldr x30,[sp, #0x70]
02c424ac  ldp x26,x25,[sp, #0x80]
02c424b0  ldp d9,d8,[sp, #0x60]
02c424b4  ldp d11,d10,[sp, #0x50]
02c424b8  ldp d13,d12,[sp, #0x40]
02c424bc  ldp d15,d14,[sp, #0x30]
02c424c0  add sp,sp,#0xc0
02c424c4  ret
02c424c8  bl 0x029f5cfc
