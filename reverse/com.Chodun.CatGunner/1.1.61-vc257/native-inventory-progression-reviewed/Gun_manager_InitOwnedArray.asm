02c677cc  str x30,[sp, #-0x20]!
02c677d0  stp x20,x19,[sp, #0x10]
02c677d4  adrp x20,0x625c000
02c677d8  mov x19,x0
02c677dc  ldrb w8,[x20, #0x261]
02c677e0  tbnz w8,#0x0,0x02c677f8
02c677e4  adrp x0,0x5e5d000
02c677e8  ldr x0,[x0, #0x790]
02c677ec  bl 0x029f5a50
02c677f0  mov w8,#0x1
02c677f4  strb w8,[x20, #0x261]
02c677f8  ldr x8,[x19, #0x40]!
02c677fc  cbz x8,0x02c67818
02c67800  ldr w8,[x8, #0x18]
02c67804  cmp w8,#0x10
02c67808  b.ne 0x02c67818
02c6780c  ldp x20,x19,[sp, #0x10]
02c67810  ldr x30,[sp], #0x20
02c67814  ret
02c67818  adrp x8,0x5e5d000
02c6781c  mov w1,#0x10
02c67820  ldr x8,[x8, #0x790]
02c67824  ldr x0,[x8]
02c67828  bl 0x029f5b40
02c6782c  cbz x0,0x02c678cc
02c67830  ldr w8,[x0, #0x18]
02c67834  mov x1,x0
02c67838  mov x9,xzr
02c6783c  mov w11,#0xffffffff
02c67840  lsl x10,x8,#0x2
02c67844  cmp x10,x9
02c67848  b.eq 0x02c678c8
02c6784c  add x12,x1,x9
02c67850  add x9,x9,#0x4
02c67854  cmp x9,#0x40
02c67858  str w11,[x12, #0x20]
02c6785c  b.ne 0x02c67844
02c67860  ldr x12,[x19]
02c67864  cbz x12,0x02c678b4
02c67868  ldr x11,[x12, #0x18]
02c6786c  cmp w11,#0x1
02c67870  b.lt 0x02c678b4
02c67874  cmp w11,#0x10
02c67878  mov w13,#0x10
02c6787c  mov x9,xzr
02c67880  and x10,x11,#0xffffffff
02c67884  csel w11,w11,w13,lt
02c67888  add x12,x12,#0x20
02c6788c  add x13,x1,#0x20
02c67890  cmp x10,x9
02c67894  b.eq 0x02c678c8
02c67898  cmp x9,x8
02c6789c  b.cs 0x02c678c8
02c678a0  ldr w14,[x12, x9, LSL #0x2]
02c678a4  str w14,[x13, x9, LSL #0x2]
02c678a8  add x9,x9,#0x1
02c678ac  cmp x11,x9
02c678b0  b.ne 0x02c67890
02c678b4  mov x0,x19
02c678b8  str x1,[x19]
02c678bc  ldp x20,x19,[sp, #0x10]
02c678c0  ldr x30,[sp], #0x20
02c678c4  b 0x029f59f4
02c678c8  bl 0x029f5d04
02c678cc  bl 0x029f5cfc
