02cab768  sub sp,sp,#0x120
02cab76c  str x29,[sp, #0xe0]
02cab770  stp x30,x23,[sp, #0xf0]
02cab774  stp x22,x21,[sp, #0x100]
02cab778  stp x20,x19,[sp, #0x110]
02cab77c  adrp x22,0x625c000
02cab780  mov w20,w1
02cab784  mov x21,x0
02cab788  ldrb w9,[x22, #0x51b]
02cab78c  mov x19,x8
02cab790  tbnz w9,#0x0,0x02cab7c0
02cab794  adrp x0,0x5e64000
02cab798  ldr x0,[x0, #0xa08]
02cab79c  bl 0x029f5a50
02cab7a0  adrp x0,0x5e64000
02cab7a4  ldr x0,[x0, #0xa10]
02cab7a8  bl 0x029f5a50
02cab7ac  adrp x0,0x5e5d000
02cab7b0  ldr x0,[x0, #0xc20]
02cab7b4  bl 0x029f5a50
02cab7b8  mov w8,#0x1
02cab7bc  strb w8,[x22, #0x51b]
02cab7c0  movi v0.2D,#0x0
02cab7c4  ldr x8,[x21, #0x78]
02cab7c8  stp q0,q0,[sp, #0x40]
02cab7cc  stp q0,q0,[sp, #0x60]
02cab7d0  stp q0,q0,[sp, #0x80]
02cab7d4  stp q0,q0,[sp, #0xa0]
02cab7d8  cbz x8,0x02cab8f0
02cab7dc  ldr w9,[x8, #0x18]
02cab7e0  cmp w9,w20
02cab7e4  b.le 0x02cab7fc
02cab7e8  b.ls 0x02cab8f4
02cab7ec  sxtw x9,w20
02cab7f0  add x8,x8,x9, LSL #0x5
02cab7f4  ldp q0,q1,[x8, #0x20]
02cab7f8  b 0x02cab8d4
02cab7fc  ldr x0,[x21, #0x88]
02cab800  cbz x0,0x02cab8f0
02cab804  adrp x8,0x5e64000
02cab808  add x2,sp,#0xa0
02cab80c  mov w1,w20
02cab810  ldr x8,[x8, #0xa08]
02cab814  ldr x3,[x8]
02cab818  bl 0x03db0648
02cab81c  tbz w0,#0x0,0x02cab828
02cab820  ldp q0,q1,[sp, #0xa0]
02cab824  b 0x02cab8d4
02cab828  ldr x22,[x21, #0x78]
02cab82c  cbz x22,0x02cab8f0
02cab830  adrp x8,0x5e5d000
02cab834  ldr x8,[x8, #0xc20]
02cab838  ldr x0,[x8]
02cab83c  ldr w8,[x22, #0x18]
02cab840  ldr w9,[x0, #0xe4]
02cab844  sub w23,w8,#0x1
02cab848  cbnz w9,0x02cab850
02cab84c  bl 0x029f5bd0
02cab850  sub w0,w20,w23
02cab854  add x8,sp,#0x60
02cab858  bl 0x02cace94
02cab85c  ldr w8,[x22, #0x18]
02cab860  cmp w23,w8
02cab864  b.cs 0x02cab8f4
02cab868  sxtw x8,w23
02cab86c  add x1,sp,#0x60
02cab870  mov x2,xzr
02cab874  add x9,x22,x8, LSL #0x5
02cab878  add x8,sp,#0x20
02cab87c  add x0,x9,#0x20
02cab880  bl 0x04658538
02cab884  ldp q0,q1,[sp, #0x20]
02cab888  mov x8,sp
02cab88c  add x0,sp,#0x40
02cab890  mov w1,#0x2
02cab894  mov x2,xzr
02cab898  stp q0,q1,[sp, #0x40]
02cab89c  bl 0x04658464
02cab8a0  ldp q0,q1,[sp]
02cab8a4  ldr x0,[x21, #0x88]
02cab8a8  stp q0,q1,[sp, #0x80]
02cab8ac  cbz x0,0x02cab8f0
02cab8b0  adrp x8,0x5e64000
02cab8b4  add x2,sp,#0xc0
02cab8b8  mov w1,w20
02cab8bc  ldr x8,[x8, #0xa10]
02cab8c0  ldp q0,q1,[sp]
02cab8c4  ldr x3,[x8]
02cab8c8  stp q0,q1,[sp, #0xc0]
02cab8cc  bl 0x03daea4c
02cab8d0  ldp q0,q1,[sp, #0x80]
02cab8d4  stp q0,q1,[x19]
02cab8d8  ldp x20,x19,[sp, #0x110]
02cab8dc  ldp x22,x21,[sp, #0x100]
02cab8e0  ldr x29,[sp, #0xe0]
02cab8e4  ldp x30,x23,[sp, #0xf0]
02cab8e8  add sp,sp,#0x120
02cab8ec  ret
02cab8f0  bl 0x029f5cfc
02cab8f4  bl 0x029f5d04
