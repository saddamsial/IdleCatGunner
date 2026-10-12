02b841cc  sub sp,sp,#0x80
02b841d0  stp x29,x30,[sp, #0x20]
02b841d4  stp x28,x27,[sp, #0x30]
02b841d8  stp x26,x25,[sp, #0x40]
02b841dc  stp x24,x23,[sp, #0x50]
02b841e0  stp x22,x21,[sp, #0x60]
02b841e4  stp x20,x19,[sp, #0x70]
02b841e8  adrp x21,0x625b000
02b841ec  adrp x24,0x5e5d000
02b841f0  mov w20,w4
02b841f4  ldrb w8,[x21, #0x8e8]
02b841f8  ldr x24,[x24, #0x740]
02b841fc  mov x22,x2
02b84200  mov w23,w1
02b84204  mov x19,x0
02b84208  str w1,[sp, #0x1c]
02b8420c  tbnz w8,#0x0,0x02b84290
02b84210  adrp x0,0x5e5d000
02b84214  ldr x0,[x0, #0x748]
02b84218  bl 0x029f5a50
02b8421c  adrp x0,0x5e5d000
02b84220  ldr x0,[x0, #0x750]
02b84224  bl 0x029f5a50
02b84228  adrp x0,0x5e5d000
02b8422c  ldr x0,[x0, #0x758]
02b84230  bl 0x029f5a50
02b84234  adrp x0,0x5e59000
02b84238  ldr x0,[x0, #0x8a8]
02b8423c  bl 0x029f5a50
02b84240  adrp x0,0x5e5a000
02b84244  ldr x0,[x0, #0xf60]
02b84248  bl 0x029f5a50
02b8424c  adrp x0,0x5e5d000
02b84250  ldr x0,[x0, #0x740]
02b84254  bl 0x029f5a50
02b84258  adrp x0,0x5e5d000
02b8425c  ldr x0,[x0, #0x760]
02b84260  bl 0x029f5a50
02b84264  adrp x0,0x5e5d000
02b84268  ldr x0,[x0, #0x768]
02b8426c  bl 0x029f5a50
02b84270  adrp x0,0x5e5d000
02b84274  ldr x0,[x0, #0x770]
02b84278  bl 0x029f5a50
02b8427c  adrp x0,0x5e5d000
02b84280  ldr x0,[x0, #0x778]
02b84284  bl 0x029f5a50
02b84288  mov w8,#0x1
02b8428c  strb w8,[x21, #0x8e8]
02b84290  ldr x0,[x24]
02b84294  bl 0x029f5cec
02b84298  mov x1,xzr
02b8429c  mov x24,x0
02b842a0  bl 0x057b417c
02b842a4  mov x21,x19
02b842a8  mov x1,x24
02b842ac  str x24,[x21, #0x48]!
02b842b0  mov x0,x21
02b842b4  bl 0x029f59f4
02b842b8  ldr x0,[x21]
02b842bc  cbz x0,0x02b84608
02b842c0  mov w1,#0x34
02b842c4  mov x2,xzr
02b842c8  bl 0x057e6770
02b842cc  ldr x0,[x21]
02b842d0  cbz x0,0x02b84608
02b842d4  adrp x8,0x5e5d000
02b842d8  mov x2,xzr
02b842dc  ldr x8,[x8, #0x768]
02b842e0  ldr x1,[x8]
02b842e4  bl 0x057e52d0
02b842e8  ldr x0,[x21]
02b842ec  cbz x0,0x02b84608
02b842f0  adrp x24,0x5e5d000
02b842f4  adrp x25,0x5e5a000
02b842f8  mov x1,xzr
02b842fc  ldr x24,[x24, #0x760]
02b84300  ldr x25,[x25, #0xf60]
02b84304  bl 0x057b8fe0
02b84308  ldr x0,[x24]
02b8430c  mov x1,xzr
02b84310  bl 0x057abe9c
02b84314  ldr x8,[x25]
02b84318  mov x24,x0
02b8431c  mov x0,x8
02b84320  bl 0x029f5cec
02b84324  mov x1,x24
02b84328  mov x2,xzr
02b8432c  mov x25,x0
02b84330  bl 0x057ad088
02b84334  mov x24,x19
02b84338  mov x1,x25
02b8433c  str x25,[x24, #0x50]!
02b84340  mov x0,x24
02b84344  bl 0x029f59f4
02b84348  ldur x11,[x24, #-0x28]
02b8434c  cbz x11,0x02b84608
02b84350  adrp x25,0x5e5d000
02b84354  adrp x29,0x5e59000
02b84358  adrp x28,0x5e5d000
02b8435c  adrp x27,0x5e5d000
02b84360  adrp x26,0x5e5d000
02b84364  ldr w9,[x11, #0x18]
02b84368  ldr x25,[x25, #0x770]
02b8436c  ldr x29,[x29, #0x8a8]
02b84370  ldr x28,[x28, #0x778]
02b84374  ldr x27,[x27, #0x750]
02b84378  ldr x26,[x26, #0x758]
02b8437c  mov x8,xzr
02b84380  mov x10,xzr
02b84384  add x11,x11,#0x34
02b84388  cmp x8,x9
02b8438c  b.cs 0x02b84604
02b84390  add x12,x8,#0x1
02b84394  stur w10,[x11, #-0x14]
02b84398  cmp x12,x9
02b8439c  b.cs 0x02b84604
02b843a0  add x12,x8,#0x2
02b843a4  add w13,w10,#0x1
02b843a8  cmp x12,x9
02b843ac  stur w13,[x11, #-0x10]
02b843b0  b.cs 0x02b84604
02b843b4  add x13,x8,#0x3
02b843b8  add x12,x10,#0x2
02b843bc  cmp x13,x9
02b843c0  stur w12,[x11, #-0xc]
02b843c4  b.cs 0x02b84604
02b843c8  add x13,x8,#0x4
02b843cc  stur w12,[x11, #-0x8]
02b843d0  cmp x13,x9
02b843d4  b.cs 0x02b84604
02b843d8  add x12,x8,#0x5
02b843dc  add w13,w10,#0x3
02b843e0  cmp x12,x9
02b843e4  stur w13,[x11, #-0x4]
02b843e8  b.cs 0x02b84604
02b843ec  str w10,[x11], #0x18
02b843f0  cmp x10,#0xffc
02b843f4  add x10,x10,#0x4
02b843f8  add x8,x8,#0x6
02b843fc  b.cc 0x02b84388
02b84400  ldr x0,[x21]
02b84404  cbz x0,0x02b84608
02b84408  ldr x1,[x19, #0x10]
02b8440c  mov x2,xzr
02b84410  bl 0x057b6ef4
02b84414  ldr x0,[x19, #0x48]
02b84418  cbz x0,0x02b84608
02b8441c  ldr x1,[x19, #0x28]
02b84420  mov x2,xzr
02b84424  bl 0x057b8240
02b84428  str w23,[x19, #0x58]
02b8442c  cbz x22,0x02b84608
02b84430  ldr x23,[x19, #0x50]
02b84434  mov x0,x22
02b84438  mov x1,xzr
02b8443c  bl 0x058cf7a0
02b84440  cbz x0,0x02b84608
02b84444  mov x1,xzr
02b84448  bl 0x057ad630
02b8444c  cbz x23,0x02b84608
02b84450  mov x1,x0
02b84454  mov x0,x23
02b84458  mov x2,xzr
02b8445c  bl 0x057ad6a8
02b84460  add x0,sp,#0x1c
02b84464  mov x1,xzr
02b84468  bl 0x0484e6a4
02b8446c  ldr x8,[x25]
02b84470  mov x1,x0
02b84474  mov x2,xzr
02b84478  mov x0,x8
02b8447c  bl 0x046b2d44
02b84480  ldr x8,[x29]
02b84484  mov x23,x0
02b84488  mov x0,x8
02b8448c  bl 0x029f5cec
02b84490  mov x1,x23
02b84494  mov x2,xzr
02b84498  mov x22,x0
02b8449c  bl 0x057e06c0
02b844a0  ldr x0,[x28]
02b844a4  mov x1,xzr
02b844a8  bl 0x057e0dec
02b844ac  cbz x22,0x02b84608
02b844b0  mov w1,w0
02b844b4  mov x0,x22
02b844b8  mov x2,xzr
02b844bc  bl 0x057dfe78
02b844c0  ldr x1,[x27]
02b844c4  mov x0,x22
02b844c8  bl 0x030a0224
02b844cc  mov x23,x19
02b844d0  mov x1,x0
02b844d4  str x0,[x23, #0x38]!
02b844d8  mov x0,x23
02b844dc  bl 0x029f59f4
02b844e0  ldr x0,[x23]
02b844e4  cbz x0,0x02b84608
02b844e8  ldr x1,[x19, #0x48]
02b844ec  mov x2,xzr
02b844f0  bl 0x057b34c0
02b844f4  ldr x1,[x26]
02b844f8  mov x0,x22
02b844fc  bl 0x030a0224
02b84500  mov x1,x0
02b84504  str x0,[x19, #0x40]!
02b84508  mov x0,x19
02b8450c  bl 0x029f59f4
02b84510  ldr x0,[x19]
02b84514  cbz x0,0x02b84608
02b84518  ldr x1,[x24]
02b8451c  mov x2,xzr
02b84520  bl 0x057aba70
02b84524  ldr x0,[x19]
02b84528  cbz x0,0x02b84608
02b8452c  mov w1,w20
02b84530  mov x2,xzr
02b84534  bl 0x057ab5b8
02b84538  ldr x0,[x19]
02b8453c  cbz x0,0x02b84608
02b84540  mov w1,wzr
02b84544  mov x2,xzr
02b84548  bl 0x057aaf70
02b8454c  adrp x20,0x5e5d000
02b84550  ldr x0,[x19]
02b84554  ldr x20,[x20, #0x748]
02b84558  cbz x0,0x02b84608
02b8455c  mov w1,wzr
02b84560  mov x2,xzr
02b84564  bl 0x057ab0e8
02b84568  ldr x0,[x19]
02b8456c  cbz x0,0x02b84608
02b84570  mov w1,wzr
02b84574  mov x2,xzr
02b84578  bl 0x057aa980
02b8457c  ldr x0,[x19]
02b84580  cbz x0,0x02b84608
02b84584  mov w1,wzr
02b84588  mov x2,xzr
02b8458c  bl 0x057aaaf8
02b84590  ldr x0,[x19]
02b84594  cbz x0,0x02b84608
02b84598  mov w1,#0x2
02b8459c  mov x2,xzr
02b845a0  bl 0x057aadf8
02b845a4  ldr x0,[x20]
02b845a8  ldr x19,[x21]
02b845ac  ldr w8,[x0, #0xe4]
02b845b0  cbnz w8,0x02b845bc
02b845b4  bl 0x029f5bd0
02b845b8  ldr x0,[x20]
02b845bc  cbz x19,0x02b84608
02b845c0  ldr x8,[x0, #0xb8]
02b845c4  mov x1,sp
02b845c8  mov x0,x19
02b845cc  mov x2,xzr
02b845d0  ldr q0,[x8]
02b845d4  ldr x8,[x8, #0x10]
02b845d8  str q0,[sp]
02b845dc  str x8,[sp, #0x10]
02b845e0  bl 0x057b64bc
02b845e4  ldp x20,x19,[sp, #0x70]
02b845e8  ldp x22,x21,[sp, #0x60]
02b845ec  ldp x24,x23,[sp, #0x50]
02b845f0  ldp x26,x25,[sp, #0x40]
02b845f4  ldp x28,x27,[sp, #0x30]
02b845f8  ldp x29,x30,[sp, #0x20]
02b845fc  add sp,sp,#0x80
02b84600  ret
02b84604  bl 0x029f5d04
02b84608  bl 0x029f5cfc
