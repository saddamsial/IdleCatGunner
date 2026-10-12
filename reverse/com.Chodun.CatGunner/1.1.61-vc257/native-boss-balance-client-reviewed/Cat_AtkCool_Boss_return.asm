02c39c0c  ldr x8,[x0, #0x48]
02c39c10  cbz x8,0x02c39c28
02c39c14  ldr s0,[x8, #0x40]
02c39c18  mov w1,#0x1
02c39c1c  mov w2,wzr
02c39c20  mov w3,wzr
02c39c24  b 0x02c399cc
02c39c28  str x30,[sp, #-0x10]!
02c39c2c  bl 0x029f5cfc
