02cacf84  stp x30,x21,[sp, #-0x20]!
02cacf88  stp x20,x19,[sp, #0x10]
02cacf8c  mov x19,x0
02cacf90  bl 0x02cad8b4
02cacf94  mov w8,w0
02cacf98  ldr x0,[x19, #0xb0]
02cacf9c  stp w8,w8,[x19, #0x90]
02cacfa0  cbz x0,0x02cad018
02cacfa4  mov w1,#0x1
02cacfa8  mov x2,xzr
02cacfac  bl 0x057dff3c
02cacfb0  ldr x8,[x19, #0xe0]
02cacfb4  cbz x8,0x02cad018
02cacfb8  ldrsw x9,[x19, #0x28]
02cacfbc  mov w10,#0x6667
02cacfc0  mov x21,xzr
02cacfc4  movk w10,#0x6666, LSL #16
02cacfc8  smull x10,w9,w10
02cacfcc  lsr x11,x10,#0x3f
02cacfd0  asr x10,x10,#0x22
02cacfd4  add w10,w10,w11
02cacfd8  mov w11,#0xa
02cacfdc  msub w20,w10,w11,w9
02cacfe0  ldr w9,[x8, #0x18]
02cacfe4  cmp w21,w9
02cacfe8  b.ge 0x02cad01c
02cacfec  cmp w21,w9
02cacff0  b.cs 0x02cad050
02cacff4  add x8,x8,x21, LSL #0x3
02cacff8  ldr x0,[x8, #0x20]
02cacffc  cbz x0,0x02cad018
02cad000  mov w1,w20
02cad004  mov x2,xzr
02cad008  bl 0x02c7a5ec
02cad00c  ldr x8,[x19, #0xe0]
02cad010  add x21,x21,#0x1
02cad014  cbnz x8,0x02cacfe0
02cad018  bl 0x029f5cfc
02cad01c  ldr x8,[x19, #0xf0]
02cad020  cbz x8,0x02cad018
02cad024  ldr w9,[x8, #0x18]
02cad028  cmp w20,w9
02cad02c  b.cs 0x02cad050
02cad030  ldr x0,[x19, #0xe8]
02cad034  cbz x0,0x02cad018
02cad038  add x8,x8,w20, SXTW  #0x3
02cad03c  ldp x20,x19,[sp, #0x10]
02cad040  mov x2,xzr
02cad044  ldr x1,[x8, #0x20]
02cad048  ldp x30,x21,[sp], #0x20
02cad04c  b 0x0578eb10
02cad050  bl 0x029f5d04
