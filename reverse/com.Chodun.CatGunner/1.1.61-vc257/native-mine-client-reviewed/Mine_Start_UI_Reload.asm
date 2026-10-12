02c49110  sub sp,sp,#0x60
02c49114  str x30,[sp, #0x10]
02c49118  stp x26,x25,[sp, #0x20]
02c4911c  stp x24,x23,[sp, #0x30]
02c49120  stp x22,x21,[sp, #0x40]
02c49124  stp x20,x19,[sp, #0x50]
02c49128  adrp x20,0x625c000
02c4912c  adrp x23,0x5e5d000
02c49130  mov x19,x0
02c49134  ldrb w8,[x20, #0x123]
02c49138  ldr x23,[x23, #0xd48]
02c4913c  tbnz w8,#0x0,0x02c4916c
02c49140  adrp x0,0x5e5d000
02c49144  ldr x0,[x0, #0xd48]
02c49148  bl 0x029f5a50
02c4914c  adrp x0,0x5e63000
02c49150  ldr x0,[x0, #0x398]
02c49154  bl 0x029f5a50
02c49158  adrp x0,0x5e61000
02c4915c  ldr x0,[x0, #0xf28]
02c49160  bl 0x029f5a50
02c49164  mov w8,#0x1
02c49168  strb w8,[x20, #0x123]
02c4916c  ldr x8,[x23]
02c49170  ldr x8,[x8, #0xb8]
02c49174  ldr x0,[x8]
02c49178  cbz x0,0x02c49320
02c4917c  bl 0x02c49008
02c49180  ldr x8,[x23]
02c49184  ldr x8,[x8, #0xb8]
02c49188  ldr x8,[x8]
02c4918c  cbz x8,0x02c49320
02c49190  adrp x26,0x5e61000
02c49194  ldr x26,[x26, #0xf28]
02c49198  ldr w25,[x8, #0x50]
02c4919c  bl 0x02c4946c
02c491a0  adrp x24,0x5e58000
02c491a4  mov w20,w0
02c491a8  sub w8,w0,w25
02c491ac  ldr x24,[x24, #0xa10]
02c491b0  ldr x21,[x19, #0x20]
02c491b4  add x1,sp,#0x1c
02c491b8  str w8,[sp, #0x1c]
02c491bc  ldr x0,[x24, #0x48]
02c491c0  bl 0x029f5bd8
02c491c4  mov x22,x0
02c491c8  ldr x0,[x24, #0x48]
02c491cc  add x1,sp,#0x18
02c491d0  str w20,[sp, #0x18]
02c491d4  bl 0x029f5bd8
02c491d8  ldr x8,[x26]
02c491dc  mov x2,x0
02c491e0  mov x1,x22
02c491e4  mov x3,xzr
02c491e8  mov x0,x8
02c491ec  bl 0x046c1d14
02c491f0  cbz x21,0x02c49320
02c491f4  ldr x8,[x21]
02c491f8  mov x1,x0
02c491fc  mov x0,x21
02c49200  ldr x9,[x8, #0x558]
02c49204  ldr x2,[x8, #0x560]
02c49208  blr x9
02c4920c  fmov s3,0x3f800000
02c49210  fmov s2,0x3f800000
02c49214  ldr x0,[x19, #0x20]
02c49218  fmov s1,0x3f800000
02c4921c  fmov s0,0x3f800000
02c49220  cmp w20,w25
02c49224  b.gt 0x02c49230
02c49228  ldp s0,s1,[x19, #0x28]
02c4922c  ldp s2,s3,[x19, #0x30]
02c49230  cbz x0,0x02c49320
02c49234  ldr x8,[x0]
02c49238  ldr x9,[x8, #0x2a8]
02c4923c  ldr x1,[x8, #0x2b0]
02c49240  blr x9
02c49244  ldr x8,[x23]
02c49248  ldr x8,[x8, #0xb8]
02c4924c  ldr x0,[x8]
02c49250  cbz x0,0x02c49320
02c49254  bl 0x02c4a0a0
02c49258  ldr x8,[x19, #0x38]
02c4925c  cbz x8,0x02c49320
02c49260  mov w9,#0x1
02c49264  mov w20,w0
02c49268  mov x2,xzr
02c4926c  bic w1,w9,w0
02c49270  mov x0,x8
02c49274  bl 0x057dff3c
02c49278  ldr x0,[x19, #0x40]
02c4927c  cbz x0,0x02c49320
02c49280  and w1,w20,#0x1
02c49284  mov x2,xzr
02c49288  bl 0x057dff3c
02c4928c  tbz w20,#0x0,0x02c492f4
02c49290  ldr x8,[x23]
02c49294  ldr x8,[x8, #0xb8]
02c49298  ldr x0,[x8]
02c4929c  cbz x0,0x02c49320
02c492a0  ldr x20,[x19, #0x48]
02c492a4  bl 0x02c4a5ac
02c492a8  ldr x8,[x24, #0x48]
02c492ac  str w0,[sp, #0xc]
02c492b0  add x1,sp,#0xc
02c492b4  mov x0,x8
02c492b8  bl 0x029f5bd8
02c492bc  adrp x8,0x5e63000
02c492c0  mov x1,x0
02c492c4  mov x2,xzr
02c492c8  ldr x8,[x8, #0x398]
02c492cc  ldr x8,[x8]
02c492d0  mov x0,x8
02c492d4  bl 0x046b6c0c
02c492d8  cbz x20,0x02c49320
02c492dc  ldr x8,[x20]
02c492e0  mov x1,x0
02c492e4  mov x0,x20
02c492e8  ldr x9,[x8, #0x558]
02c492ec  ldr x2,[x8, #0x560]
02c492f0  blr x9
02c492f4  mov x0,x19
02c492f8  bl 0x02c4bb74
02c492fc  mov x0,x19
02c49300  bl 0x02c4bd28
02c49304  ldp x20,x19,[sp, #0x50]
02c49308  ldr x30,[sp, #0x10]
02c4930c  ldp x22,x21,[sp, #0x40]
02c49310  ldp x24,x23,[sp, #0x30]
02c49314  ldp x26,x25,[sp, #0x20]
02c49318  add sp,sp,#0x60
02c4931c  ret
02c49320  bl 0x029f5cfc
