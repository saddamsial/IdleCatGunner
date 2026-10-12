02b82d58  stp x30,x19,[sp, #-0x10]!
02b82d5c  mov x19,x0
02b82d60  bl 0x02b82db0
02b82d64  ldr x8,[x19, #0x20]
02b82d68  cbz x8,0x02b82dac
02b82d6c  cbz x0,0x02b82dac
02b82d70  ldr x1,[x19, #0x28]
02b82d74  ldr w3,[x19, #0x30]
02b82d78  ldr w2,[x8, #0x18]
02b82d7c  bl 0x02b82e38
02b82d80  bl 0x02b80610
02b82d84  cbz x0,0x02b82dac
02b82d88  ldr x1,[x19, #0x20]
02b82d8c  bl 0x02b82ec4
02b82d90  bl 0x02b83058
02b82d94  ldr x8,[x19, #0x20]
02b82d98  cbz x8,0x02b82dac
02b82d9c  cbz x0,0x02b82dac
02b82da0  ldr w1,[x8, #0x18]
02b82da4  ldp x30,x19,[sp], #0x10
02b82da8  b 0x02b830e0
02b82dac  bl 0x029f5cfc
