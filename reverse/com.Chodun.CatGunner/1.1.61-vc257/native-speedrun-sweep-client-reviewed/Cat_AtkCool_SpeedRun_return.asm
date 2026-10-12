02c39be8  ldr x8,[x0, #0x48]
02c39bec  cbz x8,0x02c39c04
02c39bf0  ldr s0,[x8, #0x40]
02c39bf4  mov w1,wzr
02c39bf8  mov w2,wzr
02c39bfc  mov w3,wzr
02c39c00  b 0x02c399cc
02c39c04  str x30,[sp, #-0x10]!
02c39c08  bl 0x029f5cfc
