02a4335c  sub sp,sp,#0x80
02a43360  str x30,[sp, #0x20]
02a43364  stp x28,x27,[sp, #0x30]
02a43368  stp x26,x25,[sp, #0x40]
02a4336c  stp x24,x23,[sp, #0x50]
02a43370  stp x22,x21,[sp, #0x60]
02a43374  stp x20,x19,[sp, #0x70]
02a43378  mrs x26,tpidr_el0
02a4337c  adrp x10,0x175a000
02a43380  add x10,x10,#0xcb5
02a43384  ldr x9,[x26, #0x28]
02a43388  ldr q0,[x10]
02a4338c  mov w11,#0x7f5
02a43390  movk w11,#0x5fbd, LSL #16
02a43394  mov w10,#0xe8
02a43398  mov x19,x1
02a4339c  str x9,[sp, #0x18]
02a433a0  adrp x9,0x116f000
02a433a4  mov x20,x0
02a433a8  str q0,[sp]
02a433ac  ldr d0,[x9, #0xb40]
02a433b0  mov w9,#0x71
02a433b4  str w11,[sp, #0x10]
02a433b8  mov x8,xzr
02a433bc  mov x11,sp
02a433c0  strb w10,[sp, #0x13]
02a433c4  adrp x10,0x116f000
02a433c8  stur s0,[sp, #0xd]
02a433cc  ldr d0,[x10, #0xb48]
02a433d0  mov x10,#0xc520
02a433d4  strb w9,[sp, #0xe]
02a433d8  mov w9,#0xf6
02a433dc  movk x10,#0xa429, LSL #16
02a433e0  strb w9,[sp]
02a433e4  mov w9,#0xc512
02a433e8  movk x10,#0x54e2, LSL #32
02a433ec  sturh w9,[sp, #0xb]
02a433f0  movk x10,#0x82ab, LSL #48
02a433f4  adrp x9,0x175a000
02a433f8  add x9,x9,#0xcc9
02a433fc  stur s0,[sp, #0x5]
02a43400  eor x10,x10,x10, LSL #0xd
02a43404  eor x12,x10,x10, LSR #0x7
02a43408  eor x10,x12,x12, LSL #0x11
02a4340c  ubfx x13,x10,#0x10,#0x10
02a43410  eor w13,w13,w10, LSR #0x8
02a43414  eor w13,w13,w10, LSR #0x18
02a43418  eor w12,w13,w12
02a4341c  ldrb w13,[x11, x8, LSL ]
02a43420  and x12,x12,#0xff
02a43424  ldrb w12,[x9, x12, LSL ]
02a43428  eor w12,w13,w12
02a4342c  strb w12,[x11, x8, LSL ]
02a43430  add x8,x8,#0x1
02a43434  cmp x8,#0x14
02a43438  b.ne 0x02a43400
02a4343c  mov x0,sp
02a43440  bl 0x02a53e94
02a43444  mov x21,x0
02a43448  adrp x8,0x6271000
02a4344c  str x0,[x8, #0xea0]
02a43450  cbz x0,0x02a43904
02a43454  mov w0,#0x198
02a43458  bl 0x05afb780
02a4345c  adrp x8,0x6271000
02a43460  mov x1,x21
02a43464  mov w2,#0x198
02a43468  mov x22,x0
02a4346c  str x0,[x8, #0xea8]
02a43470  bl 0x05afb2b0
02a43474  mov x9,#0xc15e
02a43478  mov x8,xzr
02a4347c  adrp x28,0x175a000
02a43480  add x28,x28,#0xdc9
02a43484  movk x9,#0xf705, LSL #16
02a43488  movk x9,#0xd3fd, LSL #32
02a4348c  movk x9,#0x25ec, LSL #48
02a43490  eor x9,x9,x9, LSL #0xd
02a43494  eor x10,x9,x9, LSR #0x7
02a43498  eor x9,x10,x10, LSL #0x11
02a4349c  ubfx x11,x9,#0x10,#0x10
02a434a0  eor w11,w11,w9, LSR #0x8
02a434a4  eor w11,w11,w9, LSR #0x18
02a434a8  eor w10,w11,w10
02a434ac  ldrb w11,[x22, x8, LSL ]
02a434b0  and x10,x10,#0xff
02a434b4  ldrb w10,[x28, x10, LSL ]
02a434b8  eor w10,w11,w10
02a434bc  strb w10,[x22, x8, LSL ]
02a434c0  add x8,x8,#0x1
02a434c4  cmp x8,#0x198
02a434c8  b.ne 0x02a43490
02a434cc  ldrsw x23,[x22, #0x1c]
02a434d0  adrp x27,0x6271000
02a434d4  str x22,[x27, #0xeb0]
02a434d8  mov x0,x23
02a434dc  bl 0x05afb780
02a434e0  ldr w8,[x22, #0xb4]
02a434e4  adrp x9,0x6271000
02a434e8  mov x2,x23
02a434ec  mov x24,x0
02a434f0  str x0,[x9, #0xeb8]
02a434f4  sub w8,w8,#0x260
02a434f8  add x1,x21,w8, SXTW 
02a434fc  bl 0x05afb2b0
02a43500  cbz w23,0x02a4354c
02a43504  mov x8,#0x31e9
02a43508  movk x8,#0x1895, LSL #16
02a4350c  movk x8,#0x3518, LSL #32
02a43510  movk x8,#0xda39, LSL #48
02a43514  eor x8,x8,x8, LSL #0xd
02a43518  subs x23,x23,#0x1
02a4351c  eor x9,x8,x8, LSR #0x7
02a43520  eor x8,x9,x9, LSL #0x11
02a43524  ubfx x10,x8,#0x10,#0x10
02a43528  eor w10,w10,w8, LSR #0x8
02a4352c  eor w10,w10,w8, LSR #0x18
02a43530  eor w9,w10,w9
02a43534  ldrb w10,[x24]
02a43538  and x9,x9,#0xff
02a4353c  ldrb w9,[x28, x9, LSL ]
02a43540  eor w9,w10,w9
02a43544  strb w9,[x24], #0x1
02a43548  b.ne 0x02a43514
02a4354c  ldrsw x23,[x22, #0x18]
02a43550  mov x0,x23
02a43554  bl 0x05afb780
02a43558  ldr w8,[x22, #0x164]
02a4355c  adrp x9,0x6271000
02a43560  mov x2,x23
02a43564  mov x24,x0
02a43568  str x0,[x9, #0xec0]
02a4356c  sub w8,w8,#0x564
02a43570  add x1,x21,w8, SXTW 
02a43574  bl 0x05afb2b0
02a43578  cbz w23,0x02a435c4
02a4357c  mov x8,#0x158f
02a43580  movk x8,#0x878e, LSL #16
02a43584  movk x8,#0x5d28, LSL #32
02a43588  movk x8,#0x9468, LSL #48
02a4358c  eor x8,x8,x8, LSL #0xd
02a43590  subs x23,x23,#0x1
02a43594  eor x9,x8,x8, LSR #0x7
02a43598  eor x8,x9,x9, LSL #0x11
02a4359c  ubfx x10,x8,#0x10,#0x10
02a435a0  eor w10,w10,w8, LSR #0x8
02a435a4  eor w10,w10,w8, LSR #0x18
02a435a8  eor w9,w10,w9
02a435ac  ldrb w10,[x24]
02a435b0  and x9,x9,#0xff
02a435b4  ldrb w9,[x28, x9, LSL ]
02a435b8  eor w9,w10,w9
02a435bc  strb w9,[x24], #0x1
02a435c0  b.ne 0x02a4358c
02a435c4  ldrsw x23,[x22, #0x13c]
02a435c8  mov x0,x23
02a435cc  bl 0x05afb780
02a435d0  ldr w8,[x22, #0x170]
02a435d4  mov w9,#0x11b0
02a435d8  mov x2,x23
02a435dc  mov x24,x0
02a435e0  add w8,w8,w9
02a435e4  adrp x9,0x6271000
02a435e8  add x1,x21,w8, SXTW 
02a435ec  str x0,[x9, #0xec8]
02a435f0  bl 0x05afb2b0
02a435f4  cbz w23,0x02a43640
02a435f8  mov x8,#0xc718
02a435fc  movk x8,#0x3991, LSL #16
02a43600  movk x8,#0x70e2, LSL #32
02a43604  movk x8,#0x975b, LSL #48
02a43608  eor x8,x8,x8, LSL #0xd
02a4360c  subs x23,x23,#0x1
02a43610  eor x9,x8,x8, LSR #0x7
02a43614  eor x8,x9,x9, LSL #0x11
02a43618  ubfx x10,x8,#0x10,#0x10
02a4361c  eor w10,w10,w8, LSR #0x8
02a43620  eor w10,w10,w8, LSR #0x18
02a43624  eor w9,w10,w9
02a43628  ldrb w10,[x24]
02a4362c  and x9,x9,#0xff
02a43630  ldrb w9,[x28, x9, LSL ]
02a43634  eor w9,w10,w9
02a43638  strb w9,[x24], #0x1
02a4363c  b.ne 0x02a43608
02a43640  ldrsw x23,[x22, #0xe8]
02a43644  mov x0,x23
02a43648  bl 0x05afb780
02a4364c  ldr w8,[x22, #0x6c]
02a43650  adrp x9,0x6271000
02a43654  mov x2,x23
02a43658  mov x24,x0
02a4365c  str x0,[x9, #0xed0]
02a43660  sub w8,w8,#0xa80
02a43664  add x1,x21,w8, SXTW 
02a43668  bl 0x05afb2b0
02a4366c  cbz w23,0x02a436bc
02a43670  mov x8,#0x5fec
02a43674  mov x9,x23
02a43678  movk x8,#0x8544, LSL #16
02a4367c  movk x8,#0x50ae, LSL #32
02a43680  movk x8,#0xca9, LSL #48
02a43684  eor x8,x8,x8, LSL #0xd
02a43688  subs x9,x9,#0x1
02a4368c  eor x10,x8,x8, LSR #0x7
02a43690  eor x8,x10,x10, LSL #0x11
02a43694  ubfx x11,x8,#0x10,#0x10
02a43698  eor w11,w11,w8, LSR #0x8
02a4369c  eor w11,w11,w8, LSR #0x18
02a436a0  eor w10,w11,w10
02a436a4  ldrb w11,[x24]
02a436a8  and x10,x10,#0xff
02a436ac  ldrb w10,[x28, x10, LSL ]
02a436b0  eor w10,w11,w10
02a436b4  strb w10,[x24], #0x1
02a436b8  b.ne 0x02a43684
02a436bc  ldrsw x24,[x22, #0x108]
02a436c0  mov x0,x24
02a436c4  bl 0x05afb780
02a436c8  ldr w8,[x22, #0xc0]
02a436cc  adrp x9,0x6271000
02a436d0  mov x2,x24
02a436d4  mov x25,x0
02a436d8  str x0,[x9, #0xed8]
02a436dc  sub w8,w8,#0xaf8
02a436e0  add x1,x21,w8, SXTW 
02a436e4  bl 0x05afb2b0
02a436e8  cbz w24,0x02a43734
02a436ec  mov x8,#0x5260
02a436f0  movk x8,#0xf736, LSL #16
02a436f4  movk x8,#0x6c40, LSL #32
02a436f8  movk x8,#0x138e, LSL #48
02a436fc  eor x8,x8,x8, LSL #0xd
02a43700  subs x24,x24,#0x1
02a43704  eor x9,x8,x8, LSR #0x7
02a43708  eor x8,x9,x9, LSL #0x11
02a4370c  ubfx x10,x8,#0x10,#0x10
02a43710  eor w10,w10,w8, LSR #0x8
02a43714  eor w10,w10,w8, LSR #0x18
02a43718  eor w9,w10,w9
02a4371c  ldrb w10,[x25]
02a43720  and x9,x9,#0xff
02a43724  ldrb w9,[x28, x9, LSL ]
02a43728  eor w9,w10,w9
02a4372c  strb w9,[x25], #0x1
02a43730  b.ne 0x02a436fc
02a43734  ldrsw x24,[x22, #0x94]
02a43738  mov x0,x24
02a4373c  bl 0x05afb780
02a43740  ldr w8,[x22, #0xe4]
02a43744  mov w9,#0xffffeca8
02a43748  mov x2,x24
02a4374c  mov x25,x0
02a43750  add w8,w8,w9
02a43754  adrp x9,0x6271000
02a43758  add x1,x21,w8, SXTW 
02a4375c  str x0,[x9, #0xee0]
02a43760  bl 0x05afb2b0
02a43764  cbz w24,0x02a437b0
02a43768  mov x8,#0xff15
02a4376c  movk x8,#0x1052, LSL #16
02a43770  movk x8,#0x3427, LSL #32
02a43774  movk x8,#0x8147, LSL #48
02a43778  eor x8,x8,x8, LSL #0xd
02a4377c  subs x24,x24,#0x1
02a43780  eor x9,x8,x8, LSR #0x7
02a43784  eor x8,x9,x9, LSL #0x11
02a43788  ubfx x10,x8,#0x10,#0x10
02a4378c  eor w10,w10,w8, LSR #0x8
02a43790  eor w10,w10,w8, LSR #0x18
02a43794  eor w9,w10,w9
02a43798  ldrb w10,[x25]
02a4379c  and x9,x9,#0xff
02a437a0  ldrb w9,[x28, x9, LSL ]
02a437a4  eor w9,w10,w9
02a437a8  strb w9,[x25], #0x1
02a437ac  b.ne 0x02a43778
02a437b0  ldrsw x24,[x22, #0x188]
02a437b4  mov x0,x24
02a437b8  bl 0x05afb780
02a437bc  ldr w8,[x22, #0x68]
02a437c0  mov w9,#0xffffec20
02a437c4  mov x2,x24
02a437c8  mov x25,x0
02a437cc  add w8,w8,w9
02a437d0  adrp x9,0x6271000
02a437d4  add x1,x21,w8, SXTW 
02a437d8  str x0,[x9, #0xee8]
02a437dc  bl 0x05afb2b0
02a437e0  cbz w24,0x02a4382c
02a437e4  mov x8,#0x99dc
02a437e8  movk x8,#0x5311, LSL #16
02a437ec  movk x8,#0x8e24, LSL #32
02a437f0  movk x8,#0x72f5, LSL #48
02a437f4  eor x8,x8,x8, LSL #0xd
02a437f8  subs x24,x24,#0x1
02a437fc  eor x9,x8,x8, LSR #0x7
02a43800  eor x8,x9,x9, LSL #0x11
02a43804  ubfx x10,x8,#0x10,#0x10
02a43808  eor w10,w10,w8, LSR #0x8
02a4380c  eor w10,w10,w8, LSR #0x18
02a43810  eor w9,w10,w9
02a43814  ldrb w10,[x25]
02a43818  and x9,x9,#0xff
02a4381c  ldrb w9,[x28, x9, LSL ]
02a43820  eor w9,w10,w9
02a43824  strb w9,[x25], #0x1
02a43828  b.ne 0x02a437f4
02a4382c  ldrsw x8,[x22, #0x44]
02a43830  orr x9,xzr,#-0x3333333333333334
02a43834  asr w11,w23,#0x6
02a43838  movk x9,#0xcccd
02a4383c  adrp x10,0x6271000
02a43840  mov w1,#0x18
02a43844  umulh x8,x8,x9
02a43848  lsr x9,x8,#0x5
02a4384c  sbfx x0,x8,#0x5,#0x20
02a43850  str w9,[x20]
02a43854  str w9,[x10, #0xef0]
02a43858  str w11,[x19]
02a4385c  bl 0x02a2a8e4
02a43860  adrp x8,0x6271000
02a43864  adrp x9,0x6271000
02a43868  mov w1,#0x8
02a4386c  ldr x8,[x8, #0xe90]
02a43870  str x0,[x9, #0xef8]
02a43874  ldrsw x8,[x8, #0x30]
02a43878  mov x0,x8
02a4387c  bl 0x02a2a8e4
02a43880  ldr x8,[x27, #0xeb0]
02a43884  mov x9,#0x8ba3
02a43888  mov w1,#0x8
02a4388c  movk x9,#0xba2e, LSL #16
02a43890  ldrsw x8,[x8, #0x28]
02a43894  movk x9,#0xa2e8, LSL #32
02a43898  movk x9,#0x2e8b, LSL #48
02a4389c  umulh x8,x8,x9
02a438a0  adrp x9,0x6271000
02a438a4  str x0,[x9, #0xf00]
02a438a8  lsr x8,x8,#0x4
02a438ac  mov x0,x8
02a438b0  bl 0x02a2a8e4
02a438b4  ldr x8,[x27, #0xeb0]
02a438b8  mov x9,#0xe38f
02a438bc  mov w1,#0x8
02a438c0  movk x9,#0x8e38, LSL #16
02a438c4  ldrsw x8,[x8, #0x18]
02a438c8  movk x9,#0x38e3, LSL #32
02a438cc  movk x9,#0xe38e, LSL #48
02a438d0  umulh x8,x8,x9
02a438d4  adrp x9,0x6271000
02a438d8  str x0,[x9, #0xf08]
02a438dc  lsr x8,x8,#0x5
02a438e0  mov x0,x8
02a438e4  bl 0x02a2a8e4
02a438e8  adrp x8,0x6271000
02a438ec  nop
02a438f0  adr x1,0x2a43a28
02a438f4  str x0,[x8, #0xe88]
02a438f8  nop
02a438fc  adr x0,0x2a439e4
02a43900  bl 0x02a43940
02a43904  ldr x8,[x26, #0x28]
02a43908  ldr x9,[sp, #0x18]
02a4390c  cmp x21,#0x0
02a43910  cset w0,ne
02a43914  cmp x8,x9
02a43918  b.ne 0x02a4393c
02a4391c  ldp x20,x19,[sp, #0x70]
02a43920  ldr x30,[sp, #0x20]
02a43924  ldp x22,x21,[sp, #0x60]
02a43928  ldp x24,x23,[sp, #0x50]
02a4392c  ldp x26,x25,[sp, #0x40]
02a43930  ldp x28,x27,[sp, #0x30]
02a43934  add sp,sp,#0x80
02a43938  ret
02a4393c  bl 0x05afb240
