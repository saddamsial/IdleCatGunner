02b7eed4  str d10,[sp, #-0x40]!
02b7eed8  stp d9,d8,[sp, #0x10]
02b7eedc  stp x30,x21,[sp, #0x20]
02b7eee0  stp x20,x19,[sp, #0x30]
02b7eee4  fmov s8,s2
02b7eee8  fmov s9,s1
02b7eeec  adrp x21,0x625b000
02b7eef0  fmov s10,s0
02b7eef4  adrp x20,0x5e59000
02b7eef8  ldrb w8,[x21, #0x8cc]
02b7eefc  ldr x20,[x20, #0x1c0]
02b7ef00  mov w19,w0
02b7ef04  tbnz w8,#0x0,0x02b7ef34
02b7ef08  adrp x0,0x5e59000
02b7ef0c  ldr x0,[x0, #0x1c0]
02b7ef10  bl 0x029f5a50
02b7ef14  adrp x0,0x5e5d000
02b7ef18  ldr x0,[x0, #0x530]
02b7ef1c  bl 0x029f5a50
02b7ef20  adrp x0,0x5e5d000
02b7ef24  ldr x0,[x0, #0x538]
02b7ef28  bl 0x029f5a50
02b7ef2c  mov w8,#0x1
02b7ef30  strb w8,[x21, #0x8cc]
02b7ef34  mov x0,xzr
02b7ef38  bl 0x05797adc
02b7ef3c  ldr x8,[x20]
02b7ef40  mov x20,x0
02b7ef44  ldr w9,[x8, #0xe4]
02b7ef48  cbnz w9,0x02b7ef54
02b7ef4c  mov x0,x8
02b7ef50  bl 0x029f5bd0
02b7ef54  mov x0,x20
02b7ef58  mov x1,xzr
02b7ef5c  mov x2,xzr
02b7ef60  bl 0x057dfa70
02b7ef64  tbz w0,#0x0,0x02b7efcc
02b7ef68  adrp x21,0x5e5d000
02b7ef6c  ldr x21,[x21, #0x530]
02b7ef70  bl 0x02b80610
02b7ef74  adrp x8,0x5e58000
02b7ef78  mov x20,x0
02b7ef7c  add x1,sp,#0xc
02b7ef80  ldr x8,[x8, #0xa10]
02b7ef84  str w19,[sp, #0xc]
02b7ef88  ldr x0,[x8, #0x48]
02b7ef8c  bl 0x029f5bd8
02b7ef90  ldr x8,[x21]
02b7ef94  mov x1,x0
02b7ef98  mov x2,xzr
02b7ef9c  mov x0,x8
02b7efa0  bl 0x046b6c0c
02b7efa4  cbz x20,0x02b7efe0
02b7efa8  adrp x8,0x5e5d000
02b7efac  fmov s0,s10
02b7efb0  fmov s1,s9
02b7efb4  ldr x8,[x8, #0x538]
02b7efb8  fmov s2,s8
02b7efbc  mov x2,x0
02b7efc0  mov x0,x20
02b7efc4  ldr x1,[x8]
02b7efc8  bl 0x02b80694
02b7efcc  ldp x20,x19,[sp, #0x30]
02b7efd0  ldp x30,x21,[sp, #0x20]
02b7efd4  ldp d9,d8,[sp, #0x10]
02b7efd8  ldr d10,[sp], #0x40
02b7efdc  ret
02b7efe0  bl 0x029f5cfc
