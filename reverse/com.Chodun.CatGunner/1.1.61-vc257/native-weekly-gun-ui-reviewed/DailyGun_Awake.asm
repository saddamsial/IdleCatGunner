02c8aac0  stp x30,x21,[sp, #-0x20]!
02c8aac4  stp x20,x19,[sp, #0x10]
02c8aac8  adrp x21,0x625c000
02c8aacc  adrp x20,0x5e62000
02c8aad0  mov x19,x0
02c8aad4  ldrb w8,[x21, #0x3a3]
02c8aad8  ldr x20,[x20, #0x660]
02c8aadc  tbnz w8,#0x0,0x02c8ab00
02c8aae0  adrp x0,0x5e62000
02c8aae4  ldr x0,[x0, #0x660]
02c8aae8  bl 0x029f5a50
02c8aaec  adrp x0,0x5e5d000
02c8aaf0  ldr x0,[x0, #0x790]
02c8aaf4  bl 0x029f5a50
02c8aaf8  mov w8,#0x1
02c8aafc  strb w8,[x21, #0x3a3]
02c8ab00  ldr x0,[x20]
02c8ab04  ldr w8,[x0, #0xe4]
02c8ab08  cbnz w8,0x02c8ab14
02c8ab0c  bl 0x029f5bd0
02c8ab10  ldr x0,[x20]
02c8ab14  ldr x8,[x0, #0xb8]
02c8ab18  mov x1,x19
02c8ab1c  str x19,[x8]
02c8ab20  ldr x8,[x20]
02c8ab24  ldr x0,[x8, #0xb8]
02c8ab28  bl 0x029f59f4
02c8ab2c  ldr x8,[x19, #0x20]!
02c8ab30  cbz x8,0x02c8ab4c
02c8ab34  ldr w8,[x8, #0x18]
02c8ab38  cmp w8,#0x3
02c8ab3c  b.ne 0x02c8ab4c
02c8ab40  ldp x20,x19,[sp, #0x10]
02c8ab44  ldp x30,x21,[sp], #0x20
02c8ab48  ret
02c8ab4c  adrp x8,0x5e5d000
02c8ab50  mov w1,#0x3
02c8ab54  ldr x8,[x8, #0x790]
02c8ab58  ldr x0,[x8]
02c8ab5c  bl 0x029f5b40
02c8ab60  mov x1,x0
02c8ab64  mov x0,x19
02c8ab68  str x1,[x19]
02c8ab6c  ldp x20,x19,[sp, #0x10]
02c8ab70  ldp x30,x21,[sp], #0x20
02c8ab74  b 0x029f59f4
