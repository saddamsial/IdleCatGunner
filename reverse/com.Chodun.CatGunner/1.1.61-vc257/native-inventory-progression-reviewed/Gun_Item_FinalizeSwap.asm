02c73fc4  sub sp,sp,#0x70
02c73fc8  stp x29,x30,[sp, #0x10]
02c73fcc  stp x28,x27,[sp, #0x20]
02c73fd0  stp x26,x25,[sp, #0x30]
02c73fd4  stp x24,x23,[sp, #0x40]
02c73fd8  stp x22,x21,[sp, #0x50]
02c73fdc  stp x20,x19,[sp, #0x60]
02c73fe0  adrp x20,0x625c000
02c73fe4  adrp x21,0x5e5d000
02c73fe8  mov x19,x0
02c73fec  ldrb w8,[x20, #0x2e0]
02c73ff0  ldr x21,[x21, #0xd40]
02c73ff4  tbnz w8,#0x0,0x02c74018
02c73ff8  adrp x0,0x5e63000
02c73ffc  ldr x0,[x0, #0xaa8]
02c74000  bl 0x029f5a50
02c74004  adrp x0,0x5e5d000
02c74008  ldr x0,[x0, #0xd40]
02c7400c  bl 0x029f5a50
02c74010  mov w8,#0x1
02c74014  strb w8,[x20, #0x2e0]
02c74018  ldr x8,[x21]
02c7401c  ldr x8,[x8, #0xb8]
02c74020  ldr x20,[x8]
02c74024  cbz x20,0x02c74214
02c74028  ldr x8,[x19, #0xd0]
02c7402c  cbz x8,0x02c74214
02c74030  adrp x27,0x5e63000
02c74034  ldr w21,[x19, #0xdc]
02c74038  ldr x27,[x27, #0xaa8]
02c7403c  tbnz w21,#0x1f,0x02c741e4
02c74040  ldr x28,[x20, #0x40]
02c74044  cbz x28,0x02c74214
02c74048  ldr w9,[x28, #0x18]
02c7404c  cmp w21,w9
02c74050  b.ge 0x02c741e4
02c74054  ldr w22,[x8, #0x90]
02c74058  tbnz w22,#0x1f,0x02c741e4
02c7405c  cmp w22,w9
02c74060  b.ge 0x02c741e4
02c74064  mov x0,x20
02c74068  mov w1,w21
02c7406c  mov x2,xzr
02c74070  bl 0x02c68408
02c74074  mov w23,w0
02c74078  mov x0,x20
02c7407c  mov w1,w22
02c74080  mov x2,xzr
02c74084  bl 0x02c68408
02c74088  ldr w9,[x19, #0xd8]
02c7408c  mov w24,w0
02c74090  cmn w9,#0x1
02c74094  b.eq 0x02c741b4
02c74098  ldr w8,[x28, #0x18]
02c7409c  cmp w9,w8
02c740a0  b.ge 0x02c741b4
02c740a4  cmp w21,w8
02c740a8  b.cs 0x02c74218
02c740ac  cmp w22,w8
02c740b0  str w24,[sp, #0xc]
02c740b4  b.cs 0x02c74218
02c740b8  add x24,x28,x21, LSL #0x2
02c740bc  add x29,x28,x22, LSL #0x2
02c740c0  mov x0,x20
02c740c4  mov w1,w21
02c740c8  mov x2,xzr
02c740cc  ldr w8,[x24, #0x20]!
02c740d0  ldr w25,[x29, #0x20]!
02c740d4  str w8,[sp, #0x8]
02c740d8  bl 0x02c67f50
02c740dc  str w0,[sp, #0x4]
02c740e0  mov x0,x20
02c740e4  mov w1,w22
02c740e8  mov x2,xzr
02c740ec  bl 0x02c67f50
02c740f0  ldr w8,[x28, #0x18]
02c740f4  cmp w21,w8
02c740f8  b.cs 0x02c74218
02c740fc  mov w26,w0
02c74100  mov w8,#0xffffffff
02c74104  mov x0,x20
02c74108  mov w1,w21
02c7410c  mov w2,wzr
02c74110  mov x3,xzr
02c74114  str w8,[x24]
02c74118  bl 0x02c6802c
02c7411c  ldrsw x8,[x19, #0xd8]
02c74120  ldr w9,[x28, #0x18]
02c74124  cmp w8,w9
02c74128  b.cs 0x02c74218
02c7412c  add x8,x28,x8, LSL #0x2
02c74130  and w2,w26,#0x1
02c74134  mov x0,x20
02c74138  mov x3,xzr
02c7413c  str w25,[x8, #0x20]
02c74140  ldr w1,[x19, #0xd8]
02c74144  bl 0x02c6802c
02c74148  ldr w8,[x19, #0xd8]
02c7414c  cmp w8,w22
02c74150  b.eq 0x02c7417c
02c74154  ldr w8,[x28, #0x18]
02c74158  cmp w22,w8
02c7415c  b.cs 0x02c74218
02c74160  mov w8,#0xffffffff
02c74164  mov x0,x20
02c74168  mov w1,w22
02c7416c  mov w2,wzr
02c74170  mov x3,xzr
02c74174  str w8,[x29]
02c74178  bl 0x02c6802c
02c7417c  ldr w8,[x28, #0x18]
02c74180  cmp w22,w8
02c74184  b.cs 0x02c74218
02c74188  ldp w8,w9,[sp, #0x4]
02c7418c  mov x0,x20
02c74190  mov w1,w22
02c74194  mov x3,xzr
02c74198  and w2,w8,#0x1
02c7419c  str w9,[x29]
02c741a0  bl 0x02c6802c
02c741a4  ldr w24,[sp, #0xc]
02c741a8  mov w8,wzr
02c741ac  tbz w23,#0x0,0x02c741d0
02c741b0  b 0x02c741e0
02c741b4  mov x0,x20
02c741b8  mov w1,w21
02c741bc  mov w2,w22
02c741c0  mov x3,xzr
02c741c4  bl 0x02c681e0
02c741c8  mov w8,#0x1
02c741cc  tbnz w23,#0x0,0x02c741e0
02c741d0  tbz w24,#0x0,0x02c741e4
02c741d4  mov w22,w21
02c741d8  tbnz w8,#0x0,0x02c741e0
02c741dc  ldr w22,[x19, #0xd8]
02c741e0  str w22,[x20, #0xc0]
02c741e4  ldr x8,[x27]
02c741e8  ldr x8,[x8, #0xb8]
02c741ec  ldr x0,[x8]
02c741f0  cbz x0,0x02c74214
02c741f4  ldp x20,x19,[sp, #0x60]
02c741f8  ldp x22,x21,[sp, #0x50]
02c741fc  ldp x24,x23,[sp, #0x40]
02c74200  ldp x26,x25,[sp, #0x30]
02c74204  ldp x28,x27,[sp, #0x20]
02c74208  ldp x29,x30,[sp, #0x10]
02c7420c  add sp,sp,#0x70
02c74210  b 0x02c73c20
02c74214  bl 0x029f5cfc
02c74218  bl 0x029f5d04
