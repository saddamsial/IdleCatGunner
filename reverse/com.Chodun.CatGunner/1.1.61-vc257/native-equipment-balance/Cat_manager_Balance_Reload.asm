02c43744  stp x29,x30,[sp, #-0x60]!
02c43748  stp x28,x27,[sp, #0x10]
02c4374c  stp x26,x25,[sp, #0x20]
02c43750  stp x24,x23,[sp, #0x30]
02c43754  stp x22,x21,[sp, #0x40]
02c43758  stp x20,x19,[sp, #0x50]
02c4375c  adrp x20,0x625c000
02c43760  adrp x21,0x5e5d000
02c43764  adrp x25,0x5e59000
02c43768  ldrb w8,[x20, #0xc7]
02c4376c  ldr x21,[x21, #0x368]
02c43770  ldr x25,[x25, #0x1c0]
02c43774  mov x19,x0
02c43778  tbnz w8,#0x0,0x02c437f0
02c4377c  adrp x0,0x5e5d000
02c43780  ldr x0,[x0, #0xd40]
02c43784  bl 0x029f5a50
02c43788  adrp x0,0x5e63000
02c4378c  ldr x0,[x0, #0x108]
02c43790  bl 0x029f5a50
02c43794  adrp x0,0x5e62000
02c43798  ldr x0,[x0, #0x680]
02c4379c  bl 0x029f5a50
02c437a0  adrp x0,0x5e62000
02c437a4  ldr x0,[x0, #0xfe8]
02c437a8  bl 0x029f5a50
02c437ac  adrp x0,0x5e63000
02c437b0  ldr x0,[x0, #0x128]
02c437b4  bl 0x029f5a50
02c437b8  adrp x0,0x5e62000
02c437bc  ldr x0,[x0, #0x628]
02c437c0  bl 0x029f5a50
02c437c4  adrp x0,0x5e59000
02c437c8  ldr x0,[x0, #0x1c0]
02c437cc  bl 0x029f5a50
02c437d0  adrp x0,0x5e5e000
02c437d4  ldr x0,[x0, #0x70]
02c437d8  bl 0x029f5a50
02c437dc  adrp x0,0x5e5d000
02c437e0  ldr x0,[x0, #0x368]
02c437e4  bl 0x029f5a50
02c437e8  mov w8,#0x1
02c437ec  strb w8,[x20, #0xc7]
02c437f0  ldr x8,[x21]
02c437f4  ldr x0,[x25]
02c437f8  ldr x8,[x8, #0xb8]
02c437fc  ldr w9,[x0, #0xe4]
02c43800  ldr x20,[x8]
02c43804  cbnz w9,0x02c4380c
02c43808  bl 0x029f5bd0
02c4380c  adrp x26,0x5e5d000
02c43810  mov x0,x20
02c43814  mov x1,xzr
02c43818  ldr x26,[x26, #0xd40]
02c4381c  mov x2,xzr
02c43820  bl 0x057dfa70
02c43824  tbz w0,#0x0,0x02c43878
02c43828  ldr x8,[x21]
02c4382c  ldr x8,[x8, #0xb8]
02c43830  ldr x8,[x8]
02c43834  cbz x8,0x02c43b4c
02c43838  ldr w8,[x8, #0x20]
02c4383c  cmp w8,#0x5
02c43840  b.ne 0x02c43878
02c43844  adrp x20,0x5e5e000
02c43848  ldr x20,[x20, #0x70]
02c4384c  ldr x0,[x20]
02c43850  ldr w8,[x0, #0xe4]
02c43854  cbnz w8,0x02c43860
02c43858  bl 0x029f5bd0
02c4385c  ldr x0,[x20]
02c43860  ldr x8,[x0, #0xb8]
02c43864  ldr x8,[x8]
02c43868  cbz x8,0x02c43b4c
02c4386c  add x8,x8,#0x88
02c43870  mov w20,#0x1
02c43874  b 0x02c43890
02c43878  ldr x8,[x26]
02c4387c  ldr x8,[x8, #0xb8]
02c43880  ldr x8,[x8]
02c43884  cbz x8,0x02c43b4c
02c43888  mov w20,wzr
02c4388c  add x8,x8,#0x28
02c43890  adrp x9,0x5e62000
02c43894  adrp x21,0x5e62000
02c43898  ldr x9,[x9, #0x628]
02c4389c  ldr x21,[x21, #0x680]
02c438a0  ldr x22,[x8]
02c438a4  ldr x0,[x9]
02c438a8  bl 0x029f5cec
02c438ac  ldr x1,[x21]
02c438b0  mov x21,x0
02c438b4  bl 0x044f7180
02c438b8  cbz x22,0x02c43b4c
02c438bc  ldr x8,[x22, #0x18]
02c438c0  cmp w8,#0x1
02c438c4  b.lt 0x02c43954
02c438c8  adrp x24,0x5e63000
02c438cc  mov x23,xzr
02c438d0  and x8,x8,#0xffffffff
02c438d4  ldr x24,[x24, #0x108]
02c438d8  add x27,x22,#0x20
02c438dc  cmp x23,w8, UXTW 
02c438e0  b.cs 0x02c43b74
02c438e4  ldr w1,[x27, x23, LSL #0x2]
02c438e8  cmn w1,#0x1
02c438ec  b.eq 0x02c43944
02c438f0  cbz x21,0x02c43b4c
02c438f4  ldr w10,[x21, #0x1c]
02c438f8  ldr x8,[x21, #0x10]
02c438fc  ldr x9,[x24]
02c43900  add w10,w10,#0x1
02c43904  str w10,[x21, #0x1c]
02c43908  cbz x8,0x02c43b4c
02c4390c  ldrsw x10,[x21, #0x18]
02c43910  ldr w11,[x8, #0x18]
02c43914  cmp w10,w11
02c43918  b.cs 0x02c43930
02c4391c  add x8,x8,x10, LSL #0x2
02c43920  add w9,w10,#0x1
02c43924  str w9,[x21, #0x18]
02c43928  str w1,[x8, #0x20]
02c4392c  b 0x02c43944
02c43930  ldr x8,[x9, #0x20]
02c43934  mov x0,x21
02c43938  ldr x8,[x8, #0xc0]
02c4393c  ldr x2,[x8, #0x70]
02c43940  bl 0x044f7a10
02c43944  ldr w8,[x22, #0x18]
02c43948  add x23,x23,#0x1
02c4394c  cmp x23,w8, SXTW 
02c43950  b.lt 0x02c438dc
02c43954  ldr x8,[x19, #0x20]
02c43958  cbz x8,0x02c43b4c
02c4395c  adrp x27,0x5e63000
02c43960  mov w28,#0x4
02c43964  ldr x27,[x27, #0x128]
02c43968  ldr w9,[x8, #0x18]
02c4396c  sub x29,x28,#0x4
02c43970  cmp x29,w9, SXTW 
02c43974  b.ge 0x02c43b50
02c43978  cbz x21,0x02c43b4c
02c4397c  ldrsw x10,[x21, #0x18]
02c43980  cmp x29,x10
02c43984  b.ge 0x02c43b18
02c43988  ldr x2,[x27]
02c4398c  sub w1,w28,#0x4
02c43990  mov x0,x21
02c43994  bl 0x044f7718
02c43998  ldr x8,[x26]
02c4399c  ldr x8,[x8, #0xb8]
02c439a0  ldr x8,[x8]
02c439a4  cbz x8,0x02c43b4c
02c439a8  ldr x8,[x8, #0x20]
02c439ac  cbz x8,0x02c43b4c
02c439b0  ldr w9,[x8, #0x18]
02c439b4  mov w22,w0
02c439b8  cmp w0,w9
02c439bc  b.cs 0x02c43b74
02c439c0  ldr x9,[x19, #0x20]
02c439c4  cbz x9,0x02c43b4c
02c439c8  ldr w10,[x9, #0x18]
02c439cc  cmp x29,x10
02c439d0  b.cs 0x02c43b74
02c439d4  ldr x0,[x9, x28, LSL #0x3]
02c439d8  cbz x0,0x02c43b4c
02c439dc  add x8,x8,w22, SXTW  #0x3
02c439e0  mov x1,xzr
02c439e4  ldr x24,[x8, #0x20]
02c439e8  bl 0x057dc1c8
02c439ec  cbz x0,0x02c43b4c
02c439f0  mov x1,xzr
02c439f4  bl 0x057e0000
02c439f8  ldr x8,[x19, #0x20]
02c439fc  cbz x8,0x02c43b4c
02c43a00  ldr w9,[x8, #0x18]
02c43a04  cmp x29,x9
02c43a08  b.cs 0x02c43b74
02c43a0c  mov w23,w0
02c43a10  ldr x0,[x8, x28, LSL #0x3]
02c43a14  cbz x0,0x02c43b4c
02c43a18  mov w1,w22
02c43a1c  mov x2,x24
02c43a20  mov x3,xzr
02c43a24  bl 0x02c38f10
02c43a28  ldr x8,[x19, #0x20]
02c43a2c  cbz x8,0x02c43b4c
02c43a30  ldr w9,[x8, #0x18]
02c43a34  cmp x29,x9
02c43a38  b.cs 0x02c43b74
02c43a3c  ldr x0,[x8, x28, LSL #0x3]
02c43a40  cbz x0,0x02c43b4c
02c43a44  mov x1,xzr
02c43a48  bl 0x057dc1c8
02c43a4c  cbz x0,0x02c43b4c
02c43a50  mov w1,#0x1
02c43a54  mov x2,xzr
02c43a58  bl 0x057dff3c
02c43a5c  tbnz w23,#0x0,0x02c43b40
02c43a60  ldr x8,[x19, #0x20]
02c43a64  cbz x8,0x02c43b4c
02c43a68  ldr w9,[x8, #0x18]
02c43a6c  cmp x29,x9
02c43a70  b.cs 0x02c43b74
02c43a74  ldr x9,[x8, x28, LSL #0x3]
02c43a78  cbz x9,0x02c43b4c
02c43a7c  ldrb w9,[x9, #0x1b0]
02c43a80  cbz w9,0x02c43b40
02c43a84  ldr x0,[x25]
02c43a88  ldr x22,[x8, #0x20]
02c43a8c  ldr w9,[x0, #0xe4]
02c43a90  cbnz w9,0x02c43a98
02c43a94  bl 0x029f5bd0
02c43a98  mov x0,x22
02c43a9c  mov x1,xzr
02c43aa0  mov x2,xzr
02c43aa4  bl 0x057dfa70
02c43aa8  tbz w0,#0x0,0x02c43b40
02c43aac  ldr x8,[x19, #0x20]
02c43ab0  cbz x8,0x02c43b4c
02c43ab4  ldr w9,[x8, #0x18]
02c43ab8  cbz w9,0x02c43b74
02c43abc  ldr x0,[x8, #0x20]
02c43ac0  cbz x0,0x02c43b4c
02c43ac4  mov x1,xzr
02c43ac8  bl 0x057dc0f8
02c43acc  cbz x0,0x02c43b4c
02c43ad0  mov x1,xzr
02c43ad4  bl 0x057eed98
02c43ad8  ldr x8,[x19, #0x20]
02c43adc  cbz x8,0x02c43b4c
02c43ae0  ldr w9,[x8, #0x18]
02c43ae4  cmp x29,x9
02c43ae8  b.cs 0x02c43b74
02c43aec  ldr x0,[x8, x28, LSL #0x3]
02c43af0  cbz x0,0x02c43b4c
02c43af4  ldr s3,[x0, #0x1c4]
02c43af8  ldr s4,[x0, #0x1c8]
02c43afc  mov x1,xzr
02c43b00  ldr s5,[x0, #0x1cc]
02c43b04  fadd s0,s0,s3
02c43b08  fadd s1,s1,s4
02c43b0c  fadd s2,s2,s5
02c43b10  bl 0x02c42da4
02c43b14  b 0x02c43b40
02c43b18  cmp x29,x9
02c43b1c  b.cs 0x02c43b74
02c43b20  ldr x0,[x8, x28, LSL #0x3]
02c43b24  cbz x0,0x02c43b4c
02c43b28  mov x1,xzr
02c43b2c  bl 0x057dc1c8
02c43b30  cbz x0,0x02c43b4c
02c43b34  mov w1,wzr
02c43b38  mov x2,xzr
02c43b3c  bl 0x057dff3c
02c43b40  ldr x8,[x19, #0x20]
02c43b44  add x28,x28,#0x1
02c43b48  cbnz x8,0x02c43968
02c43b4c  bl 0x029f5cfc
02c43b50  mov x0,x19
02c43b54  mov w1,w20
02c43b58  ldp x20,x19,[sp, #0x50]
02c43b5c  ldp x22,x21,[sp, #0x40]
02c43b60  ldp x24,x23,[sp, #0x30]
02c43b64  ldp x26,x25,[sp, #0x20]
02c43b68  ldp x28,x27,[sp, #0x10]
02c43b6c  ldp x29,x30,[sp], #0x60
02c43b70  b 0x02c4424c
02c43b74  bl 0x029f5d04
