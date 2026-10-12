02c47888  ldr x8,[x0, #0x58]
02c4788c  cbz x8,0x02c478a0
02c47890  ldr w8,[x8, #0x18]
02c47894  sdiv w9,w1,w8
02c47898  msub w0,w9,w8,w1
02c4789c  ret
02c478a0  str x30,[sp, #-0x10]!
02c478a4  bl 0x029f5cfc
