02c38f10  str d8,[sp, #-0x70]!
02c38f14  stp x29,x30,[sp, #0x10]
02c38f18  stp x28,x27,[sp, #0x20]
02c38f1c  stp x26,x25,[sp, #0x30]
02c38f20  stp x24,x23,[sp, #0x40]
02c38f24  stp x22,x21,[sp, #0x50]
02c38f28  stp x20,x19,[sp, #0x60]
02c38f2c  sub sp,sp,#0x2a0
02c38f30  adrp x23,0x625c000
02c38f34  adrp x22,0x5e5d000
02c38f38  mov x21,x2
02c38f3c  ldrb w8,[x23, #0x8a]
02c38f40  ldr x22,[x22, #0x5b0]
02c38f44  mov w20,w1
02c38f48  mov x19,x0
02c38f4c  tbnz w8,#0x0,0x02c39000
02c38f50  adrp x0,0x5e63000
02c38f54  ldr x0,[x0, #0x1e0]
02c38f58  bl 0x029f5a50
02c38f5c  adrp x0,0x5e5d000
02c38f60  ldr x0,[x0, #0x4c0]
02c38f64  bl 0x029f5a50
02c38f68  adrp x0,0x5e5d000
02c38f6c  ldr x0,[x0, #0x5b0]
02c38f70  bl 0x029f5a50
02c38f74  adrp x0,0x5e5d000
02c38f78  ldr x0,[x0, #0xd38]
02c38f7c  bl 0x029f5a50
02c38f80  adrp x0,0x5e59000
02c38f84  ldr x0,[x0, #0x1c0]
02c38f88  bl 0x029f5a50
02c38f8c  adrp x0,0x5e5d000
02c38f90  ldr x0,[x0, #0x4d0]
02c38f94  bl 0x029f5a50
02c38f98  adrp x0,0x5e5e000
02c38f9c  ldr x0,[x0, #0x70]
02c38fa0  bl 0x029f5a50
02c38fa4  adrp x0,0x5e5d000
02c38fa8  ldr x0,[x0, #0x4d8]
02c38fac  bl 0x029f5a50
02c38fb0  adrp x0,0x5e5d000
02c38fb4  ldr x0,[x0, #0x4e0]
02c38fb8  bl 0x029f5a50
02c38fbc  adrp x0,0x5e5e000
02c38fc0  ldr x0,[x0, #0x58]
02c38fc4  bl 0x029f5a50
02c38fc8  adrp x0,0x5e5d000
02c38fcc  ldr x0,[x0, #0xc20]
02c38fd0  bl 0x029f5a50
02c38fd4  adrp x0,0x5e5d000
02c38fd8  ldr x0,[x0, #0x368]
02c38fdc  bl 0x029f5a50
02c38fe0  adrp x0,0x5e5d000
02c38fe4  ldr x0,[x0, #0x4e8]
02c38fe8  bl 0x029f5a50
02c38fec  adrp x0,0x5e5e000
02c38ff0  ldr x0,[x0, #0x40]
02c38ff4  bl 0x029f5a50
02c38ff8  mov w8,#0x1
02c38ffc  strb w8,[x23, #0x8a]
02c39000  movi v0.2D,#0x0
02c39004  mov x0,x19
02c39008  mov x1,x21
02c3900c  str x21,[x0, #0x48]!
02c39010  stur w20,[x0, #-0x8]
02c39014  stp q0,q0,[sp, #0x200]
02c39018  stp q0,q0,[sp, #0x220]
02c3901c  stp q0,q0,[sp, #0x240]
02c39020  stp q0,q0,[sp, #0x260]
02c39024  stp q0,q0,[sp, #0x280]
02c39028  bl 0x029f59f4
02c3902c  ldr x8,[x22]
02c39030  ldr x8,[x8, #0xb8]
02c39034  ldr x8,[x8, #0x8]
02c39038  cbz x8,0x02c399a0
02c3903c  adrp x9,0x5e63000
02c39040  adrp x22,0x5e5d000
02c39044  adrp x26,0x5e5d000
02c39048  ldr x9,[x9, #0x1e0]
02c3904c  ldr x22,[x22, #0x4d0]
02c39050  ldr x26,[x26, #0x4d8]
02c39054  ldr x0,[x8, #0x20]
02c39058  mov x1,x19
02c3905c  ldr x2,[x9]
02c39060  bl 0x032b04d4
02c39064  ldrb w8,[x19, #0x1b0]
02c39068  fmov s0,0x41880000
02c3906c  fmov s1,0x41700000
02c39070  str w0,[x19, #0x268]
02c39074  ldr x0,[x22]
02c39078  cmp w8,#0x0
02c3907c  fcsel s8,s1,s0,eq
02c39080  str s8,[x19, #0x20]
02c39084  ldr w8,[x0, #0xe4]
02c39088  cbnz w8,0x02c39094
02c3908c  bl 0x029f5bd0
02c39090  ldr x0,[x22]
02c39094  ldr x8,[x26]
02c39098  ldr x9,[x0, #0xb8]
02c3909c  adrp x22,0x5e5d000
02c390a0  ldr w10,[x8, #0xe4]
02c390a4  ldr x22,[x22, #0x368]
02c390a8  ldr w23,[x9, #0x20]
02c390ac  cbnz w10,0x02c390bc
02c390b0  mov x0,x8
02c390b4  bl 0x029f5bd0
02c390b8  ldr x8,[x26]
02c390bc  ldr x8,[x8, #0xb8]
02c390c0  ldr w8,[x8, #0x60]
02c390c4  add w8,w8,w23
02c390c8  scvtf s0,w8
02c390cc  mov w8,#0x42c80000
02c390d0  fmov s1,w8
02c390d4  ldr x8,[x22]
02c390d8  fmul s0,s8,s0
02c390dc  fdiv s0,s0,s1
02c390e0  str s0,[x19, #0x20]
02c390e4  ldr x8,[x8, #0xb8]
02c390e8  ldr x8,[x8]
02c390ec  cbz x8,0x02c399a0
02c390f0  ldr w24,[x8, #0x20]
02c390f4  cmp w24,#0x4
02c390f8  b.ne 0x02c3913c
02c390fc  mov w8,#0x3c
02c39100  mov w9,#0x42700000
02c39104  mov w25,#0x1
02c39108  str w8,[x19, #0x128]
02c3910c  str w9,[x19, #0xa4]
02c39110  cbz x21,0x02c399a0
02c39114  ldp q0,q1,[x21, #0x20]
02c39118  add x22,x19,#0x50
02c3911c  mov x0,x22
02c39120  mov x1,xzr
02c39124  stp q0,q1,[sp, #0x220]
02c39128  stp q0,q1,[x19, #0x50]
02c3912c  bl 0x029f59f4
02c39130  cmp w24,#0x5
02c39134  b.ne 0x02c39240
02c39138  b 0x02c392b0
02c3913c  mov w8,#0x24
02c39140  mov w9,#0x42200000
02c39144  cmp w24,#0x2
02c39148  str w8,[x19, #0x128]
02c3914c  str w9,[x19, #0xa4]
02c39150  b.ne 0x02c391a4
02c39154  add x8,sp,#0x1e0
02c39158  mov w0,#0x1
02c3915c  mov x1,xzr
02c39160  bl 0x046544b8
02c39164  ldp q0,q1,[sp, #0x1e0]
02c39168  add x0,x19,#0x50
02c3916c  mov x1,xzr
02c39170  stp q0,q1,[x19, #0x50]
02c39174  bl 0x029f59f4
02c39178  adrp x8,0x5e5e000
02c3917c  mov x22,x19
02c39180  ldr x8,[x8, #0x40]
02c39184  ldr x1,[x8]
02c39188  str x1,[x22, #0x90]!
02c3918c  mov x0,x22
02c39190  bl 0x029f59f4
02c39194  str wzr,[x22, #0x10]
02c39198  cbz x21,0x02c399a0
02c3919c  mov w25,#0xffffffff
02c391a0  b 0x02c3981c
02c391a4  sub w25,w24,#0x3
02c391a8  cmp w25,#0x3
02c391ac  b.cc 0x02c39110
02c391b0  cbz x21,0x02c399a0
02c391b4  adrp x8,0x5e5d000
02c391b8  ldr x8,[x8, #0x4e8]
02c391bc  ldr x0,[x8]
02c391c0  ldr w8,[x0, #0xe4]
02c391c4  cbnz w8,0x02c391cc
02c391c8  bl 0x029f5bd0
02c391cc  add x8,sp,#0x1e0
02c391d0  mov x0,xzr
02c391d4  bl 0x02cb2d48
02c391d8  ldp q0,q1,[sp, #0x1e0]
02c391dc  add x8,sp,#0x1c0
02c391e0  add x0,x21,#0x20
02c391e4  add x1,sp,#0x280
02c391e8  mov x2,xzr
02c391ec  stp q0,q1,[sp, #0x280]
02c391f0  bl 0x04658538
02c391f4  ldp q0,q1,[sp, #0x1c0]
02c391f8  add x8,sp,#0x1a0
02c391fc  mov w0,#0x64
02c39200  mov x1,xzr
02c39204  stp q0,q1,[sp, #0x260]
02c39208  bl 0x046544b8
02c3920c  ldp q0,q1,[sp, #0x1a0]
02c39210  add x8,sp,#0x220
02c39214  add x0,sp,#0x260
02c39218  add x1,sp,#0x240
02c3921c  mov x2,xzr
02c39220  stp q0,q1,[sp, #0x240]
02c39224  bl 0x046587e8
02c39228  ldp q0,q1,[sp, #0x220]
02c3922c  add x22,x19,#0x50
02c39230  mov x0,x22
02c39234  mov x1,xzr
02c39238  stp q0,q1,[x19, #0x50]
02c3923c  bl 0x029f59f4
02c39240  add x8,sp,#0x1e0
02c39244  mov x0,xzr
02c39248  bl 0x02c87364
02c3924c  ldp q0,q1,[sp, #0x1e0]
02c39250  add x8,sp,#0x1c0
02c39254  add x1,sp,#0x280
02c39258  mov x0,x22
02c3925c  mov x2,xzr
02c39260  stp q0,q1,[sp, #0x280]
02c39264  bl 0x04658538
02c39268  ldp q0,q1,[sp, #0x1c0]
02c3926c  add x8,sp,#0x1a0
02c39270  mov w0,#0x64
02c39274  mov x1,xzr
02c39278  stp q0,q1,[sp, #0x260]
02c3927c  bl 0x046544b8
02c39280  ldp q0,q1,[sp, #0x1a0]
02c39284  add x8,sp,#0x180
02c39288  add x0,sp,#0x260
02c3928c  add x1,sp,#0x240
02c39290  mov x2,xzr
02c39294  stp q0,q1,[sp, #0x240]
02c39298  bl 0x046587e8
02c3929c  ldp q0,q1,[sp, #0x180]
02c392a0  mov x0,x22
02c392a4  mov x1,xzr
02c392a8  stp q0,q1,[x22]
02c392ac  bl 0x029f59f4
02c392b0  adrp x8,0x5e5d000
02c392b4  adrp x27,0x5e5d000
02c392b8  mov x1,xzr
02c392bc  ldr x8,[x8, #0x4e0]
02c392c0  ldr x8,[x8]
02c392c4  ldr x8,[x8, #0xb8]
02c392c8  ldr x27,[x27, #0xd38]
02c392cc  ldr w0,[x8]
02c392d0  add x8,sp,#0x1e0
02c392d4  bl 0x046544b8
02c392d8  ldp q0,q1,[sp, #0x1e0]
02c392dc  add x8,sp,#0x1c0
02c392e0  add x1,sp,#0x280
02c392e4  mov x0,x22
02c392e8  mov x2,xzr
02c392ec  stp q0,q1,[sp, #0x280]
02c392f0  bl 0x04658538
02c392f4  ldp q0,q1,[sp, #0x1c0]
02c392f8  add x8,sp,#0x1a0
02c392fc  mov w0,#0x64
02c39300  mov x1,xzr
02c39304  stp q0,q1,[sp, #0x260]
02c39308  bl 0x046544b8
02c3930c  ldp q0,q1,[sp, #0x1a0]
02c39310  add x8,sp,#0x180
02c39314  add x0,sp,#0x260
02c39318  add x1,sp,#0x240
02c3931c  mov x2,xzr
02c39320  stp q0,q1,[sp, #0x240]
02c39324  bl 0x046587e8
02c39328  ldp q1,q0,[sp, #0x180]
02c3932c  mov x0,x22
02c39330  mov x1,xzr
02c39334  stp q1,q0,[x22]
02c39338  bl 0x029f59f4
02c3933c  ldr x8,[x27]
02c39340  ldr x8,[x8, #0xb8]
02c39344  ldr x0,[x8]
02c39348  cbz x0,0x02c399a0
02c3934c  adrp x23,0x5e5d000
02c39350  mov x1,xzr
02c39354  ldr x23,[x23, #0x4c0]
02c39358  bl 0x02c5f2a4
02c3935c  add x8,sp,#0x160
02c39360  add w0,w0,#0x64
02c39364  mov x1,xzr
02c39368  bl 0x046544b8
02c3936c  ldp q0,q1,[sp, #0x160]
02c39370  add x8,sp,#0x140
02c39374  add x1,sp,#0x280
02c39378  mov x0,x22
02c3937c  mov x2,xzr
02c39380  stp q0,q1,[sp, #0x280]
02c39384  bl 0x04658538
02c39388  ldp q0,q1,[sp, #0x140]
02c3938c  add x8,sp,#0x120
02c39390  mov w0,#0x64
02c39394  mov x1,xzr
02c39398  stp q0,q1,[sp, #0x260]
02c3939c  bl 0x046544b8
02c393a0  ldp q0,q1,[sp, #0x120]
02c393a4  add x8,sp,#0x100
02c393a8  add x0,sp,#0x260
02c393ac  add x1,sp,#0x240
02c393b0  mov x2,xzr
02c393b4  stp q0,q1,[sp, #0x240]
02c393b8  bl 0x046587e8
02c393bc  ldp q1,q0,[sp, #0x100]
02c393c0  mov x0,x22
02c393c4  mov x1,xzr
02c393c8  stp q1,q0,[x22]
02c393cc  bl 0x029f59f4
02c393d0  ldr x0,[x26]
02c393d4  ldr w8,[x0, #0xe4]
02c393d8  cbnz w8,0x02c393e4
02c393dc  bl 0x029f5bd0
02c393e0  ldr x0,[x26]
02c393e4  ldr x1,[x0, #0xb8]
02c393e8  add x8,sp,#0xe0
02c393ec  mov x0,x22
02c393f0  mov x2,xzr
02c393f4  bl 0x04658538
02c393f8  ldp q0,q1,[sp, #0xe0]
02c393fc  add x8,sp,#0xc0
02c39400  mov w0,#0x64
02c39404  mov x1,xzr
02c39408  stp q0,q1,[sp, #0x280]
02c3940c  bl 0x046544b8
02c39410  ldp q0,q1,[sp, #0xc0]
02c39414  add x8,sp,#0xa0
02c39418  add x0,sp,#0x280
02c3941c  add x1,sp,#0x260
02c39420  mov x2,xzr
02c39424  stp q0,q1,[sp, #0x260]
02c39428  bl 0x046587e8
02c3942c  ldp q0,q1,[sp, #0xa0]
02c39430  add x8,sp,#0x80
02c39434  add x0,sp,#0x240
02c39438  mov x1,xzr
02c3943c  stp q0,q1,[sp, #0x240]
02c39440  bl 0x0465a16c
02c39444  ldp q1,q0,[sp, #0x80]
02c39448  mov x0,x22
02c3944c  mov x1,xzr
02c39450  stp q1,q0,[x22]
02c39454  bl 0x029f59f4
02c39458  ldr x0,[x23]
02c3945c  ldr w8,[x0, #0xe4]
02c39460  cbnz w8,0x02c3946c
02c39464  bl 0x029f5bd0
02c39468  ldr x0,[x23]
02c3946c  ldr x8,[x0, #0xb8]
02c39470  ldr x0,[x8]
02c39474  cbz x0,0x02c399a0
02c39478  mov w1,#0x1
02c3947c  bl 0x02c376a8
02c39480  add x8,sp,#0x60
02c39484  mov x1,xzr
02c39488  bl 0x046544b8
02c3948c  ldp q0,q1,[sp, #0x60]
02c39490  add x8,sp,#0x40
02c39494  add x1,sp,#0x280
02c39498  mov x0,x22
02c3949c  mov x2,xzr
02c394a0  stp q0,q1,[sp, #0x280]
02c394a4  bl 0x04658538
02c394a8  ldp q1,q0,[sp, #0x40]
02c394ac  mov x0,x22
02c394b0  mov x1,xzr
02c394b4  stp q1,q0,[x22]
02c394b8  bl 0x029f59f4
02c394bc  mov x0,x19
02c394c0  bl 0x02c38b0c
02c394c4  tbz w0,#0x0,0x02c39538
02c394c8  adrp x8,0x5e5e000
02c394cc  ldr x8,[x8, #0x70]
02c394d0  ldp q1,q0,[x22]
02c394d4  ldr x0,[x8]
02c394d8  stp q1,q0,[sp, #0x1e0]
02c394dc  ldr w8,[x0, #0xe4]
02c394e0  cbnz w8,0x02c394e8
02c394e4  bl 0x029f5bd0
02c394e8  mov x0,xzr
02c394ec  bl 0x02c51b44
02c394f0  adrp x8,0x5e5e000
02c394f4  mov w23,w0
02c394f8  ldr x8,[x8, #0x58]
02c394fc  ldr x8,[x8]
02c39500  ldr w9,[x8, #0xe4]
02c39504  cbnz w9,0x02c39510
02c39508  mov x0,x8
02c3950c  bl 0x029f5bd0
02c39510  ldp q0,q1,[sp, #0x1e0]
02c39514  add x8,sp,#0x1c0
02c39518  mov x0,sp
02c3951c  mov w1,w23
02c39520  mov x2,xzr
02c39524  stp q0,q1,[sp]
02c39528  bl 0x02c6da2c
02c3952c  ldp q0,q1,[sp, #0x1c0]
02c39530  stp q0,q1,[sp, #0x200]
02c39534  b 0x02c39578
02c39538  adrp x8,0x5e5e000
02c3953c  ldr x8,[x8, #0x58]
02c39540  ldp q1,q0,[x22]
02c39544  ldr w23,[x19, #0x268]
02c39548  ldr x0,[x8]
02c3954c  stp q1,q0,[sp, #0x1e0]
02c39550  ldr w8,[x0, #0xe4]
02c39554  cbnz w8,0x02c3955c
02c39558  bl 0x029f5bd0
02c3955c  ldp q0,q1,[sp, #0x1e0]
02c39560  add x8,sp,#0x200
02c39564  add x0,sp,#0x20
02c39568  mov w1,w23
02c3956c  mov x2,xzr
02c39570  stp q0,q1,[sp, #0x20]
02c39574  bl 0x02c6db38
02c39578  ldp q1,q0,[sp, #0x200]
02c3957c  mov x0,x22
02c39580  mov x1,xzr
02c39584  stp q1,q0,[x22]
02c39588  bl 0x029f59f4
02c3958c  cmp w24,#0x5
02c39590  b.ne 0x02c3965c
02c39594  adrp x28,0x5e5e000
02c39598  ldr x28,[x28, #0x70]
02c3959c  ldr x0,[x28]
02c395a0  ldr w8,[x0, #0xe4]
02c395a4  cbnz w8,0x02c395b0
02c395a8  bl 0x029f5bd0
02c395ac  ldr x0,[x28]
02c395b0  adrp x8,0x5e59000
02c395b4  ldr x8,[x8, #0x1c0]
02c395b8  ldr x9,[x0, #0xb8]
02c395bc  ldr x8,[x8]
02c395c0  ldr x23,[x9]
02c395c4  ldr w10,[x8, #0xe4]
02c395c8  cbnz w10,0x02c395d4
02c395cc  mov x0,x8
02c395d0  bl 0x029f5bd0
02c395d4  mov x0,x23
02c395d8  mov x1,xzr
02c395dc  mov x2,xzr
02c395e0  bl 0x057dfa70
02c395e4  tbz w0,#0x0,0x02c3965c
02c395e8  ldr x0,[x28]
02c395ec  ldr w23,[x21, #0x18]
02c395f0  ldr w8,[x0, #0xe4]
02c395f4  cbnz w8,0x02c39600
02c395f8  bl 0x029f5bd0
02c395fc  ldr x0,[x28]
02c39600  ldr x8,[x0, #0xb8]
02c39604  ldr x0,[x8]
02c39608  cbz x0,0x02c399a0
02c3960c  mov x1,xzr
02c39610  bl 0x02c5952c
02c39614  cmp w23,w0
02c39618  b.ne 0x02c3965c
02c3961c  add x8,sp,#0x1e0
02c39620  mov w0,#0xa
02c39624  mov x1,xzr
02c39628  bl 0x046544b8
02c3962c  ldp q0,q1,[sp, #0x1e0]
02c39630  add x8,sp,#0x1c0
02c39634  add x1,sp,#0x280
02c39638  mov x0,x22
02c3963c  mov x2,xzr
02c39640  stp q0,q1,[sp, #0x280]
02c39644  bl 0x04658538
02c39648  ldp q1,q0,[sp, #0x1c0]
02c3964c  mov x0,x22
02c39650  mov x1,xzr
02c39654  stp q1,q0,[x22]
02c39658  bl 0x029f59f4
02c3965c  mov x0,x22
02c39660  mov x1,xzr
02c39664  bl 0x0465bddc
02c39668  mov x1,x0
02c3966c  mov x0,x19
02c39670  str x1,[x0, #0x90]!
02c39674  bl 0x029f59f4
02c39678  ldr x8,[x27]
02c3967c  ldr x8,[x8, #0xb8]
02c39680  ldr x0,[x8]
02c39684  cbz x0,0x02c399a0
02c39688  mov x1,xzr
02c3968c  bl 0x02c5f2ec
02c39690  add x8,sp,#0x1e0
02c39694  add w0,w0,#0x7d
02c39698  mov x1,xzr
02c3969c  bl 0x046544b8
02c396a0  ldp q0,q1,[sp, #0x1e0]
02c396a4  add x8,sp,#0x1c0
02c396a8  add x1,sp,#0x280
02c396ac  mov x0,x22
02c396b0  mov x2,xzr
02c396b4  stp q0,q1,[sp, #0x280]
02c396b8  bl 0x04658538
02c396bc  ldp q0,q1,[sp, #0x1c0]
02c396c0  add x8,sp,#0x1a0
02c396c4  mov w0,#0x64
02c396c8  mov x1,xzr
02c396cc  stp q0,q1,[sp, #0x260]
02c396d0  bl 0x046544b8
02c396d4  ldp q0,q1,[sp, #0x1a0]
02c396d8  add x8,sp,#0x180
02c396dc  add x0,sp,#0x260
02c396e0  add x1,sp,#0x240
02c396e4  mov x2,xzr
02c396e8  stp q0,q1,[sp, #0x240]
02c396ec  bl 0x046587e8
02c396f0  ldp q0,q1,[sp, #0x180]
02c396f4  add x0,x19,#0x70
02c396f8  mov x1,xzr
02c396fc  stp q0,q1,[x19, #0x70]
02c39700  bl 0x029f59f4
02c39704  ldr x0,[x26]
02c39708  ldr w8,[x0, #0xe4]
02c3970c  cbnz w8,0x02c39718
02c39710  bl 0x029f5bd0
02c39714  ldr x0,[x26]
02c39718  ldr x9,[x0, #0xb8]
02c3971c  add x8,sp,#0x160
02c39720  add x0,x19,#0x70
02c39724  mov x2,xzr
02c39728  add x1,x9,#0x40
02c3972c  bl 0x04658538
02c39730  ldp q0,q1,[sp, #0x160]
02c39734  add x8,sp,#0x140
02c39738  mov w0,#0x64
02c3973c  mov x1,xzr
02c39740  stp q0,q1,[sp, #0x280]
02c39744  bl 0x046544b8
02c39748  ldp q0,q1,[sp, #0x140]
02c3974c  add x8,sp,#0x120
02c39750  add x0,sp,#0x280
02c39754  add x1,sp,#0x260
02c39758  mov x2,xzr
02c3975c  stp q0,q1,[sp, #0x260]
02c39760  bl 0x046587e8
02c39764  ldp q0,q1,[sp, #0x120]
02c39768  add x8,sp,#0x100
02c3976c  add x0,sp,#0x240
02c39770  mov x1,xzr
02c39774  stp q0,q1,[sp, #0x240]
02c39778  bl 0x0465a16c
02c3977c  ldp q0,q1,[sp, #0x100]
02c39780  add x0,x19,#0x70
02c39784  mov x1,xzr
02c39788  stp q0,q1,[x19, #0x70]
02c3978c  bl 0x029f59f4
02c39790  add x0,x19,#0x70
02c39794  mov x1,xzr
02c39798  bl 0x0465bddc
02c3979c  mov x1,x0
02c397a0  mov x0,x19
02c397a4  str x1,[x0, #0x98]!
02c397a8  bl 0x029f59f4
02c397ac  ldr x8,[x27]
02c397b0  ldr x8,[x8, #0xb8]
02c397b4  ldr x0,[x8]
02c397b8  cbz x0,0x02c399a0
02c397bc  mov x1,xzr
02c397c0  bl 0x02c5f2c8
02c397c4  scvtf s0,w0
02c397c8  mov w8,#0x42c80000
02c397cc  fmov s1,w8
02c397d0  fdiv s0,s0,s1
02c397d4  str s0,[x19, #0xa0]
02c397d8  cbnz w24,0x02c3981c
02c397dc  adrp x22,0x5e5d000
02c397e0  ldr x22,[x22, #0xc20]
02c397e4  ldr x0,[x22]
02c397e8  ldr w8,[x0, #0xe4]
02c397ec  cbnz w8,0x02c397f8
02c397f0  bl 0x029f5bd0
02c397f4  ldr x0,[x22]
02c397f8  ldr x8,[x0, #0xb8]
02c397fc  ldr x0,[x8, #0x10]
02c39800  cbz x0,0x02c399a0
02c39804  mov x1,xzr
02c39808  bl 0x02cad054
02c3980c  tbz w0,#0x0,0x02c3981c
02c39810  ldr s0,[x19, #0x20]
02c39814  fadd s0,s0,s0
02c39818  str s0,[x19, #0x20]
02c3981c  cmp w24,#0x5
02c39820  ldr s0,[x21, #0x40]
02c39824  cset w3,eq
02c39828  cmp w24,#0x0
02c3982c  cset w2,eq
02c39830  cmp w25,#0x3
02c39834  cset w1,cc
02c39838  bl 0x02c399cc
02c3983c  ldr x8,[x19, #0x118]
02c39840  str s0,[x19, #0xb0]
02c39844  cbz x8,0x02c399a0
02c39848  ldr w9,[x8, #0x18]
02c3984c  cmp w9,w20
02c39850  b.ls 0x02c399c8
02c39854  sxtw x22,w20
02c39858  add x8,x8,x22, LSL #0x3
02c3985c  ldr x8,[x8, #0x20]
02c39860  cbz x8,0x02c399a0
02c39864  ldr x1,[x8, #0x20]
02c39868  mov x21,x19
02c3986c  str x1,[x21, #0xe0]!
02c39870  mov x0,x21
02c39874  bl 0x029f59f4
02c39878  ldr x8,[x21, #0x38]
02c3987c  cbz x8,0x02c399a0
02c39880  ldr w9,[x8, #0x18]
02c39884  cmp w9,w20
02c39888  b.ls 0x02c399c8
02c3988c  add x8,x8,x22, LSL #0x3
02c39890  ldr x8,[x8, #0x20]
02c39894  cbz x8,0x02c399a0
02c39898  ldr x1,[x8, #0x28]
02c3989c  mov x21,x19
02c398a0  str x1,[x21, #0xf0]!
02c398a4  mov x0,x21
02c398a8  bl 0x029f59f4
02c398ac  ldr x8,[x21, #0x28]
02c398b0  cbz x8,0x02c399a0
02c398b4  ldr w9,[x8, #0x18]
02c398b8  cmp w9,w20
02c398bc  b.ls 0x02c399c8
02c398c0  add x8,x8,x22, LSL #0x3
02c398c4  ldr x8,[x8, #0x20]
02c398c8  cbz x8,0x02c399a0
02c398cc  ldr x1,[x8, #0x30]
02c398d0  mov x21,x19
02c398d4  str x1,[x21, #0xf8]!
02c398d8  mov x0,x21
02c398dc  bl 0x029f59f4
02c398e0  ldr x8,[x21, #0x20]
02c398e4  cbz x8,0x02c399a0
02c398e8  mov x21,xzr
02c398ec  mov w20,w20
02c398f0  ldr w9,[x8, #0x18]
02c398f4  cmp w21,w9
02c398f8  b.ge 0x02c3993c
02c398fc  cmp w21,w9
02c39900  b.cs 0x02c399c8
02c39904  add x8,x8,x21, LSL #0x3
02c39908  ldr x0,[x8, #0x20]
02c3990c  cbz x0,0x02c399a0
02c39910  mov x1,xzr
02c39914  bl 0x057dc1c8
02c39918  cbz x0,0x02c399a0
02c3991c  cmp w20,w21
02c39920  mov x2,xzr
02c39924  cset w1,eq
02c39928  bl 0x057dff3c
02c3992c  ldr x8,[x19, #0x118]
02c39930  add x21,x21,#0x1
02c39934  cbnz x8,0x02c398f0
02c39938  b 0x02c399a0
02c3993c  ldr x8,[x19, #0x280]
02c39940  str wzr,[x19, #0x13c]
02c39944  cbz x8,0x02c399a0
02c39948  mov w9,#0x6667
02c3994c  mov x21,xzr
02c39950  movk w9,#0x6666, LSL #16
02c39954  smull x9,w20,w9
02c39958  lsr x10,x9,#0x3f
02c3995c  asr x9,x9,#0x21
02c39960  add w20,w9,w10
02c39964  ldr w9,[x8, #0x18]
02c39968  cmp w21,w9
02c3996c  b.ge 0x02c399a4
02c39970  cmp w21,w9
02c39974  b.cs 0x02c399c8
02c39978  add x8,x8,x21, LSL #0x3
02c3997c  ldr x0,[x8, #0x20]
02c39980  cbz x0,0x02c399a0
02c39984  cmp w20,w21
02c39988  mov x2,xzr
02c3998c  cset w1,eq
02c39990  bl 0x057dff3c
02c39994  ldr x8,[x19, #0x280]
02c39998  add x21,x21,#0x1
02c3999c  cbnz x8,0x02c39964
02c399a0  bl 0x029f5cfc
02c399a4  add sp,sp,#0x2a0
02c399a8  ldp x20,x19,[sp, #0x60]
02c399ac  ldp x22,x21,[sp, #0x50]
02c399b0  ldp x24,x23,[sp, #0x40]
02c399b4  ldp x26,x25,[sp, #0x30]
02c399b8  ldp x28,x27,[sp, #0x20]
02c399bc  ldp x29,x30,[sp, #0x10]
02c399c0  ldr d8,[sp], #0x70
02c399c4  ret
02c399c8  bl 0x029f5d04
