02cad740  stp x30,x21,[sp, #-0x20]!
02cad744  stp x20,x19,[sp, #0x10]
02cad748  adrp x21,0x625c000
02cad74c  adrp x20,0x5e5d000
02cad750  mov x19,x0
02cad754  ldrb w8,[x21, #0x521]
02cad758  ldr x20,[x20, #0x338]
02cad75c  tbnz w8,#0x0,0x02cad774
02cad760  adrp x0,0x5e5d000
02cad764  ldr x0,[x0, #0x338]
02cad768  bl 0x029f5a50
02cad76c  mov w8,#0x1
02cad770  strb w8,[x21, #0x521]
02cad774  ldr x0,[x20]
02cad778  ldr w8,[x0, #0xe4]
02cad77c  cbnz w8,0x02cad788
02cad780  bl 0x029f5bd0
02cad784  ldr x0,[x20]
02cad788  ldr x8,[x0, #0xb8]
02cad78c  ldrb w9,[x8]
02cad790  cbz w9,0x02cad87c
02cad794  ldr w9,[x0, #0xe4]
02cad798  cbnz w9,0x02cad7a8
02cad79c  bl 0x029f5bd0
02cad7a0  ldr x8,[x20]
02cad7a4  ldr x8,[x8, #0xb8]
02cad7a8  mov x0,xzr
02cad7ac  strb wzr,[x8]
02cad7b0  bl 0x057e85b4
02cad7b4  ldp s1,s2,[x19, #0x38]
02cad7b8  ldr x0,[x19, #0xa0]
02cad7bc  fsub s0,s0,s1
02cad7c0  fadd s0,s2,s0
02cad7c4  str s0,[x19, #0x3c]
02cad7c8  cbz x0,0x02cad888
02cad7cc  ldp w8,w9,[x19, #0x90]
02cad7d0  mov x1,xzr
02cad7d4  sub w8,w9,w8
02cad7d8  scvtf s1,w9
02cad7dc  scvtf s0,w8
02cad7e0  fdiv s0,s0,s1
02cad7e4  bl 0x02c7a4f0
02cad7e8  ldr x0,[x19, #0x60]
02cad7ec  cbz x0,0x02cad888
02cad7f0  mov w1,#0x1
02cad7f4  mov x2,xzr
02cad7f8  mov w20,#0x1
02cad7fc  bl 0x057dff3c
02cad800  adrp x21,0x625b000
02cad804  ldrb w8,[x21, #0xa57]
02cad808  cbnz w8,0x02cad81c
02cad80c  adrp x0,0x5e5d000
02cad810  ldr x0,[x0, #0xd70]
02cad814  bl 0x029f5a50
02cad818  strb w20,[x21, #0xa57]
02cad81c  adrp x8,0x5e5d000
02cad820  ldr x8,[x8, #0xd70]
02cad824  ldr x8,[x8]
02cad828  ldr x8,[x8, #0xb8]
02cad82c  ldr x0,[x8]
02cad830  cbz x0,0x02cad888
02cad834  fmov s0,0x3f800000
02cad838  mov w1,#0xc
02cad83c  mov x2,xzr
02cad840  mov x3,xzr
02cad844  bl 0x02c1f10c
02cad848  mov x0,x19
02cad84c  bl 0x02cad6d4
02cad850  mov x20,x19
02cad854  mov x1,x0
02cad858  str x0,[x20, #0xc8]!
02cad85c  mov x0,x20
02cad860  bl 0x029f59f4
02cad864  ldr x1,[x20]
02cad868  mov x0,x19
02cad86c  mov x2,xzr
02cad870  ldp x20,x19,[sp, #0x10]
02cad874  ldp x30,x21,[sp], #0x20
02cad878  b 0x057e2120
02cad87c  ldp x20,x19,[sp, #0x10]
02cad880  ldp x30,x21,[sp], #0x20
02cad884  ret
02cad888  bl 0x029f5cfc
