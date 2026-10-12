02c72fc0  sub sp,sp,#0x70
02c72fc4  stp x29,x30,[sp, #0x10]
02c72fc8  stp x28,x27,[sp, #0x20]
02c72fcc  stp x26,x25,[sp, #0x30]
02c72fd0  stp x24,x23,[sp, #0x40]
02c72fd4  stp x22,x21,[sp, #0x50]
02c72fd8  stp x20,x19,[sp, #0x60]
02c72fdc  adrp x20,0x625c000
02c72fe0  mov x21,x2
02c72fe4  mov x22,x1
02c72fe8  ldrb w8,[x20, #0x2f2]
02c72fec  mov x19,x0
02c72ff0  tbnz w8,#0x0,0x02c73038
02c72ff4  adrp x0,0x5e5d000
02c72ff8  ldr x0,[x0, #0x5b0]
02c72ffc  bl 0x029f5a50
02c73000  adrp x0,0x5e58000
02c73004  ldr x0,[x0, #0xf08]
02c73008  bl 0x029f5a50
02c7300c  adrp x0,0x5e5d000
02c73010  ldr x0,[x0, #0xd40]
02c73014  bl 0x029f5a50
02c73018  adrp x0,0x5e59000
02c7301c  ldr x0,[x0, #0x1c0]
02c73020  bl 0x029f5a50
02c73024  adrp x0,0x5e63000
02c73028  ldr x0,[x0, #0xbf8]
02c7302c  bl 0x029f5a50
02c73030  mov w8,#0x1
02c73034  strb w8,[x20, #0x2f2]
02c73038  cbz x22,0x02c73350
02c7303c  adrp x20,0x5e5d000
02c73040  ldrb w8,[x22, #0x70]
02c73044  ldr x20,[x20, #0xd40]
02c73048  cbz w8,0x02c73088
02c7304c  mov x0,x19
02c73050  bl 0x02c73c20
02c73054  ldr x8,[x20]
02c73058  ldr x8,[x8, #0xb8]
02c7305c  ldr x0,[x8]
02c73060  cbz x0,0x02c73350
02c73064  ldp x20,x19,[sp, #0x60]
02c73068  mov x1,xzr
02c7306c  ldp x22,x21,[sp, #0x50]
02c73070  ldp x24,x23,[sp, #0x40]
02c73074  ldp x26,x25,[sp, #0x30]
02c73078  ldp x28,x27,[sp, #0x20]
02c7307c  ldp x29,x30,[sp, #0x10]
02c73080  add sp,sp,#0x70
02c73084  b 0x02c6a910
02c73088  cbz x21,0x02c73350
02c7308c  ldr x8,[x20]
02c73090  ldr x8,[x8, #0xb8]
02c73094  ldr x23,[x8]
02c73098  cbz x23,0x02c73350
02c7309c  ldr x27,[x23, #0x28]
02c730a0  cbz x27,0x02c73350
02c730a4  ldr w20,[x21, #0x20]
02c730a8  ldr w8,[x27, #0x18]
02c730ac  cmp w20,w8
02c730b0  b.cs 0x02c73354
02c730b4  sxtw x8,w20
02c730b8  ldr x29,[x23, #0x40]
02c730bc  mov x0,x23
02c730c0  ldp w25,w1,[x22, #0x8c]
02c730c4  add x28,x27,x8, LSL #0x2
02c730c8  mov x2,xzr
02c730cc  ldr w26,[x28, #0x20]!
02c730d0  bl 0x02c67f50
02c730d4  mov w24,w0
02c730d8  mov x0,x23
02c730dc  mov w1,w20
02c730e0  mov x2,xzr
02c730e4  bl 0x02c67ff0
02c730e8  ldr w8,[x27, #0x18]
02c730ec  cmp w20,w8
02c730f0  b.cs 0x02c73354
02c730f4  ldr w9,[x28]
02c730f8  cmn w9,#0x1
02c730fc  b.eq 0x02c73118
02c73100  cbz x29,0x02c73350
02c73104  ldr w8,[x22, #0x90]
02c73108  ldr w10,[x29, #0x18]
02c7310c  cmp w8,w10
02c73110  b.cc 0x02c73134
02c73114  b 0x02c73354
02c73118  cbz x29,0x02c73350
02c7311c  ldr w8,[x22, #0x90]
02c73120  ldr w9,[x29, #0x18]
02c73124  cmp w8,w9
02c73128  b.cs 0x02c73354
02c7312c  mov w0,wzr
02c73130  mov w9,#0xffffffff
02c73134  add x8,x29,w8, SXTW  #0x2
02c73138  and w2,w0,#0x1
02c7313c  mov x0,x23
02c73140  mov x3,xzr
02c73144  str w9,[x8, #0x20]
02c73148  ldr w1,[x22, #0x90]
02c7314c  bl 0x02c6802c
02c73150  ldr w8,[x27, #0x18]
02c73154  cmp w20,w8
02c73158  b.cs 0x02c73354
02c7315c  and w2,w24,#0x1
02c73160  mov x0,x23
02c73164  mov w1,w20
02c73168  mov x3,xzr
02c7316c  str w25,[x28]
02c73170  bl 0x02c6809c
02c73174  mov x0,x21
02c73178  bl 0x02c762a4
02c7317c  mov x0,x19
02c73180  bl 0x02c73c20
02c73184  ldr x21,[x23, #0x98]
02c73188  cbz x21,0x02c73350
02c7318c  ldr w8,[x21, #0x18]
02c73190  cmp w8,#0x1
02c73194  b.lt 0x02c731c4
02c73198  mov x22,xzr
02c7319c  add x23,x21,#0x20
02c731a0  cmp w22,w8
02c731a4  b.cs 0x02c73354
02c731a8  ldr x0,[x23, x22, LSL #0x3]
02c731ac  cbz x0,0x02c73350
02c731b0  bl 0x02c762a4
02c731b4  ldr w8,[x21, #0x18]
02c731b8  add x22,x22,#0x1
02c731bc  cmp w22,w8
02c731c0  b.lt 0x02c731a0
02c731c4  adrp x22,0x5e5d000
02c731c8  adrp x8,0x5e59000
02c731cc  ldr x22,[x22, #0x5b0]
02c731d0  ldr x8,[x8, #0x1c0]
02c731d4  ldr x9,[x22]
02c731d8  ldr x0,[x8]
02c731dc  ldr x8,[x9, #0xb8]
02c731e0  ldr w9,[x0, #0xe4]
02c731e4  ldr x21,[x8, #0x8]
02c731e8  cbnz w9,0x02c731f0
02c731ec  bl 0x029f5bd0
02c731f0  mov x0,x21
02c731f4  mov x1,xzr
02c731f8  mov x2,xzr
02c731fc  bl 0x057dfa70
02c73200  tbz w0,#0x0,0x02c7321c
02c73204  ldr x8,[x22]
02c73208  ldr x8,[x8, #0xb8]
02c7320c  ldr x0,[x8, #0x8]
02c73210  cbz x0,0x02c73350
02c73214  mov x1,xzr
02c73218  bl 0x02c43744
02c7321c  adrp x21,0x625b000
02c73220  ldrb w8,[x21, #0xa57]
02c73224  cbnz w8,0x02c7323c
02c73228  adrp x0,0x5e5d000
02c7322c  ldr x0,[x0, #0xd70]
02c73230  bl 0x029f5a50
02c73234  mov w8,#0x1
02c73238  strb w8,[x21, #0xa57]
02c7323c  adrp x8,0x5e5d000
02c73240  ldr x8,[x8, #0xd70]
02c73244  ldr x8,[x8]
02c73248  ldr x8,[x8, #0xb8]
02c7324c  ldr x0,[x8]
02c73250  cbz x0,0x02c73350
02c73254  fmov s0,0x3f800000
02c73258  mov w1,#0x9
02c7325c  mov x2,xzr
02c73260  mov x3,xzr
02c73264  bl 0x02c1f10c
02c73268  adrp x21,0x5e58000
02c7326c  add x1,sp,#0xc
02c73270  ldr x21,[x21, #0xa10]
02c73274  str w20,[sp, #0xc]
02c73278  ldr x0,[x21, #0x48]
02c7327c  bl 0x029f5bd8
02c73280  mov x20,x0
02c73284  ldr x0,[x21, #0x48]
02c73288  add x1,sp,#0x8
02c7328c  str w25,[sp, #0x8]
02c73290  bl 0x029f5bd8
02c73294  adrp x8,0x5e63000
02c73298  mov x2,x0
02c7329c  mov x1,x20
02c732a0  ldr x8,[x8, #0xbf8]
02c732a4  mov x3,xzr
02c732a8  ldr x8,[x8]
02c732ac  mov x0,x8
02c732b0  bl 0x046c1d14
02c732b4  adrp x8,0x5e58000
02c732b8  mov x20,x0
02c732bc  ldr x8,[x8, #0xf08]
02c732c0  ldr x8,[x8]
02c732c4  ldr w9,[x8, #0xe4]
02c732c8  cbnz w9,0x02c732d4
02c732cc  mov x0,x8
02c732d0  bl 0x029f5bd0
02c732d4  mov x0,x20
02c732d8  mov x1,xzr
02c732dc  bl 0x05799e30
02c732e0  cmn w26,#0x1
02c732e4  b.eq 0x02c73328
02c732e8  mov w8,#0x6667
02c732ec  movk w8,#0x6666, LSL #16
02c732f0  smull x9,w26,w8
02c732f4  smull x8,w25,w8
02c732f8  lsr x10,x9,#0x3f
02c732fc  asr x9,x9,#0x21
02c73300  lsr x11,x8,#0x3f
02c73304  asr x8,x8,#0x21
02c73308  add w9,w9,w10
02c7330c  add w8,w8,w11
02c73310  cmp w9,w8
02c73314  b.ne 0x02c73328
02c73318  mov x0,xzr
02c7331c  bl 0x02be0088
02c73320  mov x1,xzr
02c73324  bl 0x02c1dd54
02c73328  mov x0,x19
02c7332c  bl 0x02c75d6c
02c73330  ldp x20,x19,[sp, #0x60]
02c73334  ldp x22,x21,[sp, #0x50]
02c73338  ldp x24,x23,[sp, #0x40]
02c7333c  ldp x26,x25,[sp, #0x30]
02c73340  ldp x28,x27,[sp, #0x20]
02c73344  ldp x29,x30,[sp, #0x10]
02c73348  add sp,sp,#0x70
02c7334c  ret
02c73350  bl 0x029f5cfc
02c73354  bl 0x029f5d04
