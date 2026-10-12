02c71778  str x30,[sp, #-0x20]!
02c7177c  stp x20,x19,[sp, #0x10]
02c71780  adrp x20,0x625c000
02c71784  mov x19,x0
02c71788  ldrb w8,[x20, #0x2cb]
02c7178c  tbnz w8,#0x0,0x02c717a4
02c71790  adrp x0,0x5e5d000
02c71794  ldr x0,[x0, #0xd40]
02c71798  bl 0x029f5a50
02c7179c  mov w8,#0x1
02c717a0  strb w8,[x20, #0x2cb]
02c717a4  ldrb w8,[x19, #0x79]
02c717a8  cbz w8,0x02c717bc
02c717ac  strb wzr,[x19, #0xb9]
02c717b0  ldp x20,x19,[sp, #0x10]
02c717b4  ldr x30,[sp], #0x20
02c717b8  ret
02c717bc  ldrb w8,[x19, #0xb9]
02c717c0  cbz w8,0x02c717b0
02c717c4  ldrb w8,[x19, #0xb8]
02c717c8  strb wzr,[x19, #0xb9]
02c717cc  cbnz w8,0x02c717b0
02c717d0  adrp x8,0x5e5d000
02c717d4  ldr x8,[x8, #0xd40]
02c717d8  ldrb w9,[x19, #0x70]
02c717dc  ldr x8,[x8]
02c717e0  ldr x8,[x8, #0xb8]
02c717e4  ldr x0,[x8]
02c717e8  cbz w9,0x02c717fc
02c717ec  cbz x0,0x02c71890
02c717f0  mov x1,xzr
02c717f4  bl 0x02c6a910
02c717f8  b 0x02c7180c
02c717fc  cbz x0,0x02c71890
02c71800  ldp w1,w2,[x19, #0x8c]
02c71804  mov x3,xzr
02c71808  bl 0x02c69df8
02c7180c  adrp x20,0x625b000
02c71810  ldrb w8,[x20, #0xa57]
02c71814  cbnz w8,0x02c7182c
02c71818  adrp x0,0x5e5d000
02c7181c  ldr x0,[x0, #0xd70]
02c71820  bl 0x029f5a50
02c71824  mov w8,#0x1
02c71828  strb w8,[x20, #0xa57]
02c7182c  adrp x8,0x5e5d000
02c71830  ldr x8,[x8, #0xd70]
02c71834  ldr x8,[x8]
02c71838  ldr x8,[x8, #0xb8]
02c7183c  ldr x0,[x8]
02c71840  cbz x0,0x02c71890
02c71844  fmov s0,0x3f800000
02c71848  mov w1,#0x1
02c7184c  mov x2,xzr
02c71850  mov x3,xzr
02c71854  bl 0x02c1f10c
02c71858  mov x0,x19
02c7185c  bl 0x02c714e8
02c71860  mov x0,x19
02c71864  bl 0x02c71894
02c71868  mov x1,x0
02c7186c  mov x0,x19
02c71870  mov x2,xzr
02c71874  bl 0x057e2120
02c71878  mov x1,x0
02c7187c  add x0,x19,#0x108
02c71880  str x1,[x19, #0x108]
02c71884  ldp x20,x19,[sp, #0x10]
02c71888  ldr x30,[sp], #0x20
02c7188c  b 0x029f59f4
02c71890  bl 0x029f5cfc
