02b87b54  str x30,[sp, #-0x20]!
02b87b58  stp x20,x19,[sp, #0x10]
02b87b5c  ldr s3,[x0, #0x24]
02b87b60  mov x19,x0
02b87b64  fcmp s3,s0
02b87b68  b.pl 0x02b87b7c
02b87b6c  fmov s3,0x3f800000
02b87b70  fcmp s0,s3
02b87b74  b.gt 0x02b87bb0
02b87b78  b 0x02b87bb4
02b87b7c  adrp x20,0x625b000
02b87b80  ldrb w8,[x20, #0x271]
02b87b84  cbnz w8,0x02b87b9c
02b87b88  adrp x0,0x5e59000
02b87b8c  ldr x0,[x0, #0x608]
02b87b90  bl 0x029f5a50
02b87b94  mov w8,#0x1
02b87b98  strb w8,[x20, #0x271]
02b87b9c  adrp x8,0x5e59000
02b87ba0  ldr x8,[x8, #0x608]
02b87ba4  ldr x8,[x8]
02b87ba8  ldr x8,[x8, #0xb8]
02b87bac  ldp s1,s2,[x8]
02b87bb0  stp s1,s2,[x19, #0x58]
02b87bb4  ldp x20,x19,[sp, #0x10]
02b87bb8  ldr x30,[sp], #0x20
02b87bbc  ret
